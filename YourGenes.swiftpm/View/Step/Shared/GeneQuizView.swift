//
//  GeneQuizView.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

class GeneQuizViewModel<AlleleType: Allele>: ObservableObject {
    let turnToNextStep: (()->Void)?
    let currentStep: MainViewModel.Step?
    let checkingExpressions: [AlleleType.Expression] = AlleleType.Expression.allCases.map {$0}
    @Published var parents: ParentsPedigree<AlleleType>
    @Published var selections: [Bool]
    
    @Published var showAnswer: Bool = false
    @Published var showNextStepButton: Bool = false
    
    init(
        parents: ParentsPedigree<AlleleType>,
        currentStep: MainViewModel.Step?,
        turnToNextStep: (()->Void)?
    ) {
        self.parents = parents
        self.selections = AlleleType.Expression.allCases.map { _ in return false }
        self.turnToNextStep = turnToNextStep
        self.currentStep = currentStep
    }
    
    var isCorrect: Bool {
        let children = parents.possibleChildren()
        let possibleCharacteristics: Set = Set(children.map { child in
            return AlleleType.revealing(genotype: child)
        })
        let checkedCharacteristics: Set = Set(checkingExpressions.enumerated().filter { index, element in
            return selections[index]
        }.map {$0.element})
        return possibleCharacteristics == checkedCharacteristics
    }
    
    func checkAnswer() {
        showAnswer = true
        if isCorrect {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + .milliseconds(1000),
                execute: { [weak self] in
                    withAnimation(.linear) {
                        self?.showNextStepButton = true
                    }
                }
            )
        } else {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + .milliseconds(1500),
                execute: { [weak self] in
                    self?.hideAnswer()
                }
            )
        }
    }
    
    func hideAnswer() {
        showNextStepButton = false
        showAnswer = false
        resetExpressionSelection()
    }
    
    func renewParents() {
        withAnimation(.easeInOut) { [weak self] in
            self?.parents = ParentsPedigree.random()
            self?.hideAnswer()
            self?.resetExpressionSelection()
        }
    }
    
    func resetExpressionSelection() {
        selections = selections.map{_ in return false}
    }
}

struct GeneQuizView<AlleleType: Allele>: View {
    @StateObject var viewModel: GeneQuizViewModel<AlleleType>
    @EnvironmentObject var environment: YGEnvironment
    
    init(
        parents: ParentsPedigree<AlleleType>,
        currentStep: MainViewModel.Step?,
        turnToNextStep: (()->Void)?
    ) {
        self._viewModel = StateObject(
            wrappedValue: GeneQuizViewModel<AlleleType>(
                parents: parents,
                currentStep: currentStep,
                turnToNextStep: turnToNextStep
            )
        )
    }
    
    var body: some View {
        VStack(spacing: 30) {
            Text("If parents have genotypes like a picture below,")
            VStack(spacing: 0) {
                ParentsPedigreeView<AlleleType>(
                    parents: viewModel.parents
                )
                Rectangle()
                    .frame(maxWidth: 3, maxHeight: 30)
                
                Image(systemName: "questionmark")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(maxWidth: 60, maxHeight: 60)
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.primary, lineWidth: 2)
                    )
            }
            Text("Choose all characteristics that their children can have.")
            
            HStack {
                ForEach(0 ..< viewModel.checkingExpressions.count, id: \.self) { index in
                    expressionButton(index: index)
                }
            }
            answerButton
        }.padding()
    }
    
    @ViewBuilder
    func expressionButton(index: Int) -> some View {
        if viewModel.selections[index] {
            expressionView(index: index)
                .buttonStyle(.borderedProminent)
                .foregroundColor(Color(UIColor.systemBackground))
        } else {
            expressionView(index: index)
                .buttonStyle(.bordered)
                .foregroundColor(.primary)
        }
    }
    
    @ViewBuilder
    func expressionView(index: Int) -> some View {
        VStack {
            Button {
                viewModel.selections[index].toggle()
            } label: {
                VStack {
                    AlleleExpressionView<AlleleType>(expression: viewModel.checkingExpressions[index])
                        .scaledToFit()
                        .frame(maxWidth: 30)
                    Text(viewModel.checkingExpressions[index].title)
                }
            }
            .overlay {
                if viewModel.showAnswer {
                    Rectangle()
                        .fill(.background.opacity(0.2))
                } else {
                    EmptyView()
                }
            }
        }
    }
    
    @ViewBuilder var answerButton: some View {
        if viewModel.showAnswer {
            if viewModel.isCorrect {
                VStack {
                    Button("Correct!") {
                        viewModel.showAnswer = false
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.green)
                    if viewModel.showNextStepButton {
                        HStack {
                            Button {
                                viewModel.renewParents()
                            } label: {
                                HStack {
                                    Text("Try again")
                                    Image(systemName: "arrow.uturn.left.circle")
                                }
                            }.buttonStyle(.bordered)
                            Button {
                                viewModel.turnToNextStep?()
                            } label: {
                                HStack {
                                    Text("Next step")
                                    Image(systemName: "arrow.forward.circle")
                                }
                            }.buttonStyle(.bordered)
                        }
                    }
                }
            } else {
                Button("Wrong - Try again") {
                    viewModel.showAnswer = false
                }
                .buttonStyle(.bordered)
                .foregroundColor(.red)
            }
            
        } else {
            Button(
                "Check the answer",
                action: checkAnswer
            )
            .buttonStyle(.bordered)
            .foregroundColor(.accentColor.opacity(0.8))
        }
    }
    
    func checkAnswer() {
        if viewModel.showAnswer {
            viewModel.hideAnswer()
        } else {
            viewModel.checkAnswer()
            if viewModel.isCorrect,
               let currentStep = viewModel.currentStep {
                environment.stepProgress[currentStep] = true
            }
        }
    }
}

struct GeneQuizView_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizView<WidowsPeak>(
            parents: .random(),
            currentStep: nil,
            turnToNextStep: nil
        )
    }
}

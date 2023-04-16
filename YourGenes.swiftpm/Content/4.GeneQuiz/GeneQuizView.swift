//
//  GeneQuizView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

class GeneQuizViewModel<AlleleType: Allele>: ObservableObject {
    let checkingExpressions: [AlleleType.Expression] = AlleleType.Expression.allCases.map {$0}
    @Published var parents: ParentsPedigree<AlleleType>
    @Published var selections: [Bool]
    
    @Published var showAnswer: Bool = false
    
    init(parents: ParentsPedigree<AlleleType>) {
        self.parents = parents
        self.selections = AlleleType.Expression.allCases.map { _ in return false }
    }
    
    func checkAnswer() -> Bool {
        let children = parents.possibleChildren()
        let possibleCharacteristics: Set = Set(children.map { child in
            return AlleleType.revealing(genotype: child)
        })
        let checkedCharacteristics: Set = Set(checkingExpressions.enumerated().filter { index, element in
            return selections[index]
        }.map {$0.element})
        return possibleCharacteristics == checkedCharacteristics
    }
}

struct GeneQuizView<AlleleType: Allele>: View {
    @StateObject var viewModel: GeneQuizViewModel<AlleleType>
    
    init(parents: ParentsPedigree<AlleleType>) {
        self._viewModel = StateObject(
            wrappedValue: GeneQuizViewModel<AlleleType>(parents: parents)
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
                    revealCheckButton(index: index)
                }
            }
            if viewModel.showAnswer {
                if viewModel.checkAnswer() {
                    Button("Correct!") {
                        viewModel.showAnswer = false
                    }.foregroundColor(.green)
                } else {
                    Button("Wrong - Try again") {
                        viewModel.showAnswer = false
                    }.foregroundColor(.red)
                }
            } else {
                Button("Check the answer") {
                    viewModel.showAnswer = true
                }
            }
        }.padding()
    }
    
    @ViewBuilder func revealCheckButton(index: Int) -> some View {
        if viewModel.selections[index] {
            revealCheckCard(index: index)
                .buttonStyle(.borderedProminent)
        } else {
            revealCheckCard(index: index)
                .buttonStyle(.bordered)
        }
    }
    
    @ViewBuilder func revealCheckCard(index: Int) -> some View {
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
    }
}

struct GeneQuizView_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizView<WidowsPeak>(parents: .random())
    }
}

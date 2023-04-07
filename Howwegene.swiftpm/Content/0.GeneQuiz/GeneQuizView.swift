//
//  GeneQuizView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

class GeneQuizViewModel<AlleleType: Allele>: ObservableObject {
    let checkingAlleles: [AlleleType] = AlleleType.allCases.map {$0}
    @Published var parents: ParentsPedigree<AlleleType>
    @Published var selections: [Bool]
    
    @Published var showAnswer: Bool = false
    
    init(parents: ParentsPedigree<AlleleType>) {
        self.parents = parents
        self.selections = AlleleType.allCases.map { _ in return false }
    }
    
    func checkAnswer() -> Bool {
        let children = parents.possibleChildren()
        let possibleCharacteristics: Set = Set(children.map { child in
            return AlleleType.revealing(genotype: child)
        })
        let checkedCharacteristics: Set = Set(checkingAlleles.enumerated().filter { index, element in
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
        ZStack {
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
                    ForEach(0 ..< viewModel.checkingAlleles.count, id: \.self) { index in
                        if viewModel.selections[index] {
                            Button(viewModel.checkingAlleles[index].title) {
                                viewModel.selections[index].toggle()
                            }.buttonStyle(.borderedProminent)
                        } else {
                            Button(viewModel.checkingAlleles[index].title) {
                                viewModel.selections[index].toggle()
                            }.buttonStyle(.bordered)
                        }
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
    }
}

struct GeneQuizView_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizView<WidowsPeak>(parents: .random())
    }
}

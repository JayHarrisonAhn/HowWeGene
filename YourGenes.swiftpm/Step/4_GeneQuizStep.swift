//
//  GeneQuizStep.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

class GeneQuizStepViewModel: ObservableObject {
    @Published var allele: any Allele.Type = WidowsPeak.self
    
    let alleles: [any Allele.Type] = [
        WidowsPeak.self
    ]
    
    func changeQuiz() {
        allele = alleles.filter {
            allele != $0
        }.randomElement()!.self
    }
}

struct GeneQuizStep: View {
    @StateObject var viewModel = GeneQuizStepViewModel()
    
    var body: some View {
        StepBackgroundView {
            VStack {
                switch viewModel.allele {
                case is WidowsPeak.Type:
                    GeneQuizView<WidowsPeak>(parents: ParentsPedigree.random())
                default:
                    EmptyView()
                }
                Button("Test") {
                    viewModel.changeQuiz()
                }
            }
        }
    }
}

struct GeneQuizStep_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizStep()
    }
}

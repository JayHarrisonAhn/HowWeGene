//
//  CompleteDominanceStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class CompleteDominanceStepViewModel: ObservableObject {
    let numOfPage = 5
    @Published var page = 0
}

struct CompleteDominanceStep: View {
    @StateObject var viewModel = CompleteDominanceStepViewModel()
    
    var body: some View {
        StepBaseView {
            VStack {
                TabView(selection: $viewModel.page) {
                    TutorialContent1().tag(0)
                    TutorialContent2().tag(1)
                    TutorialContent3().tag(2)
                    TutorialContent4().tag(3)
                    TutorialContent5().tag(4)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                
                Button("Next") {
                    withAnimation {
//                        turnToNextPage()
                    }
                }.buttonStyle(.borderedProminent)
            }
        }
    }
}

struct DominantMainView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceStep()
    }
}

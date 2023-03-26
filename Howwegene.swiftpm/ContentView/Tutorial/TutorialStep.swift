//
//  TutorialStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class TutorialMainViewModel: ObservableObject {
    let numOfPage = 5
    @Published var page = 0
}

struct TutorialStep: View {
    @StateObject var viewModel = TutorialMainViewModel()
    var moveNext: (()->Void)? = nil
    
    init(moveNext: (() -> Void)? = nil) {
        self.moveNext = moveNext
    }
    
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
                        turnToNextPage()
                    }
                }.buttonStyle(.borderedProminent)
            }
        }
    }
    
    func turnToNextPage() {
        if viewModel.page+1 < viewModel.numOfPage {
            viewModel.page += 1
        } else {
            moveNext?()
        }
    }
}

struct TurorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialStep()
    }
}

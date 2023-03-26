//
//  TutorialView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class TutorialMainViewModel: ObservableObject {
    let numOfPage = 2
    @Published var page = 0
}

struct TutorialView: View {
    @StateObject var viewModel = TutorialMainViewModel()
    var moveNext: (()->Void)? = nil
    
    init(moveNext: (() -> Void)? = nil) {
        self.moveNext = moveNext
    }
    
    var body: some View {
        BaseView {
            VStack {
                TabView(selection: $viewModel.page) {
                    TutorialContent1().tag(0)
                        .frame(maxWidth: .infinity)
                    TutorialContent2().tag(1)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                Button("DDD") {
                    withAnimation {
                        turnToNextPage()
                    }
                }
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
        TutorialView()
    }
}

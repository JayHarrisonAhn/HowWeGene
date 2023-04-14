//
//  MultipleAllelesStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct MultipleAllelesStep: View {
    var turnToNextStep: (()->Void)? = nil
    @State var currentPage = 0
    @State var blocked: Bool = false
    
    var body: some View {
        StepBackgroundView {
            StepPageView(
                numOfPages: numberOfPresentingPages,
                currentPage: $currentPage,
                pages: {
                    presentingPages
                },
                afterLastPage: {
                    if blockingPage == nil {
                        turnToNextStep?()
                    } else {
                        blocked = true
                    }
                }
            )
        }
    }
    
    @State var blockingPage: BlockingPage? = .selectWidowspeak
    enum BlockingPage {
        case selectWidowspeak
    }
    
    @ViewBuilder
    var presentingPages: some View {
        MultipleAllelesContent1(
            blocked: blocked,
            afterSuccess: {
                blockingPage = nil
                blocked = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation {
                        blockingPage = nil
                        currentPage += 1
                    }
                }
            }
        ).tag(0)
        if ![.selectWidowspeak].contains(blockingPage) {
            MultipleAllelesContent2().tag(1)
            MultipleAllelesContent2().tag(2)
            MultipleAllelesContent2().tag(3)
            MultipleAllelesContent2().tag(4)
            MultipleAllelesContent2().tag(5)
        }
    }
    
    var numberOfPresentingPages: Int {
        switch blockingPage {
        case .selectWidowspeak:
            return 1
        case nil:
            return 6
        }
    }
}

struct MultipleAllelesStep_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesStep()
    }
}

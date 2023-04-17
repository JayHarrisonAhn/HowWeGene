//
//  MultipleAllelesStep.swift
//  YourGenes
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
    
    @State var blockingPage: BlockingPage? = .selectBloodtype
    enum BlockingPage {
        case selectBloodtype
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
        if ![.selectBloodtype].contains(blockingPage) {
            MultipleAllelesContent2().tag(1)
            MultipleAllelesContent3().tag(2)
            MultipleAllelesContent4().tag(3)
            MultipleAllelesContent5().tag(4)
            MultipleAllelesContent6().tag(5)
            MultipleAllelesContent7().tag(6)
            MultipleAllelesContent8().tag(7)
            MultipleAllelesContent9().tag(8)
        }
    }
    
    var numberOfPresentingPages: Int {
        switch blockingPage {
        case .selectBloodtype:
            return 1
        case nil:
            return 9
        }
    }
}

struct MultipleAllelesStep_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesStep()
    }
}

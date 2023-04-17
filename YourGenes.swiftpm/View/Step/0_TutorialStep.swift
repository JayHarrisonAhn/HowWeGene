//
//  TutorialStep.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialStep: View {
    @State var currentPage = 0
    var turnToNextStep: (()->Void)? = nil
    
    var body: some View {
        StepBackgroundView {
            StepPageView(numOfPages: 5, currentPage: $currentPage) {
                TutorialContent1().tag(0)
                TutorialContent2().tag(1)
                TutorialContent3().tag(2)
                TutorialContent4().tag(3)
                TutorialContent5().tag(4)
            } afterLastPage: {
                turnToNextStep?()
            }
        }
    }
}

struct TurorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialStep()
    }
}

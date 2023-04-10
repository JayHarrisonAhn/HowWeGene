//
//  IncompleteDominanceStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/09.
//

import SwiftUI

struct IncompleteDominanceStep: View {
    @State var currentPage = 0
    var turnToNextStep: (()->Void)? = nil
    
    var body: some View {
        StepBackgroundView {
            StepPageView(numOfPages: 5, currentPage: $currentPage) {
                IncompleteDominanceContent1().tag(0)
                IncompleteDominanceContent2().tag(1)
                IncompleteDominanceContent3().tag(2)
                IncompleteDominanceContent4().tag(3)
                IncompleteDominanceContent1().tag(4)
            } afterLastPage: {
                turnToNextStep?()
            }
        }
    }
}

struct IncompleteDominanceStep_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceStep()
    }
}

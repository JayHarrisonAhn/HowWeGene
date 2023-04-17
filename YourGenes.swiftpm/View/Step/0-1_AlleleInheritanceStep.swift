//
//  AlleleInheritanceStep.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceStep: View {
    @State var currentPage = 0
    var turnToNextStep: (()->Void)? = nil
    
    var body: some View {
        StepBackgroundView {
            StepPageView(numOfPages: 5, currentPage: $currentPage) {
                AlleleInheritanceContent1().tag(0)
                AlleleInheritanceContent2().tag(1)
                AlleleInheritanceContent3().tag(2)
                AlleleInheritanceContent4().tag(3)
                AlleleInheritanceContent5().tag(4)
            } afterLastPage: {
                turnToNextStep?()
            }
        }
    }
}

struct AlleleInheritanceStep_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceStep()
    }
}

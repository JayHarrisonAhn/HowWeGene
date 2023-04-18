//
//  IncompleteDominanceStep.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/09.
//

import SwiftUI

struct IncompleteDominanceStep: View {
    @State var currentPage = 0
    var turnToNextStep: (()->Void)? = nil
    
    var body: some View {
        StepBackgroundView {
            VStack {
                StepPageView(numOfPages: 5, currentPage: $currentPage) {
                    IncompleteDominanceContent1().tag(0)
                    IncompleteDominanceContent2().tag(1)
                    IncompleteDominanceContent3().tag(2)
                    IncompleteDominanceContent4().tag(3)
                    IncompleteDominanceContent5().tag(4)
                } afterLastPage: {
                    turnToNextStep?()
                }
                Spacer()
                Link(
                    "All Khan Academy content is available for free\nat www.khanacademy.org",
                    destination: URL(string: "https://support.khanacademy.org/hc/en-us/articles/202263034-What-is-Khan-Academy-s-Trademark-and-Brand-Usage-Policy-")!
                )
                .font(.caption2)
                .buttonStyle(.plain)
            }
        }
    }
}

struct IncompleteDominanceStep_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceStep()
    }
}

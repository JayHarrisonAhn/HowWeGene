//
//  IncompleteDominanceQuiz.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceQuiz: View {
    var turnToNextStep: (()->Void)?
    
    var body: some View {
        StepBackgroundView {
            VStack {
                ContentScrollableView {
                    GeneQuizView<SnapdragonColor>(
                        parents: ParentsPedigree.random(),
                        currentStep: .incompleteDominanceQuiz,
                        turnToNextStep: turnToNextStep
                    )
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

struct IncompleteDominanceQuiz_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceQuiz()
    }
}

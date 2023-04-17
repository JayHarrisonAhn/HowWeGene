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
            ContentScrollableView {
                GeneQuizView<SnapdragonColor>(
                    parents: ParentsPedigree.random(),
                    currentStep: .incompleteDominanceQuiz,
                    turnToNextStep: turnToNextStep
                )
            }
        }
    }
}

struct IncompleteDominanceQuiz_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceQuiz()
    }
}

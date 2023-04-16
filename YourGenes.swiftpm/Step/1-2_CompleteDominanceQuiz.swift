//
//  CompleteDominanceQuiz.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/09.
//

import SwiftUI

struct CompleteDominanceQuiz: View {
    var turnToNextStep: (()->Void)?
    
    var body: some View {
        StepBackgroundView {
            ContentScrollableView {
                GeneQuizView<WidowsPeak>(parents: ParentsPedigree.random(), turnToNextStep: turnToNextStep)
            }
        }
    }
}

struct CompleteDominanceQuiz_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceQuiz(turnToNextStep: nil)
    }
}

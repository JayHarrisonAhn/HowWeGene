//
//  MultipleAllelesQuiz.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct MultipleAllelesQuiz: View {
    var body: some View {
        StepBackgroundView {
            ContentScrollableView {
                GeneQuizView<BloodType>(parents: ParentsPedigree.random())
            }
        }
    }
}

struct MultipleAllelesQuiz_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesQuiz()
    }
}

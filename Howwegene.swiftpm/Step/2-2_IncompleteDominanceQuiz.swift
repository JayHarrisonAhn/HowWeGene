//
//  IncompleteDominanceQuiz.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceQuiz: View {
    var body: some View {
        StepBackgroundView {
            ContentScrollableView {
                GeneQuizView<SnapdragonColor>(parents: ParentsPedigree.random())
            }
        }
    }
}

struct IncompleteDominanceQuiz_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceQuiz()
    }
}

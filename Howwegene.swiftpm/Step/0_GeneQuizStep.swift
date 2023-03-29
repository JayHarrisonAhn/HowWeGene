//
//  GeneQuizStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct GeneQuizStep: View {
    var body: some View {
        StepBackgroundView {
            VStack {
                Text("Choose all available children.")
            }
        }
    }
}

struct GeneQuizStep_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizStep()
    }
}

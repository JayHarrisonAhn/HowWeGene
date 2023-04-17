//
//  TutorialContent1.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContent1: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Image("tutorial_dna_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                VStack(spacing: 20) {
                    Text("Each person has a set of 'genes,'\nwhich act like a plan for how their body will develop.")
                    Text("Genes control things like blood type and eye color. ")
                }
            }
        }
    }
}

struct TutorialContent1_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent1()
    }
}

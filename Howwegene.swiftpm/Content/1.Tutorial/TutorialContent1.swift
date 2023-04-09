//
//  TutorialContent1.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContent1: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Image("Mat1")
                Text("Every person has ‘gene’s,\nwhich is a kind of blueprint of its body.\n\nIt determines characteristics of the body -\nsuch as blood type, eye color, and etc.")
            }
        }
    }
}

struct TutorialContent1_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent1()
    }
}

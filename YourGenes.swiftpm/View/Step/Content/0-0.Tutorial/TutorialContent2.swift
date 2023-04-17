//
//  TutorialContent2.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Text("They are passed down from parents to their children, which is why people often resemble their parents.")
                Image("family_image")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 140)
            }
        }
    }
}

struct TutorialContent2_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent2()
    }
}

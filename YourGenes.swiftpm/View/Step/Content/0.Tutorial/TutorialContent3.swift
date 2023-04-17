//
//  TutorialContent3.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Image("curly_pedigree_example")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.primary)
                    .scaledToFit()
                    .frame(width: 200)
                Text("But sometimes, There are some children who don't look like their parents.\n\nFor example, a boy may have straight hair, while his parents have curly hair.")
            }
        }
    }
}

struct TutorialContent3_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent3()
    }
}

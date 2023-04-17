//
//  IncompleteDominanceContent2.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                HStack {
                    Image("snapdragon_pedigree_red")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                    Image("snapdragon_pedigree_white")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                }
                Text("If both parents have either red or white color, their children will have the same color as their parents.")
                Image("snapdragon_pedigree_pink")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200)
                Text("However, an interesting phenomenon occurs when two pink parents are crossed - their children can display any of the three colors.")
                Text("Would you like to know why this happens?")
            }
        }
    }
}

struct IncompleteDominanceContent2_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent2()
    }
}

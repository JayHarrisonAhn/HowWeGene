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
                    Image("snapdragon_red")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                    Image("snapdragon_white")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                }
                Text("If both parents are red or white,\nall children have the same color as their parents.")
                Image("snapdragon_pink")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200)
                Text("Interesting thing is that, between two pink parents, the children can have all the colors.")
                Text("What is happening?")
            }
        }
    }
}

struct IncompleteDominanceContent2_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent2()
    }
}

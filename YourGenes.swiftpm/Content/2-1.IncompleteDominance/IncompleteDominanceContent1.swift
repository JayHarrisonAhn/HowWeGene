//
//  IncompleteDominanceContent1.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/09.
//

import SwiftUI

struct IncompleteDominanceContent1: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Image("snapdragon_picture")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                Text("Have you ever seen 'Snapdragon Flowers'?")
                HStack {
                    Image("snapdragon_single_red")
                        .resizable()
                        .scaledToFit()
                    Image("snapdragon_single_pink")
                        .resizable()
                        .scaledToFit()
                    Image("snapdragon_single_white")
                        .resizable()
                        .scaledToFit()
                }
                .frame(maxHeight: 60)
                Text("They have three kinds of color. Red, pink and white.")
            }
        }
    }
}

struct IncompleteDominanceContent1_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent1()
    }
}

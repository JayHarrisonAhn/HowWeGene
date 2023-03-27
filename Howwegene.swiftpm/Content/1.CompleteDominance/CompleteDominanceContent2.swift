//
//  CompleteDominanceContent2.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct CompleteDominanceContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Image("widowspeak")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Text("Whether you have straight or v-shaped is determined by 'Widow's Peak' allele.")
            }
        }
    }
}

struct CompleteDominanceContent2_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent2()
    }
}

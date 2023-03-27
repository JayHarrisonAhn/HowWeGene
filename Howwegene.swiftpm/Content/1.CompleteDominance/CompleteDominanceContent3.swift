//
//  CompleteDominanceContent3.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct CompleteDominanceContent3: View {
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

struct CompleteDominanceContent3_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent3()
    }
}

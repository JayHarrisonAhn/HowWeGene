//
//  CompleteDominanceContent6.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent6: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                HStack(spacing: 20) {
                    AlleleCardView(alleleType: .widowspeakVShape)
                    Image(systemName: "greaterthan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleCardView(alleleType: .widowspeakStraight)
                }
                Text("In 'Complete Dominance' rule, ")
            }
        }
    }
}

struct CompleteDominanceContent6_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent6()
    }
}

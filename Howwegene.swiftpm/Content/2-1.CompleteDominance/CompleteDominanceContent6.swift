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
                    AlleleView<WidowsPeak>(
                        allele: WidowsPeak.vShaped,
                        showComment: true
                    )
                    Image(systemName: "greaterthan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<WidowsPeak>(
                        allele: WidowsPeak.straight,
                        showComment: true
                    )
                }
                Text("In 'Complete Dominance' rule, V-shaped allele wins straight allele.")
            }
        }
    }
}

struct CompleteDominanceContent6_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent6()
    }
}

//
//  CompleteDominanceContent5.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent5: View {
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
                Text("In 'Complete Dominance' rule,\nV-shaped allele wins straight allele.")
            }
        }
    }
}

struct CompleteDominanceContent5_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent5()
    }
}

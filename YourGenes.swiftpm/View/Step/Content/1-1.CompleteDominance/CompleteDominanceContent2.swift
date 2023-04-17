//
//  CompleteDominanceContent2.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct CompleteDominanceContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Text("Whether you have straight or v-shaped is determined by 'Widow's Peak' allele.")
                
                Text("There are two types of alleles. -\nLarge W for v-shaped, and small w for straight.")
                
                HStack {
                    VStack(spacing: 0) {
                        AlleleView<WidowsPeak>(
                            allele: WidowsPeak.vShaped
                        )
                            .padding()
                        Text("V-Shaped")
                            .opacity(0.5)
                    }
                    VStack(spacing: 0) {
                        AlleleView<WidowsPeak>(
                            allele: WidowsPeak.straight
                        )
                            .padding()
                        Text("Straight")
                            .opacity(0.5)
                    }
                }
            }
        }
    }
}

struct CompleteDominanceContent2_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent2()
    }
}

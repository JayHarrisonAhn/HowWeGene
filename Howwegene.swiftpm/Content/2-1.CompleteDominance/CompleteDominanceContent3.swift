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
                Text("There are two kinds of alleles.")
            }
        }
    }
}

struct CompleteDominanceContent3_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent3()
    }
}

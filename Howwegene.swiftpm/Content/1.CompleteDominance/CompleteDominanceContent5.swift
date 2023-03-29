//
//  CompleteDominanceContent5.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent5: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                GenotypeView<WidowsPeak>(
                    leftAllele: WidowsPeak.vShaped,
                    rightAllele: WidowsPeak.straight
                )
                Text("Then, what if he/she has two different alleles?")
            }
        }
    }
}

struct CompleteDominanceContent5_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent5()
    }
}

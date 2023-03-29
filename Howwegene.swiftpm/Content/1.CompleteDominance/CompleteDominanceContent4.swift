//
//  CompleteDominanceContent4.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 100) {
                VStack(spacing: 30) {
                    Genotype(
                        firstAllele: WidowsPeak.vShaped,
                        secondAllele: WidowsPeak.vShaped
                    ).view
                    Text("If a person has two v-shaped alleles,\nhe/she will have v-shaped hairline.")
                }
                VStack(spacing: 30) {
                    Genotype(
                        firstAllele: WidowsPeak.straight,
                        secondAllele: WidowsPeak.straight
                    ).view
                    Text("Of course, if he/she has two straight alleles,\nthe hairline would be straight.")
                }
            }
        }
    }
}

struct CompleteDominanceContent4_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent4()
    }
}

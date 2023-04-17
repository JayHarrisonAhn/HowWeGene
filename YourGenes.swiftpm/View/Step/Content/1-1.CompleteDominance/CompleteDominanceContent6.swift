//
//  CompleteDominanceContent6.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/07.
//

import SwiftUI

struct CompleteDominanceContent6: View {
    let differentWidowsPeakGenotype = Genotype<WidowsPeak>(
        firstAllele: .vShaped,
        secondAllele: .straight
    )
    
    var body: some View {
        VStack(spacing: 30) {
            GenotypeView(
                personView: {
                    AlleleExpressionView<WidowsPeak>(
                        expression: differentWidowsPeakGenotype.expression
                    ).scaledToFit()
                },
                genotype: differentWidowsPeakGenotype,
                showAlleleComment: true
            )
            Text("Therefore, he/she will have v-shaped hairline.")
            Text("Now, let's proceed to the quiz section.")
        }
    }
}

struct CompleteDominanceContent6_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent6()
    }
}

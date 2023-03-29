//
//  GenotypeView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct GenotypeView<AlleleType: Allele>: View {
    let leftAllele: any Allele
    let rightAllele: any Allele
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 50)
            HStack {
                AlleleView<AlleleType>(allele: leftAllele)
                AlleleView<AlleleType>(allele: rightAllele)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 3)
        )
    }
}

struct NewAllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        GenotypeView<WidowsPeak>(
            leftAllele: WidowsPeak.vShaped,
            rightAllele: WidowsPeak.straight
        )
    }
}

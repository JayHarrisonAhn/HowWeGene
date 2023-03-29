//
//  Genotype.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct Genotype<AlleleType: Allele> {
    var firstAllele: AlleleType
    var secondAllele: AlleleType
    
    @ViewBuilder var view: some View {
        AllelePersonView {
            firstAllele.cardView
        } rightView: {
            secondAllele.cardView
        }
    }
}

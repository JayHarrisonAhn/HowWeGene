//
//  AlleleInheritanceContent2.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Image("genetic_allele_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                Text("A gene is made up of multiple alleles, which has its own specific role.")
                Text("For instance, some alleles produce black pigments, resulting in black hair, while others produce different hues or none at all.")
                Text("However, if multiple alleles are responsible for the same trait, certain rules dictate whether the trait will be expressed or not.")
                Text("In this step, we will focus on the inheritance of traits. And we will study the rules of expression later on.")
            }
        }
    }
}

struct AlleleInheritanceContent2_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceContent2()
    }
}

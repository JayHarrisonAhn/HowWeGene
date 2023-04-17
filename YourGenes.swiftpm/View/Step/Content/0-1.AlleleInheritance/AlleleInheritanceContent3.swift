//
//  AlleleInheritanceContent3.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Image("chromosome_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                Text("Another interesting aspect of genetics is that genes always occur in pairs, which means that an individual's trait is determined by a set of two alleles.")
                Image("inheritance_example")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                Text("Moreover, each allele in the pair is inherited from one parent, with one coming from the mother and the other from the father.")
                Text("To sum up, an individual's traits are determined by the combination of two alleles - one inherited from the mother and the other from the father.")
            }
        }
    }
}

struct AlleleInheritanceContent3_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceContent3()
    }
}

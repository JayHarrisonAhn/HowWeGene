//
//  MultipleAllelesContent6.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent6: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Now, let's see how alleles are involved in determining blood type.")
                Text("There are three types of alleles\n: A, B, and O.")
                HStack {
                    AlleleView<BloodType>(allele: BloodType.a)
                    AlleleView<BloodType>(allele: BloodType.b)
                    AlleleView<BloodType>(allele: BloodType.o)
                }
                Text("You may be wondering\n- 'Wait, there were only two alleles before!'.")
                Text("This is why blood type inheritance is referred to as \"Multiple Alleles,\" which means there are more than two possible alleles for a given trait.")
                VStack(spacing: 15) {
                    Text("It is not different that everyone has two alleles. And the combination of the two alleles determines their blood type.")
                }
            }
        }
    }
}

struct MultipleAllelesContent6_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent6()
    }
}

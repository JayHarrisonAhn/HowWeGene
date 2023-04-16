//
//  MultipleAllelesContent6.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent6: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Now, let's see how alleles are involved to blood type.")
                Text("There are three kind of alleles\n- A, B and O.")
                HStack {
                    AlleleView<BloodType>(allele: BloodType.a)
                    AlleleView<BloodType>(allele: BloodType.b)
                    AlleleView<BloodType>(allele: BloodType.o)
                }
                Text("You may wonder\n- 'What? there were only two alleles before!'.")
                Text("Yes. that's why the blood type inheritance is called 'Multiple Alleles'.")
                VStack(spacing: 15) {
                    Text("Except that, the other things are same.")
                    VStack(alignment: .leading) {
                        Text("- Everyone has two alleles")
                        Text("- and the combination of them determines the blood type.")
                    }
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

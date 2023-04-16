//
//  MultipleAllelesContent8.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent8: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 50) {
                VStack(spacing: 10) {
                    Text("Then now imagine - a person has A and O alleles.")
                    Text("- Allele A will produce antigen A.\n- Allele O will do nothing.")
                    Text("Therefore, his/her body will produce A antigen, anyway.")
                }
                HStack(spacing: 10) {
                    AlleleView<BloodType>(
                        allele: BloodType.a
                    )
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<BloodType>(
                        allele: BloodType.b
                    )
                    Image(systemName: "greaterthan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<BloodType>(
                        allele: BloodType.o
                    )
                }
                Text("By this, we can see that A and B alleles are codominant\nand O allele is recessive.")
            }
        }
    }
}

struct MultipleAllelesContent8_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent8()
    }
}

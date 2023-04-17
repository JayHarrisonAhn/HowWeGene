//
//  IncompleteDominanceContent5.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent5: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("The reason for this is due to incomplete dominance.")
                HStack(spacing: 20) {
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.red,
                        showComment: true
                    )
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.ygPrimary)
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.white,
                        showComment: true
                    )
                }
                Text("Unlike the complete dominance rule,\nwhere one allele is dominant over the other,\nboth alleles are expressed equally in incomplete dominance.")
                Text("As a result, a flower with two different alleles will have a pink color, which is the middle color between red and white.")
                Text("Now, let's proceed to the quiz section.")
            }
        }
    }
}

struct IncompleteDominanceContent5_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent5()
    }
}

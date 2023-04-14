//
//  IncompleteDominanceContent5.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent5: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("This is why it is called 'Incomplete dominance rule'.")
                HStack(spacing: 20) {
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.red,
                        showComment: true
                    )
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.white,
                        showComment: true
                    )
                }
                Text("Unlike complete dominance rule, no allele gets dominated over the other. Thus, each alleles are expressed at the same time.")
                Text("Therefore, the flower that has two different alleles becomes pink - a color which is at the middle point between red and white.")
                Text("Let's now move on to the quiz section.")
            }
        }
    }
}

struct IncompleteDominanceContent5_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent5()
    }
}

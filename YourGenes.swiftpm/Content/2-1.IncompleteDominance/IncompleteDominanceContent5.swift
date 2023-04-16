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
                Text("This is why it's called 'Incomplete dominance rule'.")
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
                Text("Unlike complete dominance rule,\nno allele gets dominated over the other.\nThus, each alleles are expressed at the same time.")
                Text("Therefore, a flower that has two different alleles becomes pink - which is the middle color between red and white.")
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

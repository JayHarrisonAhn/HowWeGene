//
//  MultipleAllelesContent2.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/14.
//

import SwiftUI

struct MultipleAllelesContent2: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Did you know that blood type is inherited from parents to their children?")
                Text("For example, it is impossible for a child to have O blood type if both parents have AB blood type.")
                Image("bloodtype_pedigree_example")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 400)
            }
        }
    }
}

struct MultipleAllelesContent2_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent2()
    }
}

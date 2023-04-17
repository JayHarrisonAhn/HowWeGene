//
//  AlleleInheritanceContent1.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceContent1: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Image("genetic_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100)
                Text("Let's first explore how an individual's traits are passed down to their children.")
            }
        }
    }
}

struct AlleleInheritanceContent1_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceContent1()
    }
}

//
//  AlleleInheritanceContent5.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceContent5: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Great job! You have learned about the fundamental way traits are passed down from parents to children.")
                Text("While there are some special cases, we won't cover them in this course.")
                Text("From the next step, we will look at how a pair of alleles determine an individual's traits.")
            }
        }
    }
}

struct AlleleInheritanceContent5_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceContent5()
    }
}

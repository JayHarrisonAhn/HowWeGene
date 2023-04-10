//
//  IncompleteDominanceContent1.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/09.
//

import SwiftUI

struct IncompleteDominanceContent1: View {
    var body: some View {
        ContentScrollableView {
            VStack {
                Text("Have you ever seen 'Snapdragon Flower'?")
                Text("There are three colors of them. Red, pink and white.")
            }
        }
    }
}

struct IncompleteDominanceContent1_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent1()
    }
}

//
//  AllelePersonView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct AllelePersonView<Content: View>: View {
    @ViewBuilder let leftView: () -> Content
    @ViewBuilder let rightView: () -> Content
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 50)
            HStack {
                leftView()
                rightView()
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 3)
        )
    }
}

struct NewAllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        Genotype(
            firstAllele: WidowsPeak.straight,
            secondAllele: WidowsPeak.vShaped
        ).view
    }
}

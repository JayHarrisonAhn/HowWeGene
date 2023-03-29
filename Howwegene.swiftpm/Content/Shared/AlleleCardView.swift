//
//  AlleleCardView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct AlleleCardView<Content: View>: View {
    @ViewBuilder let content: () -> Content
    var body: some View {
        VStack {
            content()
                .font(.bold(.system(size: 50))())
        }
        .frame(maxWidth: 100, maxHeight: 100)
        .aspectRatio(1, contentMode: .fit)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 5)
        )
    }
}

struct NewAlleleCardView_Previews: PreviewProvider {
    static var previews: some View {
        AlleleCardView {
            Text("H")
        }
    }
}

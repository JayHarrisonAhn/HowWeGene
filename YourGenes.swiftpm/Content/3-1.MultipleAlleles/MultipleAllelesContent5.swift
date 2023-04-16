//
//  MultipleAllelesContent5.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent5: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("The existence of A and B antigen determines the blood type.")
                bloodtypeExplanation(
                    text: "If you have A antigen only,\nyour blood type becomes A."
                ){
                    Antigen.a.icon
                } bloodtype: {
                    Image("bloodtype_icon_a")
                        .resizable()
                }
                bloodtypeExplanation(
                    text: "If you have B antigen only,\nyour blood type becomes B."
                ){
                    Antigen.b.icon
                } bloodtype: {
                    Image("bloodtype_icon_b")
                        .resizable()
                }
                bloodtypeExplanation(
                    text: "If you have both A and B antigen,\nyour blood type becomes AB."
                ){
                    HStack {
                        Antigen.a.icon
                        Antigen.b.icon
                    }
                } bloodtype: {
                    Image("bloodtype_icon_ab")
                        .resizable()
                }
                bloodtypeExplanation(
                    text: "If you don't have any antigen,\nyour blood type becomes O."
                ){
                    Antigen.emptyIcon
                        .scaledToFit()
                } bloodtype: {
                    Image("bloodtype_icon_ab")
                        .resizable()
                }
            }
        }
    }
    
    @ViewBuilder
    func bloodtypeExplanation<Content1: View, Content2: View>(
        text: LocalizedStringKey,
        antigen: ()->Content1,
        bloodtype: ()->Content2
    ) -> some View {
        HStack(spacing: 0) {
            Spacer()
            HStack(spacing: 4) {
                antigen()
                    .scaledToFit()
                    .padding(2)
                Image(systemName: "arrowshape.forward")
                bloodtype()
                    .scaledToFit()
                    .padding(2)
            }.frame(maxHeight: 50)
            Spacer()
            Text(text)
                .font(.footnote)
            Spacer()
        }
        .padding(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(.primary.opacity(0.4), lineWidth: 1)
        )
    }
}

struct MultipleAllelesContent5_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent5()
    }
}

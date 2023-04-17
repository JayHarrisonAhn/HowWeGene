//
//  MultipleAllelesContent4.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/16.
//

import SwiftUI

struct MultipleAllelesContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("First, let's briefly define what blood type actually is.")
                VStack(spacing: 5) {
                    Text("In human blood, there are substances called antigens,\nwhich are produced by the body.")
                    Text("You don't need to learn about what antigen means in this course.\nIt's just something that your body creates.")
                        .font(.caption)
                        .opacity(0.5)
                }
                HStack {
                    Antigen.a.icon
                        .scaledToFit()
                        .frame(maxWidth: 70)
                    Spacer()
                    Antigen.b.icon
                        .scaledToFit()
                        .frame(maxWidth: 70)
                }.frame(maxWidth: 170)
                Text("For ABO blood types, there are two types of antigens: A and B.")
            }
        }
    }
}

struct MultipleAllelesContent4_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent4()
    }
}

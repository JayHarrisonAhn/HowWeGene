//
//  MultipleAllelesContent4.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/16.
//

import SwiftUI

struct MultipleAllelesContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("First, let's briefly see what bloodtype actually is.")
                VStack(spacing: 5) {
                    Text("In human blood, there is something called 'antigen'.")
                    Text("There's no need to know what antigen is - in this course.\nIt's just a kind of substance that human body makes.")
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
                Text("For ABO blood type, there are two kinds of antigen\n- A antigen and B antigen.")
            }
        }
    }
}

struct MultipleAllelesContent4_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent4()
    }
}

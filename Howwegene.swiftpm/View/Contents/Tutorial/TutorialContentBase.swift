//
//  TutorialContentBase.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContentBase<Content: View>: View {
    
    let content: () -> Content
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                VStack(alignment: .center) {
                    Spacer()
                    content()
                        .padding()
                        .frame(maxWidth: 500)
                    Spacer()
                }.frame(maxWidth: .infinity, minHeight: proxy.size.height)
            }
        }
    }
}

struct TutorialContentBase_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContentBase {
            Image("dna")
                .resizable()
                .frame(width: 300, height: 300)
        }
    }
}

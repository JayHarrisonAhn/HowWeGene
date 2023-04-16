//
//  ContentScrollableView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct ContentScrollableView<Content: View>: View {
    
    let content: () -> Content
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(showsIndicators: true) {
                VStack(alignment: .center) {
                    Spacer()
                    content()
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                        .frame(maxWidth: 500)
                    Spacer()
                }
                .frame(maxWidth: proxy.size.width, minHeight: proxy.size.height)
            }
            .padding(8)
        }
    }
}

struct TutorialContentBase_Previews: PreviewProvider {
    static var previews: some View {
        ContentScrollableView {
            Image("dna")
                .resizable()
                .frame(width: 300, height: 300)
        }
    }
}

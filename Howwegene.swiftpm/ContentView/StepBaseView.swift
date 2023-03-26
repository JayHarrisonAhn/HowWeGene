//
//  StepBaseView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct StepBaseView<Content: View>: View {
    
    let content: () -> Content
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("dna")
                            .resizable()
                            .scaledToFit()
                            .frame(
                                width: backgroundImageWidth(frameWidth: proxy.size.width),
                                alignment: .center
                            )
                            .opacity(0.3)
                    }
                }.ignoresSafeArea()
                content()
            }.background(.bar)
        }
    }
    
    func backgroundImageWidth(frameWidth: CGFloat) -> CGFloat {
        if frameWidth <= 600 {
            return frameWidth
        } else {
            return 600
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        StepBaseView {
            Text("Hello")
        }
    }
}

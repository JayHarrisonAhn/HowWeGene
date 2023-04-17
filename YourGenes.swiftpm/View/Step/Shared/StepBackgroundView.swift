//
//  StepBackgroundView.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct StepBackgroundView<Content: View>: View {
    
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("background_dna")
                            .resizable()
                            .scaledToFit()
                            .frame(
                                width: backgroundImageWidth(frameWidth: proxy.size.width),
                                alignment: .center
                            )
                            .opacity(0.1)
                    }
                }.ignoresSafeArea()
                content()
                    .frame(maxHeight: 700)
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
        StepBackgroundView {
            Text("Hello")
        }
    }
}

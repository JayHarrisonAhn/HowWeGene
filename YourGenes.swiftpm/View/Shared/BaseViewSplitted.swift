//
//  BaseViewSplitted.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct BaseViewSplitted<Content: View>: View {
    
    let left: () -> Content
    let right: () -> Content
    let gridColumn = [
        GridItem(.adaptive(minimum: 400))
    ]
    
    var body: some View {
        StepBackgroundView {
            GeometryReader { proxy in
                if proxy.size.width < proxy.size.height {
                    VStack {
                        left()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        right()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                } else {
                    HStack {
                        left()
                        right()
                    }
                }
            }
        }
        
    }
}

struct BaseViewSplitted_Previews: PreviewProvider {
    static var previews: some View {
        BaseViewSplitted {
            Rectangle()
                .fill(.red)
                .aspectRatio(1, contentMode: .fit)
        } right: {
            Rectangle()
                .fill(.blue)
                .aspectRatio(1, contentMode: .fit)
        }
    }
}

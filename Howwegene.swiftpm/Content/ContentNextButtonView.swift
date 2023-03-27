//
//  ContentNextButtonView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct ContentNextButtonView<Content: View>: View {
    let content: () -> Content
    let turnToNextPage: () -> Void
    
    var body: some View {
        VStack {
            content()
            Button("Next") {
                turnToNextPage()
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct ContentNextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentNextButtonView {
            EmptyView()
        } turnToNextPage: {
            
        }
    }
}

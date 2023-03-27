//
//  StepPageView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct StepPageView<Content: View>: View {
    let numOfPages: Int
    @Binding var currentPage: Int
    
    var pages: () -> Content
    var afterLastPage: (()->Void)?
    
    init(
        numOfPages: Int,
        currentPage: Binding<Int>,
        @ViewBuilder pages: @escaping () -> Content,
        afterLastPage: (() -> Void)? = nil
    ) {
        self.numOfPages = numOfPages
        self._currentPage = currentPage
        self.pages = pages
        self.afterLastPage = afterLastPage
    }
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                pages()
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            Button("Next") {
                withAnimation {
                    turnToNextPage()
                }
            }.buttonStyle(.borderedProminent)
        }
    }
    
    func turnToNextPage() {
        if currentPage + 1 < numOfPages {
            currentPage += 1
        } else {
            afterLastPage?()
        }
    }
}

struct StepPage_Previews: PreviewProvider {
    static var previews: some View {
        StepPageView(numOfPages: 3, currentPage: .constant(0)) {
            Text("Hello").tag(0)
            Text("World").tag(1)
            Text("3").tag(2)
        } afterLastPage: {
            print("Last")
        }
    }
}

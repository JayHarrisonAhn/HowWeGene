//
//  CompleteDominanceStep.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct CompleteDominanceStep: View {
    var afterLastPage: (()->Void)? = nil
    
    var body: some View {
        StepBackgroundView {
            StepPageView(
                numOfPages: 3,
                pages: {
                    CompleteDominanceContent1().tag(0)
                    CompleteDominanceContent2().tag(1)
                    CompleteDominanceContent3().tag(2)
                },
                afterLastPage: afterLastPage
            )
        }
    }
}

struct CompleteDominanceStep_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceStep()
    }
}

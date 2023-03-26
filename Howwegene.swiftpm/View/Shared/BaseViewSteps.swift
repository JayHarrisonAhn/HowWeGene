//
//  BaseViewSteps.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct BaseViewSteps: View {
    
    
    var body: some View {
        BaseView {
            VStack {
                Button {
                } label: {
                    Text("Next")
                }
            }
        }
    }
}

struct BaseViewSteps_Previews: PreviewProvider {
    static var previews: some View {
        BaseViewSteps()
    }
}

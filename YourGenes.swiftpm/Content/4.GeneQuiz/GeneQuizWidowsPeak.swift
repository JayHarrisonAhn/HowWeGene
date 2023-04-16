//
//  GeneQuizWidowsPeak.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct GeneQuizWidowsPeak: View {
    let parents = ParentsPedigree<WidowsPeak>.random()
    
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 15) {
                GeneQuizView<WidowsPeak>(parents: parents)
                
            }
        }
    }
}

struct GeneQuizWidowsPeak_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizWidowsPeak()
    }
}

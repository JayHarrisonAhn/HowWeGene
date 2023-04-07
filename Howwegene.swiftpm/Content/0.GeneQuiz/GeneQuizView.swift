//
//  GeneQuizView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

class GeneQuizViewModel<AlleleType: Allele>: ObservableObject {
    @Published var parents = ParentsPedigree<AlleleType>.random()
}

struct GeneQuizView<AlleleType: Allele>: View {
    @StateObject var viewModel = GeneQuizViewModel<AlleleType>()
    
    var body: some View {
        VStack(spacing: 30) {
            Text("If parents have genotypes like a picture below,")
            ParentsPedigreeView<AlleleType>(
                parents: viewModel.parents
            )
            Text("Choose all available children.")
        }.padding()
    }
}

struct GeneQuizView_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizView<WidowsPeak>()
    }
}

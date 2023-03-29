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
        VStack {
            ParentsPedigreeView<AlleleType>(
                parents: viewModel.parents
            )
            Spacer()
                .frame(maxHeight: 200)
            Text("Choose all available children.")
        }.padding()
    }
}

struct GeneQuizView_Previews: PreviewProvider {
    static var previews: some View {
        GeneQuizView<WidowsPeak>()
    }
}

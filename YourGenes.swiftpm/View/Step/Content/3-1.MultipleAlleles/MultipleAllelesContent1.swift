//
//  MultipleAllelesContent1.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

class MultipleAllelesContent1ViewModel: ObservableObject {
    let allExpressions: [BloodType.Expression] = BloodType.Expression.allCases.map {$0}
    @Published var bloodType: BloodType.Expression? = nil
}

struct MultipleAllelesContent1: View {
    @StateObject var viewModel = MultipleAllelesContent1ViewModel()
    var blocked: Bool = false
    var afterSuccess: (() -> Void)?
    
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Text("Do you know your blood type?")
                HStack(spacing: 10) {
                    ForEach(0 ..< viewModel.allExpressions.count, id: \.self) { index in
                        bloodTypeSelector(bloodType: viewModel.allExpressions[index])
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding()
                .border(blocked ? .red : .clear)
                Text("If so, please select it from the buttons provided above. If you don't know your blood type, don't worry; simply select any button.")
            }
        }
    }
    
    @ViewBuilder func bloodTypeSelector(bloodType: BloodType.Expression) -> some View {
        ZStack {
            Button {
                onSelectCard(bloodType)
            } label: {
                AlleleExpressionView<BloodType>(expression: bloodType)
                    .scaledToFit()
                    .frame(minWidth: 40, maxWidth: 40)
            }
            .buttonStyle(.bordered)
            
            if viewModel.bloodType == bloodType {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 40)
                    .foregroundColor(.accentColor)
            }
        }
    }
    
    @ViewBuilder func bloodTypeCard(bloodType: BloodType.Expression) -> some View {
        switch bloodType {
        case .a:
            Text("A")
        case .b:
            Text("B")
        case .o:
            Text("O")
        case .ab:
            Text("AB")
        }
    }
    
    func onSelectCard(_ bloodType: BloodType.Expression) {
        viewModel.bloodType = bloodType
        afterSuccess?()
    }
}

struct MultipleAllelesContent1_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent1()
    }
}

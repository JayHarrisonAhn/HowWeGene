//
//  MultipleAllelesContent1.swift
//  Howwegene
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
                HStack {
                    ForEach(0 ..< viewModel.allExpressions.count, id: \.self) { index in
                        bloodTypeSelector(bloodType: viewModel.allExpressions[index])
                    }
                    .frame(width: 100)
                    .buttonStyle(.bordered)
                    .padding()
                }.border(blocked ? .red : .clear)
                Text("Do you know your blood type?")
                Text("Select yours on the above buttons.\n(If you don't know, don't worry. Just select anything)")
            }
        }
    }
    
    @ViewBuilder func bloodTypeSelector(bloodType: BloodType.Expression) -> some View {
        ZStack {
            Button {
                onSelectCard(bloodType)
            } label: {
                bloodTypeCard(bloodType: bloodType)
                    .font(.bold(.system(size: 30))())
            }
            .frame(width: 100)
            .buttonStyle(.bordered)
            
            if viewModel.bloodType == bloodType {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width:70)
                    .foregroundColor(.gray)
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

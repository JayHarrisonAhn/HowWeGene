//
//  CompleteDominanceContent1.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

class CompleteDominanceContent1ViewModel: ObservableObject {
    @Published var widowsPeak: WidowsPeak? = nil
    
    enum WidowsPeak {
        case straight
        case vShaped
    }
}

struct CompleteDominanceContent1: View {
    @StateObject var viewModel = CompleteDominanceContent1ViewModel()
    var blocked: Bool = false
    var afterSuccess: (() -> Void)?
    
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                Text("The headline of forehead can be categorized into two shapes\n: straight and V-shaped.")
                HStack {
                    Button {
                        onSelectWidowspeak(.straight)
                    } label: {
                        ZStack {
                            AlleleExpressionView<WidowsPeak>(
                                expression: .straight
                            ).scaledToFit()
                            if viewModel.widowsPeak == .straight {
                                Image(systemName: "checkmark.circle")
                                .resizable()
                                .scaledToFit()
                            }
                        }
                    }
                    .frame(width: 100)
                    .buttonStyle(.bordered)
                    Button {
                        onSelectWidowspeak(.vShaped)
                    } label: {
                        ZStack {
                            AlleleExpressionView<WidowsPeak>(
                                expression: .vShaped
                            ).scaledToFit()
                            if viewModel.widowsPeak == .vShaped {
                                Image(systemName: "checkmark.circle")
                                .resizable()
                                .scaledToFit()
                            }
                        }
                    }
                    .frame(width: 100)
                    .buttonStyle(.bordered)
                }.border(blocked ? .red : .clear)
                Text("Look in the mirror and select the button that matches your shape.")
            }
        }
    }
    
    func onSelectWidowspeak(_ widowspeak: CompleteDominanceContent1ViewModel.WidowsPeak) {
        viewModel.widowsPeak = widowspeak
        afterSuccess?()
    }
}

struct CompleteDominanceContent1_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent1()
    }
}

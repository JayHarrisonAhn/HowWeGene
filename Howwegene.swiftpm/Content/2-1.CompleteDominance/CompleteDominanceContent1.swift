//
//  CompleteDominanceContent1.swift
//  Howwegene
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
                HStack {
                    Button {
                        onSelectWidowspeak(.straight)
                    } label: {
                        ZStack {
                            Image("widowspeak_s")
                                .resizable()
                                .scaledToFit()
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
                            Image("widowspeak_v")
                                .resizable()
                                .scaledToFit()
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
                Text("There are 2 shapes of the headline on the forehead -\nStraight and V-Shaped.\n\nLook in the mirror and select yours on the above images.")
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

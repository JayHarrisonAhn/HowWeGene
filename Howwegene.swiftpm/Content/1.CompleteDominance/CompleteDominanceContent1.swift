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
    let viewModel = CompleteDominanceContent1ViewModel()
    
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 70) {
                
                HStack {
                    Button {
                        viewModel.widowsPeak = .straight
                    } label: {
                        Image("widowspeak_s")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                    }.buttonStyle(.bordered)
                    Button {
                        viewModel.widowsPeak = .vShaped
                    } label: {
                        Image("widowspeak_v")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                    }.buttonStyle(.bordered)
                }
                Text("There are 2 shapes of the headline on the forehead - Straight and V-Shaped.\n\nSelect yours on the above images.")
            }
        }.onAppear {
            print("Perform")
        }
    }
}

struct CompleteDominanceContent1_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent1()
    }
}

//
//  MainCompletionView.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MainCompletionView: View {
    var body: some View {
        ContentScrollableView {
            VStack(alignment: .center, spacing: 40) {
                Text("Congratulations!")
                    .font(.system(size: 90, weight: .bold))
                    .minimumScaleFactor(0.001)
                    .lineLimit(1)
                Text("🥳")
                    .font(.system(size: 90))
                    .minimumScaleFactor(0.001)
                Text("""
Congratulations on completing 'Your Genes' course! Great job!

Your dedication and hard work are paying off, and I am impressed with your progress. Keep up the excellent work and continue to expand your knowledge.
"""
                )
            }.multilineTextAlignment(.center)
        }
    }
}

struct MainCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        MainCompletionView()
    }
}

//
//  TutorialContent4.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct TutorialContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 50) {
                Text("This can seem strange. Some traits are inherited from parents to their children, while others are not.")
                Text("🤔")
                    .font(.system(size: 80))
                    .minimumScaleFactor(0.001)
                Text("If you're curious about how genetics works, let's learn more!")
            }
        }
    }
}

struct TutorialContent4_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent4()
    }
}

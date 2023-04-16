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
            VStack(spacing: 70) {
                Text("This is weird.\nSome characteristics are inherited, and some aren't.")
            }
        }
    }
}

struct TutorialContent4_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent4()
    }
}

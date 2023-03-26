//
//  TutorialContent4.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/26.
//

import SwiftUI

struct TutorialContent4: View {
    var body: some View {
        ContentBaseView {
            VStack(spacing: 70) {
                Text("This is weird. Some characteristics are inherited, and some aren't.")
            }
        }
    }
}

struct TutorialContent4_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent4()
    }
}

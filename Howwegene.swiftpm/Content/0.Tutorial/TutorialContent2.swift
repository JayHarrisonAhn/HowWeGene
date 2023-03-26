//
//  TutorialContent2.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

struct TutorialContent2: View {
    var body: some View {
        ContentBaseView {
            Text("Genes are inherited from one to its child.\n\nThis is why you looks like your parents.")
        }
    }
}

struct TutorialContent2_Previews: PreviewProvider {
    static var previews: some View {
        TutorialContent2()
    }
}

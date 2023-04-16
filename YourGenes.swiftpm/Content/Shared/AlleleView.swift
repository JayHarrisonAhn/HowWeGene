//
//  AlleleView.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct AlleleView<AlleleType: Allele>: View {
    let allele: any Allele
    var showComment: Bool
    
    init(allele: any Allele, showComment: Bool = false) {
        self.allele = allele
        self.showComment = showComment
    }
    var body: some View {
        VStack {
            innerView
                .font(.bold(.system(size: 30))())
            if showComment {
                Text("(\(comment))")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }
        }
        .frame(maxWidth: 70, maxHeight: 70)
        .aspectRatio(1, contentMode: .fit)
        .overlay(
            RoundedRectangle(cornerRadius: 17)
                .stroke(.primary, lineWidth: 3)
        )
    }
    
    @ViewBuilder var innerView: some View {
        if let allele = allele as? WidowsPeak {
            switch allele {
            case .vShaped:
                Text("W")
            case .straight:
                Text("w")
            }
        } else if let allele = allele as? SnapdragonColor {
            switch allele {
            case .red:
                Text("R")
            case .white:
                Text("W")
            }
        } else if let allele = allele as? BloodType {
            switch allele {
            case .a:
                Text("A")
            case .b:
                Text("B")
            case .o:
                Text("O")
            }
        } else {
            Image(systemName: "questionmark")
        }
    }
    
    var comment: String {
        if let allele = allele as? WidowsPeak {
            switch allele {
            case .vShaped:
                return "v-shaped"
            case .straight:
                return "straight"
            }
        } else {
            return allele.title
        }
    }
}

struct AlleleView_Previews: PreviewProvider {
    static var previews: some View {
        AlleleView<WidowsPeak>(allele: WidowsPeak.straight, showComment: true)
    }
}

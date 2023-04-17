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
            Text(allele.title)
                .font(.bold(.system(size: 30))())
                .minimumScaleFactor(0.001)
            if showComment {
                Text("(\(allele.description))")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    .minimumScaleFactor(0.1)
            }
        }
        .padding(5)
        .frame(maxWidth: 70, maxHeight: 70)
        .aspectRatio(1, contentMode: .fit)
        .overlay(
            RoundedRectangle(cornerRadius: 17)
                .stroke(.primary, lineWidth: 3)
        )
    }
}

struct AlleleView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AlleleView<WidowsPeak>(allele: WidowsPeak.straight, showComment: true)
            ParentsPedigreeView<BloodType>(
                parents: .random()
            )
        }
    }
}

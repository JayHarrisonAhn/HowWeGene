//
//  WidowsPeak.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

enum WidowsPeak: Allele {
    enum Expression: CaseIterable, Equatable, Hashable, TitleRepresentable {
        case vShaped
        case straight
        var title: String {
            switch self {
            case .straight:
                return "Straight"
            case .vShaped:
                return "V-Shaped"
            }
        }
    }
    
    static func revealing(genotype: Genotype<Self>) -> Expression {
        if [genotype.firstAllele, genotype.secondAllele].contains(.vShaped) {
            return .vShaped
        } else {
            return .straight
        }
    }
    
    case vShaped
    case straight
    
    var title: String {
        switch self {
        case .straight:
            return "Straight"
        case .vShaped:
            return "V-Shaped"
        }
    }
}

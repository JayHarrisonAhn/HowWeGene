//
//  WidowsPeak.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

enum WidowsPeak: Allele {
    static func revealing(genotype: Genotype<WidowsPeak>) -> WidowsPeak {
        if [genotype.firstAllele, genotype.secondAllele].contains(.vShaped) {
            return .vShaped
        } else {
            return .straight
        }
    }
    
    case straight
    case vShaped
    
    var title: String {
        switch self {
        case .straight:
            return "Straight"
        case .vShaped:
            return "V-Shaped"
        }
    }
}

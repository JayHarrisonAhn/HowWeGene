//
//  TongueRolling.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import Foundation

enum TongueRolling: Allele {
    static func revealing(genotype: Genotype<TongueRolling>) -> TongueRolling {
        return .canRoll
    }
    
    case canRoll
    case cannotRoll
    var title: String {
        return ""
    }
}

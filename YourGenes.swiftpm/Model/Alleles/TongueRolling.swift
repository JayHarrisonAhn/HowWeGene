//
//  TongueRolling.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import Foundation

enum TongueRolling: Allele {
    enum Expression: CaseIterable, Equatable, Hashable, TitleRepresentable {
        case canRoll
        case cannotRoll
        var title: String {
            return ""
        }
    }
    
    static func revealing(genotype: Genotype<Self>) -> Expression {
        return .canRoll
    }
    
    case canRoll
    case cannotRoll
    var title: String {
        return ""
    }
}

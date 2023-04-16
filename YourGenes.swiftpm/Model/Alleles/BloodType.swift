//
//  BloodType.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/10.
//

import Foundation

enum BloodType: Allele {
    
    enum Expression: CaseIterable, Equatable, Hashable, TitleRepresentable {
        case a
        case b
        case o
        case ab
        var title: String {
            switch self {
            case .a:
                return "A"
            case .b:
                return "B"
            case .o:
                return "O"
            case .ab:
                return "AB"
            }
        }
    }
    
    static func revealing(genotype: Genotype<Self>) -> Expression {
        let allelesSet: Set<Self> = [genotype.firstAllele, genotype.secondAllele]
        
        switch allelesSet {
        case [.a], [.a, .o]:
            return .a
        case [.b], [.b, .o]:
            return .b
        case [.o]:
            return .o
        case [.a, .b]:
            return .ab
        default:
            return .o
        }
    }
    
    case a
    case b
    case o
    var title: String {
        switch self {
        case .a:
            return "A"
        case .b:
            return "B"
        case .o:
            return "O"
        }
    }
}

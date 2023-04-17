//
//  SnapdragonColor.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import Foundation

enum SnapdragonColor: Allele {
    
    enum Expression: CaseIterable, Equatable, Hashable, TitleRepresentable {
        case red
        case pink
        case white
        var title: String {
            switch self {
            case .red:
                return "Red"
            case .pink:
                return "Pink"
            case .white:
                return "White"
            }
        }
    }
    
    static func revealing(genotype: Genotype<Self>) -> Expression {
        let allelesSet: Set<Self> = [genotype.firstAllele, genotype.secondAllele]
        
        switch allelesSet {
        case [.red]:
            return .red
        case [.white]:
            return .white
        case [.red, .white]:
            return .pink
        default:
            return .red
        }
    }
    
    case red
    case white
    var title: String {
        switch self {
        case .red:
            return "R"
        case .white:
            return "W"
        }
    }
    var description: String {
        switch self {
        case .red:
            return "Red"
        case .white:
            return "White"
        }
    }
}

//
//  SampleAllele.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import Foundation

enum SampleAllele: Allele {
    enum Expression: CaseIterable, Equatable, Hashable, TitleRepresentable {
        case x
        var title: String {""}
    }
    
    static func revealing(genotype: Genotype<Self>) -> Expression {
        return .x
    }
    
    case a
    case b
    
    var title: String {
        switch self {
        case .a:
            return "A"
        case .b:
            return "B"
        }
    }
    var description: String? { return nil }
}

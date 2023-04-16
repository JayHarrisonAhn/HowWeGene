//
//  Allele.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

protocol Allele: CaseIterable, Equatable, Hashable, TitleRepresentable {
    static func revealing(genotype: Genotype<Self>) -> Expression
    associatedtype Expression: CaseIterable, Equatable, Hashable, TitleRepresentable
}

protocol TitleRepresentable {
    var title: String { get }
}

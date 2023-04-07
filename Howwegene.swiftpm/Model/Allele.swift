//
//  Allele.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

protocol Allele: CaseIterable, Equatable, Hashable {
    var title: String { get }
    static func revealing(genotype: Genotype<Self>) -> Self
}

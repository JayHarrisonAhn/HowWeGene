//
//  ParentsPedigree.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import Foundation

struct ParentsPedigree<AlleleType: Allele> {
    let dad: Genotype<AlleleType>
    let mom: Genotype<AlleleType>
}

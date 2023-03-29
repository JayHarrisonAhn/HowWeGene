//
//  Allele.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

protocol Allele {
    associatedtype Content: View
    @ViewBuilder var cardView: Content { get }
}

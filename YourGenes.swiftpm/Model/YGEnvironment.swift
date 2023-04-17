//
//  YGEnvironment.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

class YGEnvironment: ObservableObject {
    @Published var stepProgress: [MainViewModel.Step:Bool]
    var isStepProgressCompleted: Bool {
        stepProgress.reduce(true, {$0 && $1.value})
    }
    
    init() {
        self.stepProgress = Dictionary(
            uniqueKeysWithValues: MainViewModel.Step.allCases.map{($0, false)}
        )
    }
}

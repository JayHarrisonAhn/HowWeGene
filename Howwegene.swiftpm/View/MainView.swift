//
//  MainView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var currentStep: Step? = .tutorial
    
    enum Step: String, CaseIterable, Identifiable, Hashable {
        case tutorial
        case completeDominance
        
        var id: String { return self.rawValue }
        var title: String {
            switch self {
            case .tutorial:
                return "Tutorial"
            case .completeDominance:
                return "1. Complete Dominance"
            }
        }
    }
    
    func moveToNextStep() {
        switch currentStep {
        case .tutorial:
            currentStep = .completeDominance
        case .completeDominance:
            break
        case nil:
            break
        }
    }
}

@available(iOS 16.0, *)
struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(
                MainViewModel.Step.allCases,
                selection: $viewModel.currentStep
            ) { step in
                listCell(list: step)
            }
        } detail: {
            currentStepView
        }.navigationSplitViewStyle(.balanced)
    }
    
    @ViewBuilder
    func listCell(list: MainViewModel.Step) -> some View {
        NavigationLink(list.title, value: list)
    }
    
    @ViewBuilder
    func listCellLabel(list: MainViewModel.Step) -> some View {
        Text(list.title)
    }
    
    @ViewBuilder
    var currentStepView: some View {
        if let step = viewModel.currentStep {
            stepView(step)
                .navigationTitle(step.title)
        } else {
            EmptyView()
        }
    }
    
    @ViewBuilder
    private func stepView(_ step: MainViewModel.Step) -> some View {
        switch step {
        case .tutorial:
            TutorialStep(turnToNextStep: viewModel.moveToNextStep)
        case .completeDominance:
            CompleteDominanceStep()
        }
    }
}

@available(iOS 16.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

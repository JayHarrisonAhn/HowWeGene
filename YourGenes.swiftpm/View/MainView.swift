//
//  MainView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var currentStep: Step? = .tutorial
    @Published var presentMoreinfoView: Bool = false
    
    enum Step: String, CaseIterable, Identifiable, Hashable {
        
        case tutorial
        case completeDominance
        case completeDominanceQuiz
        case incompleteDominance
        case incompleteDominanceQuiz
        case multipleAlleles
        case multipleAllelesQuiz
        
        var id: String { return self.rawValue }
        var title: String {
            switch self {
            case .tutorial:
                return "Tutorial"
            case .completeDominance:
                return "1-1. Complete Dominance"
            case .completeDominanceQuiz:
                return "1-2. Complete Dominance Quiz"
            case .incompleteDominance:
                return "2-1. Incomplete Dominance"
            case .incompleteDominanceQuiz:
                return "2-2. Incomplete Dominance Quiz"
            case .multipleAlleles:
                return "3-1. Multiple Alleles"
            case .multipleAllelesQuiz:
                return "3-2. Multiple Alleles Quiz"
            }
        }
    }
    
    func moveToNextStep() {
        switch currentStep {
        case .tutorial:
            currentStep = .completeDominance
        case .completeDominance:
            currentStep = .completeDominanceQuiz
        case .completeDominanceQuiz:
            break
        case .incompleteDominance:
            currentStep = .incompleteDominanceQuiz
        case .incompleteDominanceQuiz:
            break
        case .multipleAlleles:
            currentStep = .multipleAllelesQuiz
        case .multipleAllelesQuiz:
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
            Button("More info") {
                viewModel.presentMoreinfoView = true
            }
            .buttonStyle(.plain)
            .foregroundColor(.secondary)
            .font(.caption)
        } detail: {
            currentStepView
        }
        .navigationSplitViewStyle(.balanced)
        .sheet(
            isPresented: $viewModel.presentMoreinfoView,
            content: MoreInfoView.init
        )
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
                .multilineTextAlignment(.center)
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
            CompleteDominanceStep(turnToNextStep: viewModel.moveToNextStep)
        case .completeDominanceQuiz:
            CompleteDominanceQuiz()
        case .incompleteDominance:
            IncompleteDominanceStep(turnToNextStep: viewModel.moveToNextStep)
        case .incompleteDominanceQuiz:
            IncompleteDominanceQuiz()
        case .multipleAlleles:
            MultipleAllelesStep(turnToNextStep: viewModel.moveToNextStep)
        case .multipleAllelesQuiz:
            MultipleAllelesQuiz()
        }
    }
}

@available(iOS 16.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

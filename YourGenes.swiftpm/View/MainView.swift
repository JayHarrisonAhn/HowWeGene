//
//  MainView.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var currentStep: Step? = .tutorial
    @Published var presentMoreinfoView: Bool = false
    @Published var presentCompletionView: Bool = false
    
    enum Step: String, CaseIterable, Identifiable, Hashable {
        
        case tutorial
        case alleleInheritance
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
            case .alleleInheritance:
                return "Allele & Inheritance"
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
}

@available(iOS 16.0, *)
struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    
    @EnvironmentObject var environment: YGEnvironment
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(
                MainViewModel.Step.allCases,
                selection: $viewModel.currentStep
            ) { step in
                listCell(list: step)
            }
            Button("About '\(Bundle.main.infoDictionary!["CFBundleName"] as! String)'...") {
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
        .sheet(
            isPresented: $viewModel.presentCompletionView,
            content: MainCompletionView.init
        )
        .onChange(of: environment.stepProgress) { _ in
            if environment.isStepProgressCompleted {
                viewModel.presentCompletionView = true
            }
        }
    }
    
    @ViewBuilder
    func listCell(list: MainViewModel.Step) -> some View {
        NavigationLink(value: list) {
            HStack {
                if environment.stepProgress[list] == true {
                    Image(systemName: "largecircle.fill.circle")
                } else {
                    Image(systemName: "circle")
                }
                Text(list.title)
            }
        }
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
            TutorialStep(turnToNextStep: moveToNextStep)
        case .alleleInheritance:
            AlleleInheritanceStep(turnToNextStep: moveToNextStep)
        case .completeDominance:
            CompleteDominanceStep(turnToNextStep: moveToNextStep)
        case .completeDominanceQuiz:
            CompleteDominanceQuiz(turnToNextStep: moveToNextStep)
        case .incompleteDominance:
            IncompleteDominanceStep(turnToNextStep: moveToNextStep)
        case .incompleteDominanceQuiz:
            IncompleteDominanceQuiz(turnToNextStep: moveToNextStep)
        case .multipleAlleles:
            MultipleAllelesStep(turnToNextStep: moveToNextStep)
        case .multipleAllelesQuiz:
            MultipleAllelesQuiz {
                
            }
        }
    }
    
    func moveToNextStep() {
        withAnimation(.easeInOut) {
            if let currentStep = viewModel.currentStep {
                environment.stepProgress[currentStep] = true
            }
            switch viewModel.currentStep {
            case .tutorial:
                viewModel.currentStep = .alleleInheritance
            case .alleleInheritance:
                viewModel.currentStep = .completeDominance
            case .completeDominance:
                viewModel.currentStep = .completeDominanceQuiz
            case .completeDominanceQuiz:
                viewModel.currentStep = .incompleteDominance
            case .incompleteDominance:
                viewModel.currentStep = .incompleteDominanceQuiz
            case .incompleteDominanceQuiz:
                viewModel.currentStep = .multipleAlleles
            case .multipleAlleles:
                viewModel.currentStep = .multipleAllelesQuiz
            case .multipleAllelesQuiz:
                break
            case nil:
                break
            }
        }
    }
}

@available(iOS 16.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

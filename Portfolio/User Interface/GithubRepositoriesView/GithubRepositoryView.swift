//
//  GithubRepositoryView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct GithubRepositoryView: View {
        
    private let viewModel: GithubRepositoryViewModel
        
    init(viewModel: GithubRepositoryViewModel) {
        self.viewModel = viewModel
    }
        
    var body: some View {
        VStack(spacing: Constants.bodyVerticalSpace) {
            LeadingText(viewModel.name)
                .font(.headline)
            
            if let description = viewModel.description {
                LeadingText(description)
            }
            
            metadataFooterView
        }
    }
    
    private var metadataFooterView: some View {
        HStack(spacing: Constants.footerHorizontalSpace) {
            IconPrefixedText(
                iconName: "star",
                label: viewModel.starsCount,
                isCentralized: true
            )
            
            IconPrefixedText(
                iconName: "eye",
                label: viewModel.watchersCount,
                isCentralized: true
            )
            
            IconPrefixedText(
                iconName: "arrow.triangle.branch",
                label: viewModel.forksCount,
                isCentralized: true
            )
            
            if let language = viewModel.programmingLanguage {
                Text(language)
            }
            
            Spacer()
        }
        .font(.footnote)
        .foregroundColor(.secondary)
    }
    
    private func metadataEntryView(
        withImage imageName: String,
        andText valueText: String
    ) -> some View {
        HStack(spacing: Constants.entryHorizontalSpace) {
            Image(systemName: imageName)
            Text(valueText)
        }
    }
}

private extension GithubRepositoryView {
    enum Constants {
        static let bodyVerticalSpace = 10.0
        static let footerHorizontalSpace = 15.0
        static let entryHorizontalSpace = 5.0
    }
}

struct GithubRepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        let model = GithubRepository(
            id: 1,
            name: "Repository name",
            description: "The preview of an amazing repository.",
            stars: 23,
            watchers: 1, forks: 0,
            language: "Swift"
        )
        let viewModel = GithubRepositoryViewModel(repository: model)
        
        GithubRepositoryView(viewModel: viewModel)
            .padding()
    }
}

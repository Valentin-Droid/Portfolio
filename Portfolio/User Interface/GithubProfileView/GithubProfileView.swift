//
//  GithubProfileView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct GithubProfileView: View {
        
    var viewModel: GithubProfileViewModel
        
    var body: some View {
        VStack {
            mainProfileView()
            repositoriesView()
        }
        .padding()
        .background(.thickMaterial)
        .cornerRadius(UIConstants.cardCornerRadius)
    }
    
    private func mainProfileView() -> some View {
        VStack(spacing: Constants.screenVerticalSpacing) {
            ProfileImage(url: viewModel.avatarURL)
            
            VStack(spacing: Constants.verticalEntrySpacing) {
                LeadingText(viewModel.name)
                    .font(.title)
                
                if let bio = viewModel.bio {
                    LeadingText(bio)
                        .font(.callout)
                }
            }
            .foregroundColor(.primary)
            
            VStack(spacing: Constants.verticalEntrySpacing) {
                if let company = viewModel.company {
                    IconPrefixedText(iconName: "building.2", label: company)
                }
                
                if let location = viewModel.location {
                    IconPrefixedText(iconName: "location.north", label: location)
                }
                
                if let blog = viewModel.blog {
                    IconPrefixedText(iconName: "link", label: blog)
                }
            }
            .font(.callout)
            .foregroundColor(.secondary)
        }
    }
    
    @ViewBuilder
    private func repositoriesView() -> some View {
        if !viewModel.repositories.isEmpty {
            GithubRepositoriesListView(repositories: viewModel.repositories)
        }
    }
}

private extension GithubProfileView {
    enum Constants {
        static let screenVerticalSpacing: CGFloat = 15.0
        static let verticalEntrySpacing: CGFloat = 5.0
    }
}

struct GithubProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let user = GithubUser(
            login: "octocat",
            name: "The Octocat",
            location: "San Francisco",
            avatarUrl: nil,
            publicRepositoriesCount: 5,
            publicRepositoriesUrl: URL(string: "github.com")!,
            blog: "www.octoblog.com",
            company: "Github",
            bio: "Half cat, half octopus"
        )
        
        let repositories = [
            GithubRepository(
                id: 1,
                name: "My portfolio",
                description: "The most interesting side projects I've built.",
                stars: 1,
                watchers: 1,
                forks: 0,
                language: "HTML"
            ),
            GithubRepository(
                id: 2,
                name: "My blog",
                description: "Some notes on the things I'm learning.",
                stars: 0,
                watchers: 1,
                forks: 0,
                language: "HTML"
            )
        ]
        
        GithubProfileView(
            viewModel: GithubProfileViewModel(
                user: user,
                repositories: repositories
            )
        )
    }
}

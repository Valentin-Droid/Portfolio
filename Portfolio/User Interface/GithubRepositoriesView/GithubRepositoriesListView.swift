//
//  GithubRepositoriesListView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct GithubRepositoriesListView: View {
        
    let repositories: [GithubRepositoryViewModel]
        
    var body: some View {
        VStack {
            LeadingText("Repositories")
                .font(.title3)
                .padding(.vertical)
            
            ForEach(repositories) { repository in
                VStack {
                    GithubRepositoryView(viewModel: repository)
                    
                    if repositories.last != repository {
                        Divider()
                            .padding(.vertical)
                    }
                }
            }
        }
    }
}

struct GithubRepositoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        let models = [
            GithubRepository(
                id: 1,
                name: "Repository 1",
                description: "The first repo.",
                stars: 5,
                watchers: 0,
                forks: 0,
                language: "HTML"
            ),
            GithubRepository(
                id: 2,
                name: "Repository 2",
                description: "The second repo.",
                stars: 1,
                watchers: 2,
                forks: 1,
                language: "Javascript"
            )
        ]
        let viewModels = models.map(GithubRepositoryViewModel.init)
        
        return GithubRepositoriesListView(repositories: viewModels)
    }
}

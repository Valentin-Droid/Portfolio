//
//  GithubProfileViewModel.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation

struct GithubProfileViewModel: Equatable {
        
    private let user: GithubUser
    
    var avatarURL: URL? { user.avatarUrl }
    var name: String { user.name ?? user.login }
    var bio: String? { user.bio }
    var company: String? { user.company }
    var location: String? { user.location }
    var blog: String? {
        let blog = user.blog ?? ""
        
        if blog.isEmpty {
            return nil
        }
        
        return blog
    }
    let repositories: [GithubRepositoryViewModel]
        
    init(user: GithubUser, repositories: [GithubRepository] = []) {
        self.user = user
        self.repositories = repositories
            .sorted { $0.stars > $1.stars }
            .prefix(5)
            .map(GithubRepositoryViewModel.init)
    }
}

//
//  GithubUser.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation

struct GithubUser: Codable, Equatable {
        
    let login: String
    let name: String?
    let location: String?
    let avatarUrl: URL?
    let publicRepositoriesCount: Int
    let publicRepositoriesUrl: URL
    let blog: String?
    let company: String?
    let bio: String?
        
    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case publicRepositoriesCount = "public_repos"
        case publicRepositoriesUrl = "repos_url"
        
        case login
        case name
        case location
        case blog
        case company
        case bio
    }
}

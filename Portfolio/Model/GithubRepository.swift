//
//  GithubRepository.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation

struct GithubRepository: Codable, Equatable {
        
    let id: Int
    let name: String
    let description: String?
    let stars: Int
    let watchers: Int
    let forks: Int
    let language: String?
        
    enum CodingKeys: String, CodingKey {
        case stars = "stargazers_count"
        case watchers = "watchers_count"
        case forks = "forks_count"
        
        case id
        case name
        case description
        case language
    }
}

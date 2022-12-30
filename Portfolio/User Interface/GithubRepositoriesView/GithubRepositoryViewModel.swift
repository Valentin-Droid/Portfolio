//
//  GithubRepositoryViewModel.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation

struct GithubRepositoryViewModel: Equatable, Identifiable {
        
    private let repository: GithubRepository
    
    var id: Int {
        repository.id
    }

    var name: String {
        repository.name
    }
    
    var description: String? {
        repository.description
    }
    
    var starsCount: String {
        String(repository.stars)
    }
    
    var watchersCount: String {
        String(repository.watchers)
    }
    
    var forksCount: String {
        String(repository.forks)
    }
    
    var programmingLanguage: String? {
        repository.language
    }
        
    init(repository: GithubRepository) {
        self.repository = repository
    }
}

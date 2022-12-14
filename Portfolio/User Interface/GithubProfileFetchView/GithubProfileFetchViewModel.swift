//
//  GithubProfileFetchViewModel.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import Foundation
import Combine

@MainActor
final class GithubProfileFetchViewModel: ObservableObject {
    
    // MARK: Properties
    
    private let client = HttpClient()
    
    // MARK: State
    
    enum State: Equatable {
        case `default`
        case loading
        case fetched(profile: GithubProfileViewModel)
        case failure(error: HttpError)
    }
    
    @Published
    var state = State.default
    
    // MARK: Imperatives
    
    func fetchProfile(using username: String) async {
        guard !username.isEmpty else {
            state = .`default`
            return
        }
        
        state = .loading
        
        do {
            let url = profileURL(for: username)
            let user: GithubUser = try await client.resource(from: url)
            let repositories: [GithubRepository] = try await client.resource(from: user.publicRepositoriesUrl)
            
            guard !Task.isCancelled else {
                return
            }
            
            let profileViewModel = GithubProfileViewModel(user: user, repositories: repositories)
            state = .fetched(profile: profileViewModel)
            
        } catch {
            let httpError = (error as? HttpError) ?? .unknownFailure
            state = .failure(error: httpError)
        }
    }
    
    // MARK: Internal Methods
    
    private func profileURL(for username: String) -> URL {
        let hostURL = URL(string: "https://api.github.com")!
        let usersPath = "users"
        
        return hostURL
            .appendingPathComponent(usersPath)
            .appendingPathComponent(username)
    }
}

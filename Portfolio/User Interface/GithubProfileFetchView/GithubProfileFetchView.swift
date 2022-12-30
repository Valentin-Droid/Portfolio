//
//  GithubProfileFetchView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct GithubProfileFetchView: View {
        
    @StateObject
    private var viewModel = GithubProfileFetchViewModel()
    
    @State
    private var searchText: String = "Valentin-Droid"
    
    @State
    private var shouldStartFetch = true
        
    var body: some View {
        VStack {
            switch viewModel.state {
            case .`default`:
                DefaultProfileView()
                
            case .fetched(let profileViewModel):
                ScrollView {
                    GithubProfileView(viewModel: profileViewModel)
                        .padding()
                }
                
            case .loading:
                LoadingIndicator()
                
            case .failure(let error):
                if error == .requestFailed(statusCode: 404) {
                    ErrorView.profileNotFound()
                } else {
                    ErrorView.connectionError()
                }
            }
            
            Spacer()
        }
        .task(id: shouldStartFetch) {
            await fetchProfile()
        }
    }
        
    private func fetchProfile() async {
        guard shouldStartFetch else {
            return
        }
        
        await viewModel.fetchProfile(using: searchText)
        shouldStartFetch = false
    }
}

struct GithubProfileFetchView_Previews: PreviewProvider {
    // TODO: Put all preview variations here (loading, fetched, failure).
    
    static var previews: some View {
        GithubProfileFetchView()
    }
}

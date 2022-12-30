//
//  ProfileImage.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct ProfileImage: View {
        
    private var isRunningInPreview: Bool {
        ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
    
    let url: URL?
        
    var body: some View {
        if isRunningInPreview {
            Image("octocat_image")
                .resizable()
                .aspectRatio(Constants.imageAspectRatio, contentMode: .fit)
                .clipShape(Circle())
                .frame(height: Constants.imageHeight)
        } else {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .aspectRatio(Constants.imageAspectRatio, contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                LoadingIndicator()
            }
            .frame(height: Constants.imageHeight)
            .aspectRatio(Constants.imageAspectRatio, contentMode: .fit)
        }
    }
}

private extension ProfileImage {
    enum Constants {
        static let imageAspectRatio: CGFloat = 1.0
        static let imageHeight: CGFloat = 200.0
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(url: URL(string: "www.google.com")!)
    }
}

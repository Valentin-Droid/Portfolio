//
//  ErrorView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct ErrorView: View {
        
    let systemImageName: String
    let title: String
    let message: String
        
    var body: some View {
        VStack(spacing: Constants.verticalSpacing) {
            Image(systemName: systemImageName)
                .font(Constants.imageFont)
            
            Text(title)
                .font(.headline)
            
            Text(message)
        }
        .padding()
        .foregroundColor(.secondary)
        .multilineTextAlignment(.center)
    }
}

private extension ErrorView {
    enum Constants {
        static let verticalSpacing: CGFloat = 10.0
        static let imageFont = Font.system(size: 60)
    }
}

extension ErrorView {
    static func connectionError() -> ErrorView {
        ErrorView(
            systemImageName: "wifi.exclamationmark",
            title: "Erreur",
            message: "Une erreur s'est produite. Veuillez vérifier votre connexion Internet et réessayer."
        )
    }
    
    static func profileNotFound() -> ErrorView {
        ErrorView(
            systemImageName: "person.fill.xmark",
            title: "Profile not found",
            message: "Try searching for a different name or identifier."
        )
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView.connectionError()
        ErrorView.profileNotFound()
    }
}

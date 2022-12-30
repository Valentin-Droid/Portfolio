//
//  DefaultProfileView.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct DefaultProfileView: View {
        
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.fill")
                .font(.system(size: 60))
            
            Text("Search a Github profile using a name or the user's identifier.")
        }
        .padding()
        .foregroundColor(.secondary)
        .multilineTextAlignment(.center)
    }
}

struct DefaultProfileView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultProfileView()
    }
}

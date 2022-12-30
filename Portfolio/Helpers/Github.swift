//
//  Github.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct Github: View {
    var body: some View {
        Link(destination: URL(string: "https://github.com/Valentin-Droid")!, label: {
            Image("Github")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
        })
        .padding()
    }
}

struct Github_Previews: PreviewProvider {
    static var previews: some View {
        Github()
    }
}

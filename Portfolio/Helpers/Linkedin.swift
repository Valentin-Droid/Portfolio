//
//  Linkedin.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct Linkedin: View {
    var body: some View {
        Link(destination: URL(string: "https://www.linkedin.com/in/valentin-drelon-8068301b1/")!, label: {
            Image("Linkedin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
        })
        .padding()
    }
}

struct Linkedin_Previews: PreviewProvider {
    static var previews: some View {
        Linkedin()
    }
}

//
//  Malt.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct Malt: View {
    var body: some View {
        Link(destination: URL(string: "https://www.malt.fr/profile/valentindrelon")!, label: {
            Image("malt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
        })
        .padding()
    }
}

struct Malt_Previews: PreviewProvider {
    static var previews: some View {
        Malt()
    }
}

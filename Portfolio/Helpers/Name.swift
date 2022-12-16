//
//  Name.swift
//  Portfolio
//
//  Created by Valentin Drelon on 14/12/2022.
//

import SwiftUI

struct Name: View {
    var body: some View {
        HStack {
            Text("Valentin")
                .font(.title)
            Text("Drelon")
                .font(.title)
                .opacity(0.5)
        }
    }
}

struct Name_Previews: PreviewProvider {
    static var previews: some View {
        Name()
    }
}

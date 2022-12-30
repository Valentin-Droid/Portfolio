//
//  telephone.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct telephone: View {
    
    let phone = Image("Phone")

    var body: some View {
        HStack {
            phone
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text("     06 30 37 80 79                     ")
        }
        .padding()
    }
}

struct telephone_Previews: PreviewProvider {
    static var previews: some View {
        telephone()
    }
}

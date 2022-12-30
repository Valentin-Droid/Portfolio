//
//  Mail.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct Mail: View {
    
    let mail = Image("Mail")
    
    var body: some View {
        HStack {
            mail
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text("Valentin.drelon23@icloud.com")
        }
        .padding()
    }
}

struct Mail_Previews: PreviewProvider {
    static var previews: some View {
        Mail()
    }
}

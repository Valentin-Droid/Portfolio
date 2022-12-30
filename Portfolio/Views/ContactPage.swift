//
//  ContactPage.swift
//  Portfolio
//
//  Created by Valentin Drelon on 10/12/2022.
//

import SwiftUI

struct ContactPage: View {
    
    var body: some View {
        VStack {
            Text("Contacter moi !   👋🏻")
                .font(.title)
                .padding(.bottom, 70)
            HStack {
                Github()
                Linkedin()
                Malt()
            }
            .padding()
            VStack {
                Mail()
                telephone()
            }
        }
    }
}

struct ContactPage_Previews: PreviewProvider {
    static var previews: some View {
        ContactPage()
    }
}

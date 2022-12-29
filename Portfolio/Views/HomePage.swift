//
//  HomePage.swift
//  Portfolio
//
//  Created by Valentin Drelon on 16/12/2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            VStack{
                Name()
                PhotoDeProfile()
                    .frame(width: 100,height: 350)
                Text("Créateur d'application mobile en Swift , Flutter et Kotlin\nWeb developper en c# , Wordpresse, Shopify et Magento")
                    .padding(.bottom, 20)
                    .frame(width: 350, alignment: .leading)
                Description()
            }
            
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

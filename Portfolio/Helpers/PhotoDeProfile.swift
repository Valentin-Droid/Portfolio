//
//  PhotoDeProfile.swift
//  Portfolio
//
//  Created by Valentin Drelon on 14/12/2022.
//
import SwiftUI

struct PhotoDeProfile: View {
    let image = Image("photoDeProfile3")
    var body: some View {
        ZStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .border(.gray, width: 3)
                
        }
        .shadow(radius: 7)
    }
}
struct PhotoDeProfile_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDeProfile()
    }
}

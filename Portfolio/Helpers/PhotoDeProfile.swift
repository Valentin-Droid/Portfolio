//
//  PhotoDeProfile.swift
//  Portfolio
//
//  Created by Valentin Drelon on 14/12/2022.
//
import SwiftUI

struct PhotoDeProfile: View {
    let image = Image("photoDeProfile4")
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .frame(width: 400, height: 400)
            .shadow(radius: 7)
    }
}
struct PhotoDeProfile_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDeProfile()
    }
}

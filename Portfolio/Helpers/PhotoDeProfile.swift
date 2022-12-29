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
        image
            .resizable()
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .frame(width: 500, height: 500)
            .shadow(radius: 7)
    }
}
struct PhotoDeProfile_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDeProfile()
    }
}

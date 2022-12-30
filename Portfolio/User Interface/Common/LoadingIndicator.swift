//
//  LoadingIndicator.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct LoadingIndicator: View {
        
    private var circular: some ProgressViewStyle {
        CircularProgressViewStyle(tint: Color.appTheme)
    }
        
    var body: some View {
        ProgressView()
            .progressViewStyle(circular)
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator()
    }
}

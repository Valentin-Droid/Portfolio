//
//  IconPrefixedText.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct IconPrefixedText: View {
        
    let iconName: String
    let label: String
    let isCentralized: Bool
        
    init(iconName: String, label: String, isCentralized: Bool = false) {
        self.iconName = iconName
        self.label = label
        self.isCentralized = isCentralized
    }
        
    var body: some View {
        HStack {
            Image(systemName: iconName)
            Text(label)
            
            if !isCentralized {
                Spacer()
            }
        }
        .multilineTextAlignment(.leading)
    }
}

struct IconLabelView_Previews: PreviewProvider {
    static var previews: some View {
        IconPrefixedText(iconName: "building.2", label: "Brasília, Brazil")
    }
}

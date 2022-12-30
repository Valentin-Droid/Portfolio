//
//  LeadingText.swift
//  Portfolio
//
//  Created by Valentin Drelon on 30/12/2022.
//

import SwiftUI

struct LeadingText: View {
        
    let label: String
        
    init(_ label: String) {
        self.label = label
    }
    
    // MARK: Body
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
        }
    }
}

struct LeadingText_Previews: PreviewProvider {
    static var previews: some View {
        LeadingText("Testing preview")
    }
}

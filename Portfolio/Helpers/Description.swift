//
//  Description.swift
//  Portfolio
//
//  Created by Valentin Drelon on 16/12/2022.
//

import SwiftUI

struct Description: View {
    var body: some View {
        Text("Qui je sui :\nJe m'appelle Valentin Drelon je suis née à Brive-la-gaillard le 23-11-2001.\nMon parcour : \nJe suis détenteur d'un Baccalauréat Scientifique options science de l'ingénieur depuis 2018 au lycée Léonce Vieljeux à La Rochelle.\nJ'ai obtenu mon Brevet de Technicien supérieur en Système numérique informatique et réseau en 2022 à l'ICSSA à Niort. \nJe suis actuellement en Bachelor conception et développement d'application à l'ENI à Niort.")
            .opacity(0.7)
            .italic()
            .frame(width: 350, alignment: .leading)
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}

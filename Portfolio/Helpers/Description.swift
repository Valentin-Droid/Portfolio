//
//  Description.swift
//  Portfolio
//
//  Created by Valentin Drelon on 14/12/2022.
//

import SwiftUI

struct Description: View {
    var body: some View {
        ZStack {
            Text("Je m'appelle Valentin Drelon je suis née à Brive-la-gaillard le 23-11-2001. \n Mon parcoure : \n Je suis détenteur d'un Baccalauréat Scientifique options science de l'ingénieur depuis 2018 au lycée Léonce Vieljeux à La Rochelle. J'ai obtenue mon Brevet de Technicien supérieur en Système numérique informatique et réseau en 2022 à l'ICSSA à Niort. Je suis actuellement en Bachelor conception et développement d'application à l'ENI à Niort.")
        }
        .padding()
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}

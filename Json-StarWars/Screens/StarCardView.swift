//
//  StarCardView.swift
//  Json-StarWars
//
//  Created by Feliqe Silva on 28-06-25.
//

import SwiftUI

struct StarCardView: View {
    //constante sin inicializar
    let card: StarCard
    
    var body: some View {
        HStack {
            // campos de texto
            VStack(alignment: .leading) {
                Text(card.nombre)
                    .font(.headline)
                Text(card.raza)
                    .foregroundStyle(.secondary)
                Text(card.afiliacion.formatted(.list(type: .and)))
                    .font(.footnote)
            }
            Spacer()
            // campo de imagen
            Image(card.imagen)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    StarCardView(card: .test)
}

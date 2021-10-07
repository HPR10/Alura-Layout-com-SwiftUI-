//
//  CellViagemView.swift
//  Alura Viagens SwiftUI
//
//  Created by Hugo Pinheiro on 03/10/21.
//

import SwiftUI

struct CellViagemView: View {
    
    var viagem: Viagem
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
            
            // método para a imagem consumir todo espaço disponível
                .resizable()
                .frame(height: 125)
            
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CellViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CellViagemView(viagem: viagens[0])
            .previewLayout(.fixed(width: 400, height: 250))
    }
}

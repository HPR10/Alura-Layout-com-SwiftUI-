//
//  ContentView.swift
//  Alura Viagens SwiftUI
//
//  Created by Hugo Pinheiro on 28/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            // empilha os textos na vertical
            
            
            // Vstack Principal
            VStack {
                HeardView()
                    .frame(width: view.size.width, height: 200, alignment: .top)
                List(viagens) { viagem in
                    CellViagemView(viagem: viagem)
                }
            }
        }
        // método que preencher o background do topo da tela.
        .edgesIgnoringSafeArea(.all)
    }
}


// Estrutura responsável pela pré-visualização do código
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

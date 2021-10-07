//
//  HeardView.swift
//  Alura Viagens SwiftUI
//
//  Created by Hugo Pinheiro on 03/10/21.
//

import SwiftUI

struct HeardView: View {
    var body: some View {
        
        GeometryReader { view in
            
            VStack {
                
                // Vstack do Header
                VStack {
                    Text("Alura Viagens")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity,  alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                
                // Tamanho total da view principal
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avendir Medium", size: 17))
                            .foregroundColor(.white)
                            .background(Color.blue)
                        }
                        .frame(width: 100, height: 50)
                        
                        // Arredondamento de button
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    
                        .background(Color.blue)
                        .offset(x: 50)
                    
                        // método de espaçamento entre elementos
                        Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                                .font(.custom("Avendir Medium", size: 17))
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                        .background(Color.orange)
                        .offset(x: -50)
                }
                
                // Posicionar elementos com os eixos x e y
                .offset(y: -33)
                
            }
            
        }
    }
}

struct HeardView_Previews: PreviewProvider {
    static var previews: some View {
        HeardView()
            // Mostra apenas o que foi desenvolvido no hearder
            .previewLayout(.fixed(width: 500, height: 225))
    }
}

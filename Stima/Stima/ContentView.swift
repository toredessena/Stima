//
//  ContentView.swift
//  Stima
//
//  Created by salvatore dessena on 11/10/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var city: String = "Insert here..."
    @State private var region: String = "Provincia"
    @State private var houseAddress: String = "Via e numero civico"
    
    @State private var owner: String = "Sig."
    @State private var residenza: String = "Residente in"
    @State private var ownerAddress: String = "Via e numero civico"
   
    var body: some View {
        NavigationView {
            
            VStack {
                Form {
                    Section (header: Text("Dati generali dell'immobile").font(.headline)){
                        HStack  {
                            Image(systemName: "house.fill")
                            TextField("Cittaaaaa", text: $city)
                                .disableAutocorrection(true)
                                .foregroundColor(.blue)
                        }
                        
                        TextField("Provincia", text: $region)
                            .disableAutocorrection(true)
                        TextField("Niente", text: $houseAddress)
                            .disableAutocorrection(true)
                    }
                    Section (header: Text("Dati del proprietario").font(.headline)){
                        TextField("Nome e cognome", text: $owner)
                            .disableAutocorrection(true)
                        TextField("Città", text: $residenza)
                            .disableAutocorrection(true)
                        TextField("Via", text: $ownerAddress)
                            .disableAutocorrection(true)
                    }
                    
                        Image ("casa")
                            .resizable()
                            .frame(width: 120, height: 120, alignment: .center)
                            .clipShape(Circle())
                            .scaledToFit()
                         
                  
                }.navigationBarTitle("Estimator", displayMode: .large)
                              
                NavigationLink("Inizia", destination: StartValueView())
                Spacer()
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

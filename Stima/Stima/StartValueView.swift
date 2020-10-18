//
//  StartValueView.swift
//  Stima
//
//  Created by salvatore dessena on 12/10/2020.
//

import SwiftUI


struct StartValueView: View {
    
    @State private var floorSurface: Double = 1.00
    @State private var snr: Double = 0
    @State private var courts: Double = 0
    @State private var startValue: Double = 0.00
    
    
    var body: some View {
        
        NavigationView {
    VStack {
            Form {
                Section (header: Text ("Dati dell'immobile").font(.subheadline)) {
                Text("Superficie residenziale lorda").foregroundColor(.gray)
                Stepper (value: $floorSurface, in: 0...300, step: 1) {
                Text("Mq. \(floorSurface, specifier: "%g")").bold()
                }.padding(5)
                Text("Verande e affacci").foregroundColor(.gray)
                Stepper(value: $snr, in: 0...200, step: 1) {
                Text("Mq. \(snr, specifier: "%g")").bold()
                }.padding(5)
                Text("Cortili e pertinenze").foregroundColor(.gray)
                Stepper(value: $courts, in: 0...200, step: 1) {
                Text("Mq. \(courts, specifier: "%g")").bold()
                }.padding(5)
            }
                Section (header: Text("Valore di mercato nuove costruzioni").font(.subheadline)) {
                    Text("Costo al metro quadro finito").foregroundColor(.gray)
                    Stepper (value: $startValue, in: 0...10000, step: 50) {
                    Text("€. \(startValue, specifier: "%2g")").bold()
                    }
                }
        }
             
            VStack (alignment: .center){
                Text("Il valore di partenza per l'immobile è pari a:").padding(5)
                Text("€ \(calcolaValore(x: floorSurface, y: startValue, z: snr, k: courts), specifier: "%g") ").bold()
            }.padding()
            
            NavigationLink("Calcola il valore di Conservazione", destination: VcView())
                .foregroundColor(.blue)
                
            
            }.navigationBarTitle("Valore di Partenza")
           
        }
    }
}


func calcolaValore(x: Double, y: Double, z: Double, k: Double) -> Double {
    let s = x * y + z * y * 0.25 + k * y * 0.10
    return s
}





struct StartValueView_Previews: PreviewProvider {
    static var previews: some View {
        StartValueView()
    }
}

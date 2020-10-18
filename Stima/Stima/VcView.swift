//
//  VcView.swift
//  Stima
//
//  Created by salvatore dessena on 12/10/2020.
//

import SwiftUI

struct VcView: View {
    
    @State private var select = 0
    var livelli = ["Scarsa", "Mediocre", "Ordinaria", "Buona", "Eccellente"]
    
    
    var body: some View {
            
        NavigationView {

            VStack {
                Form {
                Section (header: Text("Fondazioni e Muri").foregroundColor(.green)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                    
                    Section (header: Text("Infissi").foregroundColor(.blue)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                    Section (header: Text("Solai").foregroundColor(.red)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                    Section (header: Text("Intonaci").foregroundColor(.gray)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                    Section (header: Text("Finiture e pavimenti").foregroundColor(.purple)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                    Section (header: Text("Impianti").foregroundColor(.orange)) {
                        Picker(selection: $select, label: Text("Qualità"))
                        {
                            ForEach(0..<livelli.count) {
                                Text(self.livelli[$0]).tag($0)
                            }
                        }
                    }
                }.navigationBarTitle(Text("Valore di Conservazione VC"), displayMode: .inline)
                
                Text("Il valore di conservazione è pari a € ")
                    .padding()
                
            }
            
        }
      
    }
}



struct VcView_Previews: PreviewProvider {
    static var previews: some View {
        VcView()
    }
}

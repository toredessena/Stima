//
//  VC2.swift
//  Stima
//
//  Created by salvatore dessena on 15/10/2020.
//

import SwiftUI

struct VC2: View {
    @State private var selectValue = 2
  
  
    enum Valori {
        case scarso , mediocre, ordinario, buono, ottimo
        
        func calcola () -> Double {
            switch self {
            case .scarso:
                return 0.25 * 0.80
            case .mediocre:
                return 0.25 * 0.90
            case .ordinario:
                return 0.25 * 1.00
            case .buono:
                return 0.25 * 1.10
            case .ottimo:
                return 0.25 * 1.20
            }
        }
    }
    
    let scarsone = Valori.scarso
    let mediocrone = Valori.mediocre
    let ordinarione = Valori.ordinario
    let buonone = Valori.buono
    let ottimone = Valori.ottimo
  
  
    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    Section (header: Text("fondazioni e muri")) {
                        Picker(selection: $selectValue, label: Text("Picker"), content: {
                            Text("\(scarsone)" as String).tag(0)
                            Text("\(mediocrone)" as String).tag(1)
                            Text("\(ordinarione)" as String).tag(2)
                            Text("\(buonone)" as String).tag(3)
                            Text("\(ottimone)" as String).tag(4)
                        })
                        Text ("VC Fondazioni € \(Valori.self) " as String)
                    }.pickerStyle(SegmentedPickerStyle())
                   
        }
        .navigationBarTitle(Text("Valore di conservazione VC"), displayMode: .inline)
        
            }
        }
    }
}




struct VC2_Previews: PreviewProvider {
    static var previews: some View {
        VC2()
    }
}

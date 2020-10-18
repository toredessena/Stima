//
//  HouseImage.swift
//  Stima
//
//  Created by salvatore dessena on 11/10/2020.
//

import SwiftUI

struct HouseImage: View {
    var body: some View {
        Image ("casa")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            .padding()
    }
}

struct HouseImage_Previews: PreviewProvider {
    static var previews: some View {
        HouseImage()
    }
}

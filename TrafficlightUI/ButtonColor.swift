//
//  ButtonColor.swift
//  TrafficlightUI
//
//  Created by Даниил Хантуров on 08.06.2021.
//

import SwiftUI

struct ButtonColor: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4))
        
    }
}


struct ButtonColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonColor(title: "START", action: {})
    }
}

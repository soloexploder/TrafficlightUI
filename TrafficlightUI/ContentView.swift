//
//  ContentView.swift
//  TrafficlightUI
//
//  Created by Даниил Хантуров on 02.06.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State var buttonTitle = "START"
    @State var currentLight = CurrentLight.red
    
    private func changeLight(){
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

extension ContentView{
    var body: some View{
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                ColorCircle(color: .red,opacity: currentLight == .red ? 1 : 0.3 )
                ColorCircle(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorCircle(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                ButtonColor(title: buttonTitle) {
                    if buttonTitle == "START"{
                        buttonTitle = "NEXT"
                    }
                    
                    changeLight()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  TrafficLightsSUI
//
//  Created by Владимир Падусов on 13.12.2020.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var red = ColorCircleView(color: .red)
    @State private var yellow = ColorCircleView(color: .yellow)
    @State private var green = ColorCircleView(color: .green)
    
    @State var currentLight = CurrentLight.red
    
    let turnOff = 0.3
    let turnOn = 1.0
    
    var body: some View {
        ZStack() {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15) {
                red
                yellow
                green
                Spacer()
                Button("Switch Light") {
                    switch currentLight {
                    case .red:
                        green.status = turnOff
                        red.status = turnOn
                        currentLight = .yellow
                    case .yellow:
                        red.status = turnOff
                        yellow.status = turnOn
                        currentLight = .green
                    case .green:
                        green.status = turnOn
                        yellow.status = turnOff
                        currentLight = .red
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



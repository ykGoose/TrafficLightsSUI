//
//  ColorCircleView.swift
//  TrafficLightsSUI
//
//  Created by Владимир Падусов on 13.12.2020.
//

import SwiftUI

struct ColorCircleView: View {
    var color: UIColor
    var status = 0.3
    
    var body: some View {
        Color(color)
            .opacity(status)
                .clipShape(Circle())
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}



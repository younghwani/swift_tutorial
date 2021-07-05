//
//  MyRotateButtonStyle.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import SwiftUI

struct MyRotateButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 25))
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .rotationEffect(configuration.isPressed ? .degrees(720) : .degrees(0))
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("hoho")
        })
        .buttonStyle(MyRotateButtonStyle(color: Color.blue))
    }
}

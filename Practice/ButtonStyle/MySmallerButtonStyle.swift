//
//  MySmallerButtonStyle.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import SwiftUI

struct MySmallerButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 25))
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("hoho")
        })
        .buttonStyle(MySmallerButtonStyle(color: Color.blue))
    }
}


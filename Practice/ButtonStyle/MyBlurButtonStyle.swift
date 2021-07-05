//
//  MyBlurButtonStyle.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import SwiftUI

struct MyBlurButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 25))
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .cornerRadius(10)
            .blur(radius: configuration.isPressed ? 20 : 0)
    }
}

struct MyBlurButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("hoho")
        })
        .buttonStyle(MyBlurButtonStyle(color: Color.blue))
    }
}


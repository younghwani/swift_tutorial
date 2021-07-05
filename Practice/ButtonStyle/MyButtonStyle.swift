//
//  MyButtonStyle.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
}

struct MyButtonStyle : ButtonStyle {
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 25))
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                if (self.type == .long) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("hoho")
        })
        .buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
    }
}

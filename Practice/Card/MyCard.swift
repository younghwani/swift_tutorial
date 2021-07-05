//
//  MyCard.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        HStack(spacing: 20) {
            
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            } //VStack
        } //HStack()
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Preview : PreviewProvider {
    static var previews: some View {
        MyCard(icon: "flag.fill", title: "깃발 들기", start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}


//
//  MyBasicCard.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyBasicCard : View {
    var body: some View {
        HStack(spacing: 20) {
            
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                
                Text("hahaha")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("hahaha")
                    .foregroundColor(.white)
            } //VStack
        } //HStack()
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Preview : PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}

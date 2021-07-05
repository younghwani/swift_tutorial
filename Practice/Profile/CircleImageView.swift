//
//  CircleImageView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 0, y: 10)
        
        Image("photo")
            .resizable()
            .scaledToFill()
//            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 2, x: 5, y: 10)
            .overlay(Circle()
                        .foregroundColor(.black)
                        .opacity(0.1))
            .overlay(Circle().strokeBorder(Color.yellow, lineWidth: 15).padding(0))
//            .overlay(Text("hi~")
//                        .foregroundColor(.white)
//                        .font(.system(size: 50))
//                        .fontWeight(.bold))
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
        
    }
}

struct CircleImageView_Previews : PreviewProvider {
    static var previews : some View {
        CircleImageView()
    }
}

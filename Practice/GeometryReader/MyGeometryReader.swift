//
//  MyGeometryReader.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View {
        
        GeometryReader { geometry in
            HStack(spacing: 0) {
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 4)
                    .foregroundColor(.white)
                    .background(Color.red)
                
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 4)
                    .foregroundColor(.white)
                    .background(Color.blue)
                
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 4)
                    .foregroundColor(.white)
                    .background(Color.green)
                
                Text("4")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 4)
                    .foregroundColor(.white)
                    .background(Color.purple)
                
            } //HStack
            .background(Color.yellow)
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        } //GeometyReader
        .background(Color.black)
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}

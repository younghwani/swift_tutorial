//
//  MyGeometryReaderVStack.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack : View {
    
    @State var index : Index = .one
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Button(action: {
                    print(String("1 clicked"))
                    
                    withAnimation {
                        self.index = .one
                    }
                    
                }, label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50, height: geometry.size.height/3, alignment: .center)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .background(Color.red)
                })
                
                Button(action: {
                    print("2 clicked")
                    
                    withAnimation {
                        self.index = .two
                    }
                    
                }, label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50, height: geometry.size.height/3, alignment: .center)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .background(Color.blue)
                })
                
                Button(action: {
                    print("3 clicked")
                    
                    withAnimation {
                        self.index = .three
                    }
                    
                }, label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 50, height: geometry.size.height/3, alignment: .center)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .background(Color.green)
                })
                
            } //VStack
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            
        } //GeometryReader
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
        
    } //body
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}

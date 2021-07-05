//
//  MyCustomButtonVIew.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/01.
//

import SwiftUI

struct MyCustomButtonView : View {
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            Button(action: {
                print("탭 button clicked")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(action: {
                print("롱탭 button clicked")
            }, label: {
                Text("롱탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.red, type: .long))
            
            Button(action: {
                print("회전탭 button clicked")
            }, label: {
                Text("회전탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyRotateButtonStyle(color: Color.green))
            
            Button(action: {
                print("축소탭 button clicked")
            }, label: {
                Text("축소탭")
                    .fontWeight(.bold)
            }).buttonStyle(MySmallerButtonStyle(color: Color.pink))
            
            Button(action: {
                print("블러탭 button clicked")
            }, label: {
                Text("블러탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyBlurButtonStyle(color: Color.black))
            
        }
        
    }
}


struct MyCustomButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomButtonView()
    }
}

//
//  MyTabVIew.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyTabView : View {
    var body: some View {
        
        
        TabView {
//            Text("1번")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title: "1번", bgColor: Color.red)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1")
                }
                .tag(0)
            
//            Text("2번")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title: "1번", bgColor: Color.orange)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2")
                }
                .tag(1)
            
//            Text("3번")
//                .font(.largeTitle)
//                .fontWeight(.black)
            MyView(title: "1번", bgColor: Color.blue)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3")
                }
                .tag(2)
            
        }
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

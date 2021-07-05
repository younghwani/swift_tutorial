//
//  MyProjectCard.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Rectangle().frame(height: 0)
            Text("Younghwani's Project")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM - 18 PM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack {
                Image("12")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 5).foregroundColor(.red))
                Image("17")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("95")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action:{
                    print("Button Clicked!")
                    
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림창입니다."))
                })
                 
            } //HStack
        } //VStack
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Preview : PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}

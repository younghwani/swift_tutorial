//
//  ToDoListExampleView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct ToDoListExample : View {
    
    @State var isNavigationBarHidden : Bool = false
    
//    // ios 14.5 bug 우회
//    private let defaultTag: Int = 8888
//    @State var destination: AnyView? = nil
//    @State var tag: Int? = nil
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottomTrailing) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack() {
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden),
                            label: {
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.gray)
                            })
                        
                        NavigationLink(destination: EmptyView()) {
                            EmptyView()
                        }
                        
                    } //HStack
                    .padding(20)
                    
                    Text("ToDo List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView {
                        VStack {
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "집 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "tv.fill", title: "영상 다시보기", start: "11 AM", end: "12 PM", bgColor: Color.red)
                            MyCard(icon: "cart.fill", title: "마트 장보기", start: "1 PM", end: "2 PM", bgColor: Color.green)
                            MyCard(icon: "gamecontroller.fill", title: "거지키우기 게임하기", start: "2 PM", end: "3 PM", bgColor: Color.secondary)
                        } //VStack
                        .padding()
                    } //ScrollView
                } //VStack
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
                    .offset(x: 0, y: -30)
            } //ZStack
            
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
        } //NavigationView
    } //body
}

struct ToDoListExample_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListExample()
    }
}

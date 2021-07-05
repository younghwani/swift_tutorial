//
//  MyProfileView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyProfileView : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView {
            VStack {
                
                CircleImageView()
                    .padding(.vertical, 20)
                
                Text("Younghwani")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                Spacer().frame(height: 20)
                Text("Profile Page")
                    .font(.system(size: 20))
                    .fontWeight(.black)
                
                VStack(spacing: 5) {
                    HStack {
                        NavigationLink(destination: MyWebview(urlToLoad: "https://younghwani.github.io").edgesIgnoringSafeArea(.all)){
                            Text("GitHub")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(20)
                        } //NavigationLink
                        NavigationLink(destination: MyWebview(urlToLoad: "https://howls-summarization-web.herokuapp.com").edgesIgnoringSafeArea(.all)){
                            Text("Summarize")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(20)
                        } //NavigationLink
                    } //HStack
                    .padding(30)
                    
                    HStack {
                        NavigationLink(
                            destination: PopupExample(),
                            label: {
                                Text("Popup Example Test")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            })
                    }
                }
                
                Spacer()
                
            } //VStack
        } //ScrollView
        .navigationBarTitle("내 프로필")
//        .navigationBarItems(trailing: NavigationLink(
//                                destination: Text("설정화면입니다.")
//                                    .font(.largeTitle)
//                                    .fontWeight(.black),
//                                label: {
//                                    Image(systemName: "gear")
//                                        .font(.largeTitle)
//                                        .foregroundColor(.gray)
//                                }))
        .navigationBarItems(trailing: NavigationLink(
                                destination: TextFieldExample(),
                                label: {
                                    Image(systemName: "gear")
                                        .font(.largeTitle)
                                        .foregroundColor(.gray)
                                }))
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}

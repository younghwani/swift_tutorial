//
//  PopupExample.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import ExytePopupView
import SwiftUI

struct PopupExample : View {
    
    @State var shouldBottomSolidMessage : Bool = false
    @State var shouldBottomToastMessage : Bool = false
    @State var shouldTopSolidMessage : Bool = false
    @State var shouldTopToastMessage : Bool = false
    @State var shouldPopupMessage : Bool = false
    
    func createBottomSolidMessage() -> some View {
        HStack(spacing: 10) {
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                Text("Information")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    
                Text("솔리드 메세지 입니다halsdghlqrghlarkgjlasdfadfasdfasdfasdfadljgohaoghlkjlkglkajskdfg")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Divider().opacity(0)
                
            } //VStack
        } //HStack
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        // 탭뷰 때문에 패딩 60만큼 추가함
        .padding(.bottom, 60)
        .background(Color.purple)
    }

    func createBottomToastMessage() -> some View {
        HStack(alignment: .top, spacing: 10) {
            Image("dog")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y: -3)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("My Dog")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    
                Text("토스트 메세지 입니다halsdghlqrghlarkgjlasdfadfasdfasdfasdfadljgohaoghlkjlkglkajskdfg")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Divider().opacity(0)
                
            } //VStack
        } //HStack
        .padding(15)
        .frame(width: 300)
        .background(Color.green)
        .cornerRadius(20)
        // 탭뷰 때문에 패딩 65만큼 추가함
        .padding(.bottom, 65)
    }
    
    func createTopSolidMessage() -> some View {
        HStack(spacing: 10) {
            Image("photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("Younghwani's Message")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    
                Text("텐서플로와 머신러닝으로 시작하는 자연어처리, 파이썬으로 만드는 인공지능, 로마사논고, 군주론, 토마스 홉스 리바이어던, 데이터베이스 시스템")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Divider().opacity(0)
                
            } //VStack
        } //HStack
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 35)
        .background(Color.blue)
    }
    
    func createTopToastMessage() -> some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "paperplane.fill")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .padding(.leading, 5)
            VStack(alignment: .leading, spacing: 2) {
                Text("Younghwani's Message")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                Text("오늘의 공부는 잘 진행하고 있는 중인가요?")
                    .font(.system(size: 14))
                    .lineLimit(1)
                    .foregroundColor(.white)
            } //VStack
            .padding(.trailing, 15)
        } //HStack
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.orange)
        .cornerRadius(25)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 25)
    }
    
    func createPopupMessage() -> some View {
        VStack(alignment: .center, spacing: 10) {
            Image("photo")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("Younghwani's Book List")
                .foregroundColor(.white)
                .fontWeight(.bold)
            Text("텐서플로와 머신러닝으로 시작하는 자연어처리\n파이썬으로 만드는 인공지능\n로마사논고\n군주론\n토마스 홉스 리바이어던\n데이터베이스 시스템")
                .font(.system(size: 12))
                .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1))
                .multilineTextAlignment(.center)
            Spacer().frame(height: 10)
            Button(action: {
                self.shouldPopupMessage = false
            }, label: {
                Text("Close")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            })
            .frame(width: 100, height: 40, alignment: .center)
            .background(Color.white)
            .cornerRadius(20)
        } //HStack
        .padding(.horizontal, 10)
        .frame(width: 300, height: 400)
        .background(Color(hexcode: "8227b0"))
        .cornerRadius(10)
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.13), radius: 10.0)
    }
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                                
                Button(action: {
                    self.shouldBottomSolidMessage = true
                }, label: {
                    Text("Bottom Solid")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldBottomToastMessage = true
                }, label: {
                    Text("Bottom Toast")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldTopSolidMessage = true
                }, label: {
                    Text("Top Solid")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldTopToastMessage = true
                }, label: {
                    Text("Top Toast")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldPopupMessage = true
                }, label: {
                    Text("Popup")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .cornerRadius(10)
                })
                                                                
            } //VStack
        } //ZStack
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $shouldBottomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomSolidMessage()
        })
        .popup(isPresented: $shouldBottomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomToastMessage()
        })
        .popup(isPresented: $shouldTopSolidMessage, type: .toast, position: .top, animation: .spring(), autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            createTopSolidMessage()
        })
        .popup(isPresented: $shouldTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            createTopToastMessage()
        })
        .popup(isPresented: $shouldPopupMessage, type: .default, position: .bottom, animation: .spring(), autohideIn: .none, dragToDismiss: false, closeOnTap: false, closeOnTapOutside: false, view: {
            createPopupMessage()
        })
    }
}

struct PopupExample_Previews: PreviewProvider {
    static var previews: some View {
        PopupExample()
    }
}

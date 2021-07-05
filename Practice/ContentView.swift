//
//  ContentView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

enum TabIndex2 {
    case toDo, qrCode
}

struct ContentView: View {
    
    @State var tabIndex : TabIndex2
    
    @State var largerScale : CGFloat = 1.4
    
//    func changeMyView(tabIndex: TabIndex2) -> View {
//        switch tabIndex {
//        case .toDo:
//            return ToDoListExample()
//        case .qrCode:
//            return QRCodeScannerExample()
//        default:
//            return ToDoListExample()
//        }
//    }
    
    func changeIconColor(tabIndex: TabIndex2) -> Color {
        switch tabIndex {
        case .toDo:
            return Color.green
        case .qrCode:
            return Color.purple
        default:
            return Color.green
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex2, geometry: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .toDo:
            return -(geometry.size.width/4)
        case .qrCode:
            return geometry.size.width/4
        default:
            return -(geometry.size.width/4)
        }
    }
    
    var body: some View {
        // 목표 : CustomTabView를 활용해서 각 Example 묶어서 넣기
        GeometryReader { geometry in
            
            ZStack(alignment: .bottom) {
                
//                self.changeMyView(tabIndex: self.tabIndex)
                if (tabIndex == .qrCode) {
                    QRCodeScannerExample()
                } else {
                    ToDoListExample()
                }
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry), y:  UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 5)
                    .foregroundColor(.white)
                
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        
                        Button(action: {
                            print("toDo")
                            withAnimation{
                                self.tabIndex = .toDo
                            }
                        }, label: {
                            Image(systemName: "list.bullet")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .toDo ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .toDo ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 2, height: 50)
                                .offset(y: self.tabIndex == .toDo ? -10 : 0)
                        }).background(Color.white)
                        
                        Button(action: {
                            print("QRCode")
                            withAnimation{
                                self.tabIndex = .qrCode
                            }
                            
                        }, label: {
                            Image(systemName: "qrcode")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .qrCode ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .qrCode ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 2, height: 50)
                                .offset(y: self.tabIndex == .qrCode ? -10 : 0)
                        }).background(Color.white)
                    } //HStack
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
                } //VStack
            } //ZStack
        } //GeometryReader
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabIndex: .toDo)
    }
}

//
//  MyList.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyList : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
//        List {
//            Text("My List")
//            Text("My List")
//            Text("My List")
//            Text("My List")
//        }
        
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("my list \($0)")
//            }
//        }
        
        List {
            
            Section(
                header: Text("오늘 할 일.")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer: Text("footer")
            ) {
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "flag.fill", title: "깃발 들기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.green).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10), background: Color.white)
                }
            }
//            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일.")
                    .font(.headline)
                    .foregroundColor(.black)
            ) {
                ForEach(1...20, id: \.self) { itemIndex in
                    MyCard(icon: "flag.fill", title: "깃발 들기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10), background: Color.yellow)
                }
            }
//            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        } //List
        .listStyle(GroupedListStyle())
//        .listStyle(PlainListStyle())
        .navigationBarTitle("내 목록")
        .navigationBarItems(
//                leading: Button(action: {
//                print("호호")
//                }, label: {
//                    Text("호호")
//            }),
            trailing: NavigationLink(
                destination: MyCustomButtonView(),
                label: {
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
                }
            )
        )
//        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
    } //NavigationView
}

//List 구분선 가리는 코드(유튜브 댓글 통해 공유 받음)
struct HideRowSeparatorModifier: ViewModifier {
    static let defaultListRowHeight: CGFloat = 44
    
    var insets: EdgeInsets
    var background: Color
    init(insets: EdgeInsets, background: Color){
        self.insets = insets
        
        var alpha: CGFloat = 0
        
        UIColor(background).getWhite(nil, alpha: &alpha)
        assert(alpha == 1, "")
        self.background = background
    }
    
    func body(content: Content) -> some View {
        content
            .padding(insets)
            .frame(
                minWidth: 0, maxWidth: .infinity, minHeight: Self.defaultListRowHeight,   alignment: .leading
            )
            .listRowInsets(EdgeInsets())
            .background(background)
    }
}
extension EdgeInsets{
    static let defaultListRowInsets = Self(top: 10, leading: 10, bottom: 10, trailing: 10)
}
extension View {
    func hideRowSeparator(insets: EdgeInsets = .defaultListRowInsets, background: Color = .white)
    -> some View {
        modifier(HideRowSeparatorModifier(insets: insets, background: background))
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}


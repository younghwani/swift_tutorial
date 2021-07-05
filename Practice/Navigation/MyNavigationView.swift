//
//  MyNavigationView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View {
        
        NavigationView {
            
//            Text("My Nav View")
            
            MyList()
                
            .navigationBarTitle("안녕하세요!")
//            .navigationBarTitle("안녕하세요!", displayMode: .automatic)
            .navigationBarItems(leading: Button(action: {
                print("호호")
                }, label: {
                    Text("호호")
                }),
                trailing: NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                    }
                )
            )
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}

//
//  TextFieldExample.swift
//  Practice
//
//  Created by kimyounghwan on 2021/07/04.
//

import SwiftUI

struct TextFieldExample : View {
    
    @State private var username : String = ""
    @State private var password : String = ""
    
    var body: some View {
        
        VStack(spacing: 10) {
            HStack {
                TextField("사용자 이름", text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.username = ""
                }, label: {
                    if (self.username.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                })
            }
            
            HStack {
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.password = ""
                }, label: {
                    if (self.password.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                })
            }
            
            Text("입력한 패스워드 : \(password)")
            
        }.padding(.horizontal, 50)
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}

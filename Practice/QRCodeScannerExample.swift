//
//  QRCodeScannerExample.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct QRCodeScannerExample: View {
    
    @State var isPresentingScanner = false
    @State var scannedCode: String?

    var body: some View {
        
        ZStack {
            
            if self.scannedCode != nil {
                MyWebview(urlToLoad: self.scannedCode!)
            } else {
                MyWebview(urlToLoad: "https://www.naver.com")
            }
            
            VStack {
                
                Spacer()
                
                Button(action: {
                    self.isPresentingScanner = true
                }, label: {
                    HStack {
                        Image(systemName: "qrcode.viewfinder")
                            .font(.system(size: 50))
                            .foregroundColor(.purple)
                            .padding(5)
                            .opacity(0.7)
                        
                        Text("QR Code 스캔하기")
                            .fontWeight(.bold)
                            .padding(.trailing, 5)
                    }
                    .padding(5)
                    .background(Color.yellow)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 5)
                    )
                    .opacity(0.8)
                })
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                .offset(x: 0, y: -60)
                                
                Spacer().frame(height: 30)
            } //VStack
        } //ZStack
        .cornerRadius(1.0)
        .edgesIgnoringSafeArea(.bottom)
    }

    var scannerSheet : some View {
        ZStack {
            
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
            
            QRCodeGuideLineView()
        }
    }
}


struct QRCodeScannerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExample()
        
    }
}

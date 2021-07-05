//
//  QRCodeGuideLineView.swift
//  Practice
//
//  Created by kimyounghwan on 2021/06/30.
//

import SwiftUI

struct QRCodeGuideLineView : View {
    var body: some View {
        GeometryReader { geometryProxy in
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryProxy.size.width/2, height: geometryProxy.size.width/2)
                .position(x: geometryProxy.size.width / 2, y: geometryProxy.size.height / 2)
                .foregroundColor(.yellow)
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}

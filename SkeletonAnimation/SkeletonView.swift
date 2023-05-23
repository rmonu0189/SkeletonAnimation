//
//  SkeletonView.swift
//  SkeletonAnimation
//
//  Created by Monu Rathor on 23/05/23.
//

import SwiftUI

struct SkeletonView: View {
    var cornerRadius: CGFloat = 2
    var startColor: Color = .gray
    var endColor: Color = .clear

    @State var startPoint: UnitPoint = .init(x: -1, y: 0.5)
    @State var endPoint: UnitPoint = .init(x: 0, y: 0.5)

    var body: some View {
        LinearGradient(colors: [startColor, endColor, startColor],
                       startPoint: startPoint,
                       endPoint: endPoint)
        .onAppear() {
            withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: false)) {
                startPoint = .init(x: 1.5, y: 0.5)
                endPoint = .init(x: 2.5, y: 0.5)
            }
        }
        .cornerRadius(cornerRadius)
    }
}

struct SkeletonView_Previews: PreviewProvider {
    static var previews: some View {
        SkeletonView()
    }
}

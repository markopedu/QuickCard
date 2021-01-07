//
//  BarView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct BarView: View {
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var label: String = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: width, height: height)
            Text(label)
                .font(.footnote)
                .rotationEffect(.degrees(-90))
                .offset(x: 0.0, y: 15.0)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(width: 0.0, height: 0.0, label: "")
    }
}

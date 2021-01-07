//
//  NavigationHeadingView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct NavigationHeadingView: View {
    let title = "Quick Card"
    
    var body: some View {
        Text("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text(title).font(.headline)
                        Text("Display employees").font(.subheadline).italic()
                    }.padding()
                }
            }
    }
}

struct NavigationHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeadingView()
    }
}

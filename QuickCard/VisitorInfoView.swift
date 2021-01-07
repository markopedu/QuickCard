//
//  VisitorInfoView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct VisitorInfoView: View {
    @State var user: User
    
    var body: some View {
        VStack {
            NavigationHeadingView()
            
            CardView(user: user)
            
            GeometryReader { proxy in
                HStack(alignment: .bottom) {
                    BarView(width: proxy.size.width * 0.16, height: CGFloat(user.visit.views), label: "Views")
                    BarView(width: proxy.size.width * 0.16, height: CGFloat(user.visit.events), label: "Events")
                    BarView(width: proxy.size.width * 0.16, height: CGFloat(user.visit.badges), label: "Badges")
                    BarView(width: proxy.size.width * 0.16, height: CGFloat(user.visit.actions), label: "Actions")
                    BarView(width: proxy.size.width * 0.16, height: CGFloat(user.visit.duration), label: "Duration")
                }.padding()
            }
        }
    }
}


struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user: User.testUser)
    }
}

//
//  VisitorInfoView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct VisitorInfoView: View {
    @State var user: User
    @State var isScaled = true
    @State var isChartHidden = true
    @State var isChartLoaded = false
    
    var body: some View {
        VStack {
            NavigationHeadingView()
            
            CardView(user: user)
                .padding()
                .scaleEffect(isScaled ? 1.2 : 1.0)
                .gesture(TapGesture()
                            .onEnded {
                                withAnimation(.easeInOut, {
                                    self.isScaled.toggle()
                                    self.isChartHidden.toggle()
                                })
                            })
                
            if !isChartHidden {
                GeometryReader { proxy in
                    HStack(alignment: .bottom) {
                        BarView(width: proxy.size.width * 0.16, height: isChartLoaded ? CGFloat(user.visit.views) : 0.0, label: "Views")
                        BarView(width: proxy.size.width * 0.16, height: isChartLoaded ? CGFloat(user.visit.events) : 0.0, label: "Events")
                        BarView(width: proxy.size.width * 0.16, height: isChartLoaded ? CGFloat(user.visit.badges) : 0.0, label: "Badges")
                        BarView(width: proxy.size.width * 0.16, height: isChartLoaded ? CGFloat(user.visit.actions) : 0.0, label: "Actions")
                        BarView(width: proxy.size.width * 0.16, height: isChartLoaded ? CGFloat(user.visit.duration) : 0.0, label: "Duration")
                    }.padding()
                }
                .animation(.easeInOut(duration: 0.8))
                .onAppear {
                    self.isChartLoaded = true
                }
                .onDisappear {
                    self.isChartLoaded = false
                }
                .transition(.move(edge: .bottom))
            } else {
                Spacer()
            }
            
        }
    }
}


struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user: User.testUser)
    }
}

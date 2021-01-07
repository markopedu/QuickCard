//
//  ContentView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                NavigationHeadingView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(User.users) { user in
                            NavigationLink(destination: VisitorInfoView(user: user)) {
                                CardView(user: user)
                                .padding(.vertical)
                                
                            }
                        }
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

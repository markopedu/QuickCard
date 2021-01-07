//
//  CardView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct CardView: View {
    @State var user: User
    
    let width: CGFloat = 300
    let height: CGFloat = 180
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("CardBackground"))
                .frame(width: width, height: height)
                .cornerRadius(20)
                .shadow(radius: 10)
            HStack {
                VStack(alignment: .leading) {
                    Text("\(user.firstName) \(user.lastName)")
                        .font(.title)
                    Text(user.title)
                        .italic()
                    Spacer()
                    ImageLabelView(imageName: "envelope.fill", text: .constant(user.email))
                    ImageLabelView(imageName: "link", text: .constant(user.companyUrl))
                    ImageLabelView(imageName: "location.fill", text: .constant(user.address))
                    
                }.padding()
                .foregroundColor(.white)
            }
        }.frame(width: width, height: height)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "test", lastName: "test", title: "test dev", email: "test@gmail.com", companyUrl: "test.com", address: "test street"))
    }
}

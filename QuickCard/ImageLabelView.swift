//
//  ImageLabelView.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import SwiftUI

struct ImageLabelView: View {
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName:imageName)
            .foregroundColor(.orange)
            Text(text)
        }
    }
}

struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(imageName: "envelope.fill", text: .constant("john.doe@gmail.com"))
    }
}

//
//  MapViewButton.swift
//  Uber SwiftUI App
//
//  Created by Agni Muhammad on 28/02/23.
//

import SwiftUI

struct MapViewButton: View {
    var body: some View {
        Button { 
            
        } label: { 
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(
                    color: .black,
                    radius: 6
                )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )

    }
}

struct MapViewButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewButton()
    }
}

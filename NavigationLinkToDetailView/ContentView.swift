//
//  ContentView.swift
//  NavigationLinkToDetailView
//
//  Created by ramil on 29.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct InfoView: Identifiable {
    var id: Int
    let name, image: String
}

struct ContentView: View {
    var infos: [InfoView] = [
        .init(id: 0, name: "Estonia", image: "estonia"),
        .init(id: 1, name: "Latvia", image: "latvia"),
        .init(id: 2, name: "Lithuania", image: "lithuania"),
        .init(id: 3, name: "Finland", image: "finland"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(infos, id: \.id) { info in
                    NavigationLink(destination: VStack(alignment: .leading) {
                        Image(info.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                        HStack {
                            Text(info.name)
                                .font(.headline)
                            Spacer()
                            Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                        }
                    }.padding()) {
                        
                        VStack(alignment: .leading) {
                            Image(info.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(12)
                            HStack {
                                Text(info.name)
                                    .font(.headline)
                                Spacer()
                                Image(systemName: "heart")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }.navigationBarTitle("Lands")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Simple_Table_View
//
//  Created by алтынпончик on 5/3/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
            List (tutors) { tutor in
                TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            HStack {
                Image(tutor.imageName)
                    .cornerRadius(40)
                VStack(alignment: .leading) {
                    Text(tutor.name)
                    Text(tutor.headline)
                        .font(.subheadline).foregroundColor(.gray)
                }
            }
        }.padding(.trailing, -30.0)
    }
}

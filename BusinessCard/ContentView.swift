//
//  ContentView.swift
//  BusinessCard
//
//  Created by Khue on 24/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.2, green: 0.6, blue: 0.86, opacity: 1)
                .ignoresSafeArea()
            VStack {
                //Name
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Khue Minh")
                    .font(.custom("Pacifico-Regular", size: 40))
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                //Information
                InfoView(text: "+84 123 456 789", imageName: "phone.fill")
                InfoView(text: "vngminhkhue@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

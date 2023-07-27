//
//  ContentView.swift
//  About_Me_App
//
//  Created by Scholar on 7/27/23.
//
// plan: name is ambur patel
// idk image is smth
// button will say "click here to learn more facts abt me"
// then text will appear with 3-4 bullet points
// idk blue-green theme?

import SwiftUI

struct ContentView: View {
    @State private var funFacts = ""
    @State private var quizTime = ""
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                Image("camping under stars")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                
                Text("Ambur Patel")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text(funFacts)
                Button("Click here to learn more about me!") {
                    funFacts = "- I love camping!\n- I love sci-fi media! \n- I'm a middle child!\n- I've been playing the flute for 6 years!"
                }
                
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.cyan)
            
        }
        .shadow(radius: 15)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//  ContentView.swift
//  Lab7
//
//  Created by Zhanibek on 20.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var index = 2
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color(.blue)
                
                Image("ball\(index)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .onTapGesture {
                        index = Int.random(in: 1...5)
                    }
                
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text("Ask Me Anything"), displayMode: .inline)
            
            
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

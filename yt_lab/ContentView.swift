//
//  ContentView.swift
//  yt_lab
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    var a: Int = 10;
    @State var text: String = "This is something"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Number a is equal to: " + String(a)).bold().font(.system(size: 23));
            
            Rectangle().size(/*@START_MENU_TOKEN@*/CGSize(width: 100.0, height: 100.0)/*@END_MENU_TOKEN@*/)
            
            TextField("Text goes here", text: $text)
            
            Button("Check") {
                guard let result = Functions().myFunc(text: text) else {
                    text = "Something went wrong"
                    return
                }
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}

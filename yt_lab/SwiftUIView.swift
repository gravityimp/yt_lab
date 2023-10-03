//
//  SwiftUIView.swift
//  yt_lab
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var newText: String = "This is a new text"
    
    var body: some View {
        VStack {
            Text("Select color")
            
            Text(newText).foregroundColor(.red).font(.largeTitle)
        }
    }
}

#Preview {
    SwiftUIView()
}

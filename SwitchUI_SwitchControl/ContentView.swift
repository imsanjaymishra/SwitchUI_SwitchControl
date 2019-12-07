//
//  ContentView.swift
//  SwitchUI_SwitchControl
//
//  Created by Sanjay Mishra on 08/12/19.
//  Copyright © 2019 Sanjay Mishra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSwitchToggled: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchToggled) {
             Text("Select The Option!!")
            }.padding()
            
            if isSwitchToggled {
                Image("Yes").resizable()
                    .frame(width: CGFloat(200), height: CGFloat(200), alignment: .center)
            } else {
                Image("No").resizable()
                .frame(width: CGFloat(200), height: CGFloat(200), alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

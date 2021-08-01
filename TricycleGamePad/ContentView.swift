//
//  ContentView.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(hex: "F8F2E6")
                .ignoresSafeArea()
            
            HStack {
                ZStack {
                    // Background
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    
                    DPadView(arrowSize: 5, padCornerRadius: 5, armThickness: 20)
                        .frame(maxWidth: 75, maxHeight: 75)
                }
                .frame(maxWidth: 125, maxHeight: 125)
                
                Spacer()
                
                TricycleView(circleSize: 15)
                
                Spacer()
                
                ZStack {
                    // Background
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    
                    ControlStickView()
                        .frame(maxWidth: 60, maxHeight: 60)
                }
                .frame(maxWidth: 125, maxHeight: 125)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


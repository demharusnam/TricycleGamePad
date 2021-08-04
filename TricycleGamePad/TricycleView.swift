//
//  TricycleView.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

struct TricycleView: View {
    var circleSize: CGFloat = 20
    
    var body: some View {
        VStack(spacing: 0) {
            Circle()
                .foregroundColor(Color(hex: "FF5555"))
                .frame(width: circleSize, height: circleSize)
            
            HStack(spacing: 0) {
                Circle()
                    .foregroundColor(Color(hex: "FFB738"))
                
                Spacer()
                
                Circle()
                    .foregroundColor(Color(hex: "00C13F"))
            }
            .frame(width: circleSize * 2 + 5, height: circleSize)
        }
        .frame(width: circleSize * 2 + 5)
        .accessibility(label: Text("Tricycle AI Logo"))
    }
}

struct TricycleView_Previews: PreviewProvider {
    static var previews: some View {
        TricycleView()
    }
}

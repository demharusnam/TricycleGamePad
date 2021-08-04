//
//  DPadView.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

// MARK: D-Pad View
/// The D-Pad.
struct DPadView: View {
    /// Size of each D-Pad arrow.
    @State var arrowSize: CGFloat = 7
    
    /// Corner radius of D-Pad arm.
    @State var padCornerRadius: CGFloat = 7
    
    /// Cross arm thickness.
    @State var armThickness: CGFloat = 25
    
    var body: some View {
        ZStack {
            Cross(thickness: armThickness, cornerRadius: padCornerRadius)
                .foregroundColor(Color(hex: "FFFEFF"))
                .shadow(color: .gray.opacity(0.25), radius: 5)
            
            VStack {
                Image(systemName: "arrowtriangle.up.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: arrowSize, height: arrowSize)
                    .padding(.vertical, 10)
                
                Spacer()
                
                HStack {
                    Image(systemName: "arrowtriangle.left.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: arrowSize, height: arrowSize)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    Image(systemName: "arrowtriangle.right.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: arrowSize, height: arrowSize)
                        .padding(.horizontal, 10)
                }
                
                Spacer()
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: arrowSize, height: arrowSize)
                    .padding(.vertical, 10)
            }
        }
        .accessibility(label: Text("A four-way directional pad (D-Pad)."))
    }
}

struct DPadView_Previews: PreviewProvider {
    static var previews: some View {
        DPadView()
    }
}

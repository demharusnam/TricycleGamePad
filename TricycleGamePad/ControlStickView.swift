//
//  ControlStickView.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

// MARK: Drag State
/// The drag-state of the control stick.
enum DragState {
    /// A `DragState` describing an inactive drag.
    case inactive
    
    /// A `DragState` describing an active drag.
    case dragging(drag: CGSize)
    
    /// The translation of an active drag.
    var translation: CGSize {
        switch self {
        case .inactive:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    
    /// Determines whether a tap or drag is active.
    var isActive: Bool {
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }
}

// MARK: Control Stick View
/// The control stick.
struct ControlStickView: View {
    /// The drag state of the control stick.
    @GestureState private var dragState: DragState = .inactive
    
    /// The possible drag offset range for the control stick.
    private let dragRange: ClosedRange<CGFloat> = -62.5...62.5
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(hex: "F1EEF1"))
            
            Circle()
                .stroke(Color(hex: "FFFEFF"), lineWidth: 10)
                .shadow(color: .gray.opacity(0.25), radius: 5)
        }
        .offset(dragState.translation)
        .gesture(
            DragGesture(minimumDistance: 5, coordinateSpace: .local)
                .updating($dragState) { value, state, _ in
                    if dragRange.contains(value.translation.height) && dragRange.contains(value.translation.width) {
                        state = .dragging(drag: value.translation)
                    }
                }
        )
        .scaleEffect(dragState.isActive ? 1.10 : 1)
        .animation(.easeIn)
    }
}

struct ControlStickView_Previews: PreviewProvider {
    static var previews: some View {
        ControlStickView()
    }
}

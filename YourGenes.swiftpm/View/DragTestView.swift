import SwiftUI
import UIKit

struct DragTestView: View {
    @State private var location: CGPoint = CGPoint(x: 50, y: 50)
    @GestureState private var isTapped = false
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
            .onEnded { value in
                print("ON")
                
            }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.pink)
                .frame(width: 100, height: 100)
                .position(location)
                .gesture(
                    simpleDrag
                )
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.pink)
                .frame(width: 100, height: 100)
        }
    }
}

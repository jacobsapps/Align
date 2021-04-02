import SwiftUI

public enum ViewAlignment {
    case left
    case centerX
    case right
    case top
    case centerY
    case bottom
}

public extension View {
    
    /// This modifier allows you to horizontally and vertically align views by adding spacers around it.
    ///
    func align(_ alignment: ViewAlignment) -> some View {
        Group {
            if alignment == .left {
                HStack {
                    self
                    Spacer()
                }
            }
            
            if alignment == .centerX {
                HStack {
                    Spacer()
                    self
                    Spacer()
                }
            }
            
            if alignment == .right {
                HStack {
                    Spacer()
                    self
                }
            }
            
            if alignment == .top {
                VStack {
                    self
                    Spacer()
                }
            }
            
            if alignment == .centerY {
                VStack {
                    Spacer()
                    self
                    Spacer()
                }
            }
            
            if alignment == .bottom {
                VStack {
                    Spacer()
                    self
                }
            }
        }
    }
}

struct AlignDemoView: View {

    var alignment: ViewAlignment

    var body: some View {
        Text("Hello, World!").align(alignment)
    }
}

struct AlignDemoView_Previews: PreviewProvider {

    private static var alignments: [(String, ViewAlignment)] = [
        ("Left", .left),
        ("CenterX", .centerX),
        ("Right", .right),
        ("Top", .top),
        ("CenterY", .centerY),
        ("Bottom", .bottom),
    ]

    static var previews: some View {
        ForEach(alignments, id: \.0) {
            AlignDemoView(alignment: $0.1)
                .previewDisplayName($0.0)
        }
    }
}

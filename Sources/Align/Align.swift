import SwiftUI

public enum ViewAlignment {
    case leading
    case centerX
    case trailing
    case top
    case centerY
    case bottom
}

public extension View {

    /// The `align` modifier allows you to horizontally and vertically align views using a simple syntax
    ///
    func align(_ alignment: ViewAlignment) -> some View {
        Group {
            if alignment == .leading {
                frame(maxWidth: .infinity, alignment: .leading)
            }

            if alignment == .centerX {
                frame(maxWidth: .infinity, alignment: .center)
            }

            if alignment == .trailing {
                frame(maxWidth: .infinity, alignment: .trailing)
            }
        
            if alignment == .top {
                frame(maxHeight: .infinity, alignment: .top)
            }

            if alignment == .centerY {
                frame(maxHeight: .infinity, alignment: .center)
            }
            
            if alignment == .bottom {
                frame(maxHeight: .infinity, alignment: .bottom)
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

    private static var alignments: [(name: String, alignment: ViewAlignment)] = [
        (name: "Leading", alignment: .leading),
        (name: "CenterX", alignment: .centerX),
        (name: "Trailing", alignment: .trailing),
        (name: "Top", alignment: .top),
        (name: "CenterY", alignment: .centerY),
        (name: "Bottom", alignment: .bottom),
    ]

    static var previews: some View {
        ForEach(alignments, id: \.name) {
            AlignDemoView(alignment: $0.alignment)
                .previewDisplayName($0.name)
        }
    }
}

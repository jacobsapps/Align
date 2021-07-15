# Align

Align gives you an easy way to align views in SwiftUI. 

Simply `import Align` in whichever SwiftUI file you like and you're good to go. Align supplies the simple `align` ViewModifier which you can add to any view.

To put your view on the leading edge, it's as simple as:
```
Text("Hello, world!").align(.leading)
```

There are 6 different alignments provided by the `ViewAlignment` enum:
```
leading
centerX
trailing
top
centerY
bottom
```

The implementation is quite simple - the `.align()` modifier applies a frame modifier with max width/height set to infinity (taking up all available space) and alignment set as part of this frame modifier.

Check out `Sources/Align/Align.swift` for the source code and to see SwiftUI previews for each alignment. 

My recommendation would be to just copy the source code directly into own project to avoid littering your code with `import Align`. If you do, I'd really appreciate a star on Github!  

Pull requests and constructive criticism welcome.

Contributors: 
- Jacob Bartlett (original author)
- u/lyinsteve who suggested an improvement to the alignment implementation

# Align

Align gives you an easy way to align views in SwiftUI. 

Simply `import Align` in whichever SwiftUI view you like and you're good to go. Align supplies the simple `align` ViewModifier which you can add to any view.


To put your view on the left, it's as simple as:
```
Text("Hello, world!").align(.left)
```

There are 6 different alignments provided by my `ViewAlignment` enum:
```
left
centerX
right
top
centerY
bottom
```

The way it works is by creating spacers in a VStack / HStack around your view to position it how you like.

This library is pretty simple at just one source file - check out `Sources/Align/Align.swift` for the code and SwiftUI previews for each alignment. 

I would honestly recommend just copying the source code directly your own project to avoid littering your code with `import Align`. If you do, I'd really appreciate a star on Github!  

Pull requests and constructive criticism welcome.

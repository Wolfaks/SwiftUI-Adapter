# SwiftUI-Adapter
**SwiftUI-Adapter** will help simplify interaction with new modifiers in SwiftUI, which are not available on older versions of the operating system. This will allow you to write less routine code and improve the readability of the project.

Now you don't need to check for the operating system version when using the new SwiftUI API, just use our modifier. All checks are hidden under the hood.
\
\
**Old code:**
```
if #available(iOS 15.0, macOS 12.0, *) {
  YourView()
    .badge(5)
} else {
  YourView()
}
```
\
**Code with SwiftUI-Adapter:**
```
YourView()
  .adapter.badge(5)
```
\
Agree, the new code is much more elegant and easier to read?
Now imagine how great it would be if you didn't have to add a bunch of these checks throughout the project. This is where our package will help you.

Plus, this will not affect the performance of your application in any way, since all operating system version checks in **SwiftUI-Adapter** are performed at the compilation stage.

# List of available modifiers

# Installation

**Swift Package Manager**
The [Swift Package Manager]([https://skillbox.ru/media/](https://www.swift.org/documentation/package-manager/)) is a tool for automating the distribution of Swift code and is integrated into the swift compiler.
\
\
Just add a new package to your project:\
https://github.com/Wolfaks/SwiftUI-Adapter
\
\
Then import the package in your code:
```
import SwiftUIAdapter

...

YourView()
  .adapter.badge(5)
```
\
🍏 **Subscribe to my telegram channel:**\
https://t.me/hardworkerIT


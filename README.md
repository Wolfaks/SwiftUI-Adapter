<img width="1664" height="829" alt="logo" src="https://github.com/user-attachments/assets/7b0470fd-2ca6-4e50-9189-6c97e18b824d" /><br><br>
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
Agree, the new code is much more elegant and easier to read.<br>
Now imagine how great it would be if you didn't have to add a bunch of these checks throughout the project. This is where our package will help you.

Plus, this will not affect the performance of your application in any way, since all operating system version checks in **SwiftUI-Adapter** are performed at the compilation stage.

# List of available modifiers for iOS

|Modifier|Description|Version|
|:-|:-:|-:|
|.animation(_:)|Applies the given animation to all animatable values within this view.|15|
|.badge(_:)|Generates a badge for the view from an integer value.|15|
|.badge(_:)|Generates a badge for the view from a text view.|15|
|.badge(_:)|Generates a badge for the view from a localized string key.|15|
|.badge<S>(_ :)|Generates a badge for the view from a string.|15|
|.interactiveDismissDisabled(_:)|Conditionally prevents interactive dismissal of presentations like popovers, sheets, and inspectors.|15|
|.onChange<V>(of:perform:)|Adds an action to perform when the given value changes.|15|
|.onSubmit(of:_)|Adds an action to perform when the user submits a value to this view.|15|
|.refreshable(action:)|Marks this view as refreshable.|15|
|.safeAreaInset<V>(edge:alignment:spacing:content:)|Shows the specified content above or below the modified view.|15|
|.searchable(text:placement:prompt:)|Marks this view as searchable, which configures the display of a search field.|15|
|.swipeActions<T>(edge:allowsFullSwipe:content:)|Adds custom swipe actions to a row in a list.|15|
|.task(priority:_)|Adds an asynchronous task to perform before this view appears.|15|
|.listRowSeparator(_:edges:)|Sets the display mode for the separator associated with this specific row.|15|
|.listRowSeparatorTint(_:edges:)|Sets the tint color associated with a row.|15|
|.listSectionSeparator(_:edges:)|Sets whether to hide the separator associated with a list section.|15|
|.listSectionSeparatorTint(_:edges:)|Sets the tint color associated with a section.|15|
|.backgroundStyle<S>(_:)|Sets the specified style to render backgrounds within the view.|16|
|.contentTransition(_:)|Modifies the view to use a given transition as its method of animating changes to the contents of its views.|16|
|.fontWidth(_:)|Sets the font width of the text in this view.|16|
|.toolbarRole(_:)|Configures the semantic role for the content populating the toolbar.|16|
|.scrollContentBackground(_:)|Specifies the visibility of the background for scrollable views within this view.|16|
|.tint<S>(_:)|Sets the tint within this view.|16|
|.presentationBackgroundInteraction(_:)|Controls whether people can interact with the view behind a presentation.|16.4|
|.presentationCompactAdaptation(_:)|Specifies how to adapt a presentation to compact size classes.|16.4|
|.presentationCornerRadius(_:)|Requests that the presentation have a specific corner radius.|16.4|
|.scrollBounceBehavior(_:axes:)|Configures the bounce behavior of scrollable views along the specified axis.|16.4|
|.presentationBackground<S>(_:)|Sets the presentation background of the enclosing sheet using a shape style.|16.4|
|.presentationBackground<V>(alignment:content:)|Sets the presentation background of the enclosing sheet to a custom view.|16.4|
|.allowedDynamicRange(_:)|Returns a new view configured with the specified allowed dynamic range.|17|
|.containerRelativeFrame(_:alignment:)|Positions this view within an invisible frame with a size relative to the nearest container.|17|
|.containerRelativeFrame(_:count:span:spacing:alignment:)|Positions this view within an invisible frame with a size relative to the nearest container.|17|
|.safeAreaPadding(_:)|Adds the provided insets into the safe area of this view.|17|
|.safeAreaPadding(_:)|Adds the provided insets into the safe area of this view.|17|
|.safeAreaPadding(_:_:)|Adds the provided insets into the safe area of this view.|17|
|.scrollPosition(id:anchor:)|Associates a binding to be updated when a scroll view within this view scrolls.|17|
|.scrollTargetLayout()|Configures the outermost layout as a scroll target layout.|17|
|.transaction(value:_:)|Applies the given transaction mutation function to all animations used within the view.|17|
|.allowsWindowActivationEvents(_:)|Configures whether gestures in this view hierarchy can handle events that activate the containing window.|18|
|.labelsVisibility(_:)|Controls the visibility of labels of any controls contained within this view.|18|
|.matchedTransitionSource(id:in:)|Identifies this view as the source of a navigation transition, such as a zoom transition.|18|
|.onScrollTargetVisibilityChange<ID>(idType:threshold:_:)|Adds an action to be called with information about what views would be considered visible.|18|
|.onScrollVisibilityChange(threshold:_)|Adds an action to be called when the view crosses the threshold to be considered on/off screen.|18|
|.presentationSizing(_:)|Sets the sizing of the containing presentation.|18|
|.sectionActions<Content>(content:)|Adds custom actions to a section.|18|
|.navigationTransitionZoom(sourceID:in:)|Sets the navigation transition style for this view.|18|
|.imagePlaygroundSheet(<br>  isPresented:sourceImage:onCompletion:onCancellation:<br>)|Presents the system sheet to create images from the specified input.|18.1|

# List of available modifiers for macOS

|Modifier|Description|Version|
|:-|:-:|-:|
|.animation(_:)|Applies the given animation to all animatable values within this view.|12|
|.badge(_:)|Generates a badge for the view from an integer value.|12|
|.badge(_:)|Generates a badge for the view from a text view.|12|
|.badge(_:)|Generates a badge for the view from a localized string key.|12|
|.badge<S>(_ :)|Generates a badge for the view from a string.|12|
|.interactiveDismissDisabled(_:)|Conditionally prevents interactive dismissal of presentations like popovers, sheets, and inspectors.|12|
|.onChange<V>(of:perform:)|Adds an action to perform when the given value changes.|12|
|.onSubmit(of:_)|Adds an action to perform when the user submits a value to this view.|12|
|.refreshable(action:)|Marks this view as refreshable.|12|
|.safeAreaInset<V>(edge:alignment:spacing:content:)|Shows the specified content above or below the modified view.|12|
|.searchable(text:placement:prompt:)|Marks this view as searchable, which configures the display of a search field.|12|
|.swipeActions<T>(edge:allowsFullSwipe:content:)|Adds custom swipe actions to a row in a list.|12|
.task(priority:_)|Adds an asynchronous task to perform before this view appears.|12|
|.backgroundStyle<S>(_:)|Sets the specified style to render backgrounds within the view.|13|
|.contentTransition(_:)|Modifies the view to use a given transition as its method of animating changes to the contents of its views.|13|
|.fontWidth(_:)|Sets the font width of the text in this view.|13|
|.listRowSeparator(_:edges:)|Sets the display mode for the separator associated with this specific row.|13|
|.listRowSeparatorTint(_:edges:)|Sets the tint color associated with a row.|13|
|.listSectionSeparator(_:edges:)|Sets whether to hide the separator associated with a list section.|13|
|.listSectionSeparatorTint(_:edges:)|Sets the tint color associated with a section.|13|
|.scrollContentBackground(_:)|Specifies the visibility of the background for scrollable views within this view.|13|
|.tint<S>(_:)|Sets the tint within this view.|13|
|.toolbarRole(_:)|Configures the semantic role for the content populating the toolbar.|13|
|.presentationBackground<S>(_:)|Sets the presentation background of the enclosing sheet using a shape style.|13.3|
|.presentationBackground<V>(alignment:content:)|Sets the presentation background of the enclosing sheet to a custom view.|13.3|
|.presentationBackgroundInteraction(_:)|Controls whether people can interact with the view behind a presentation.|13.3|
|.presentationCompactAdaptation(_:)|Specifies how to adapt a presentation to compact size classes.|13.3|
|.presentationCornerRadius(_:)|Requests that the presentation have a specific corner radius.|13.3|
|.scrollBounceBehavior(_:axes:)|Configures the bounce behavior of scrollable views along the specified axis.|13.3|
|.allowedDynamicRange(_:)|Returns a new view configured with the specified allowed dynamic range.|14|
|.containerRelativeFrame(_:alignment:)|Positions this view within an invisible frame with a size relative to the nearest container.|14|
|.containerRelativeFrame(_:count:span:spacing:alignment:)|Positions this view within an invisible frame with a size relative to the nearest container.|14|
|.safeAreaPadding(_:)|Adds the provided insets into the safe area of this view.|14|
|.safeAreaPadding(_:)|Adds the provided insets into the safe area of this view.|14|
|.safeAreaPadding(_:_:)|Adds the provided insets into the safe area of this view.|14|
|.scrollPosition(id:anchor:)|Associates a binding to be updated when a scroll view within this view scrolls.|14|
|.scrollTargetLayout()|Configures the outermost layout as a scroll target layout.|14|
|.transaction(value:_:)|Applies the given transaction mutation function to all animations used within the view.|14|
|.allowsWindowActivationEvents(_:)|Configures whether gestures in this view hierarchy can handle events that activate the containing window.|15|
|.labelsVisibility(_:)|Controls the visibility of labels of any controls contained within this view.|15|
|.matchedTransitionSource(id:in:)|Identifies this view as the source of a navigation transition, such as a zoom transition.|15|
|.onScrollTargetVisibilityChange<ID>(idType:threshold:_:)|Adds an action to be called with information about what views would be considered visible.|15|
|.onScrollVisibilityChange(threshold:_)|Adds an action to be called when the view crosses the threshold to be considered on/off screen.|15|
|.presentationSizing(_:)|Sets the sizing of the containing presentation.|15|
|.sectionActions<Content>(content:)|Adds custom actions to a section.|15|
|.imagePlaygroundSheet(<br>  isPresented:sourceImage:onCompletion:onCancellation:<br>)|Presents the system sheet to create images from the specified input.|15.1|

# Installation

**Swift Package Manager**
\
\
**Minimum requirements:** iOS 14 or macOS 11.
\
\
The [Swift Package Manager]([https://skillbox.ru/media/](https://www.swift.org/documentation/package-manager/)) is a tool for automating the distribution of Swift code and is integrated into the swift compiler.
<br><br>
1️⃣ Just add a new package to your project:<br>
https://github.com/Wolfaks/SwiftUI-Adapter
<br><br>
2️⃣ Then add the library to your target.<br>
<br>
3️⃣ Finally import the package in your code:
   
```
import SwiftUIAdapter

...

YourView()
  .adapter.badge(5)
```
\
🍏 **Subscribe to my telegram channel:**\
https://t.me/hardworkerIT


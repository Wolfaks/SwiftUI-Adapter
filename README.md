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

Plus, this will not affect the performance of your application in any way: each modifier performs a single lightweight `#available` check at runtime and returns the untouched view on older systems.

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
|.backgroundExtensionEffect()|This modifier will clip the view to prevent copies from overlapping with each other.|26|
|.buttonSizing(_:)|The preferred sizing behavior of buttons in the view hierarchy.|26|
|.containerCornerOffset(_:)|Adjusts the view's layout to avoid the container view's corner insets for the specified edges.|26|
|.glassButtonStyle()|Applies a glass effect to this button.|26|
|.glassEffect(_:)|Applies a glass effect to this view.|26|
|.glassEffectContainer(spacing:)|A view that combines multiple glass shapes into a single shape that can morph individual shapes into one another.|26|
|.glassEffectID(_:in:)|Associates an identity value to glass effects defined within this view.|26|
|.glassEffectTransition(_:)|Associates a glass effect transition with any glass effects defined within this view.|26|
|.glassEffectUnion(id:namespace:)|Associates any glass effects defined within this view to a union with the provided id.|26|
|.glassProminentButtonStyle()|Applies a glass prominent style to this button.|26|
|.listSectionMargins(_:_:)|Set the section margins for the specific edges.|26|
|.onOpenURL(prefersInApp:)|Sets an 'OpenURLAction' that prefers opening URL with an in-app browser.|26|
|.safeAreaBar(edge:alignment:spacing:)|Shows the specified content as a custom bar above or below the modified view.|26|
|.scrollEdgeEffectHidden(_:for:)|Hides any scroll edge effects for scroll views within this hierarchy.|26|
|.scrollEdgeEffectStyle(_:for:)|Configures the scroll edge effect style for scroll views within this hierarchy.|26|
|.sliderThumbVisibility(_:)|Sets the thumb visibility for Sliders within this view.|26|
|.symbolColorRenderingMode(_:)|Sets the color rendering mode for symbol images.|26|
|.symbolVariableValueMode(_:)|Sets the variable value mode mode for symbol images within this view.|26|
|.tabBarMinimizeBehavior(_:)|Sets the behavior for tab bar minimization.|26|
|.asyncImageURLSession(_:)|A modifier that adds a URL session for asynchronous images contained in the view to use when fetching image data.|27|
|.defaultTabBarPlacement(_:)|Specifies the preferred placement for the tabs of a tab view in the tab bar style on platforms where the tab bar cannot adapt between different representations, and only one representation can be shown.|27|
|.documentLaunchSubtitle(_:)|Sets the subtitle displayed beneath the title on the document launch card.|27|
|.documentLaunchTitle(_:)|Sets the title displayed on the document launch card.|27|
|.dragContainerSelection(_:containerNamespace:)|Provides multiple item selection support for drag containers.|27|
|.draggable(containerItemID:containerNamespace:)|Inside a drag container, activates this view as the source of a drag and drop operation. Supports lazy drag containers.|27|
|.ignoresSafeArea(_:edges:alignment:)|Expands the safe area of a view aligning content within the new bounds using the provided alignment.|27|
|.onLongPressGesture(minimumDuration:maximumDistance:inputKinds:perform:onPressingChanged:)|Adds an action to perform when this view recognizes a long press gesture.|27|
|.presentationPlacement(_:)|Sets the placement of a presentation within the presenting view.|27|
|.recordingEditor(_:)|Presents the recording editor for the given recording URL.|27|
|.swipeActions(edge:allowsFullSwipe:content:onPresentationChanged:)|Adds custom swipe actions to a row in a list or container, notifying you when the actions are revealed or dismissed.|27|
|.swipeActionsContainer()|Coordinates swipe action dismissal and mutual exclusion across rows in a container.|27|
|.textInputBorderShape(_:)|Sets the border shape for text input controls in the view hierarchy.|27|
|.toolbarOverflowMenu(content:)|Configures the overflow menu of a toolbar.|27|

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
|.task(priority:_)|Adds an asynchronous task to perform before this view appears.|12|
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
|.backgroundExtensionEffect()|This modifier will clip the view to prevent copies from overlapping with each other.|26|
|.buttonSizing(_:)|The preferred sizing behavior of buttons in the view hierarchy.|26|
|.containerCornerOffset(_:)|Adjusts the view's layout to avoid the container view's corner insets for the specified edges.|26|
|.dragContainerSelection(_:containerNamespace:)|Provides multiple item selection support for drag containers.|26|
|.draggable(containerItemID:containerNamespace:)|Inside a drag container, activates this view as the source of a drag and drop operation. Supports lazy drag containers.|26|
|.glassButtonStyle()|Applies a glass effect to this button.|26|
|.glassEffect(_:)|Applies a glass effect to this view.|26|
|.glassEffectContainer(spacing:)|A view that combines multiple glass shapes into a single shape that can morph individual shapes into one another.|26|
|.glassEffectID(_:in:)|Associates an identity value to glass effects defined within this view.|26|
|.glassEffectTransition(_:)|Associates a glass effect transition with any glass effects defined within this view.|26|
|.glassEffectUnion(id:namespace:)|Associates any glass effects defined within this view to a union with the provided id.|26|
|.glassProminentButtonStyle()|Applies a glass prominent style to this button.|26|
|.onOpenURL(prefersInApp:)|Sets an 'OpenURLAction' that prefers opening URL with an in-app browser.|26|
|.safeAreaBar(edge:alignment:spacing:)|Shows the specified content as a custom bar above or below the modified view.|26|
|.scrollEdgeEffectHidden(_:for:)|Hides any scroll edge effects for scroll views within this hierarchy.|26|
|.scrollEdgeEffectStyle(_:for:)|Configures the scroll edge effect style for scroll views within this hierarchy.|26|
|.sliderThumbVisibility(_:)|Sets the thumb visibility for Sliders within this view.|26|
|.symbolColorRenderingMode(_:)|Sets the color rendering mode for symbol images.|26|
|.symbolVariableValueMode(_:)|Sets the variable value mode mode for symbol images within this view.|26|
|.tabBarMinimizeBehavior(_:)|Sets the behavior for tab bar minimization.|26|
|.asyncImageURLSession(_:)|A modifier that adds a URL session for asynchronous images contained in the view to use when fetching image data.|27|
|.defaultTabBarPlacement(_:)|Specifies the preferred placement for the tabs of a tab view in the tab bar style on platforms where the tab bar cannot adapt between different representations, and only one representation can be shown.|27|
|.ignoresSafeArea(_:edges:alignment:)|Expands the safe area of a view aligning content within the new bounds using the provided alignment.|27|
|.onLongPressGesture(minimumDuration:maximumDistance:inputKinds:perform:onPressingChanged:)|Adds an action to perform when this view recognizes a long press gesture.|27|
|.presentationPlacement(_:)|Sets the placement of a presentation within the presenting view.|27|
|.recordingEditor(_:)|Presents the recording editor for the given recording URL.|27|
|.swipeActions(edge:allowsFullSwipe:content:onPresentationChanged:)|Adds custom swipe actions to a row in a list or container, notifying you when the actions are revealed or dismissed.|27|
|.swipeActionsContainer()|Coordinates swipe action dismissal and mutual exclusion across rows in a container.|27|
|.textInputBorderShape(_:)|Sets the border shape for text input controls in the view hierarchy.|27|

# Installation

**Swift Package Manager**
\
\
**Minimum deployment target:** iOS 14 or macOS 11 — your app can keep supporting these versions, and the modifiers for newer systems simply do nothing on them.
\
\
**Build requirement:** Xcode 27 or newer. The package references iOS 27 / macOS 27 SwiftUI APIs, so it can only be compiled with the iOS 27 SDK, even though your deployment target can stay on iOS 14 / macOS 11.
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


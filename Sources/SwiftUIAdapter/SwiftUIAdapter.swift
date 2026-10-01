//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import ImagePlayground
import SwiftUI

public struct SwiftUIAdapter<ContentView: View> {
  public let contentView: ContentView
}

// MARK: iOS 15 / macOS 12

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func animation(
    _ animation: Animation?
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .animation(animation)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func badge(
    _ count: Int
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(count)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func badge(
    _ label: Text?
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(label)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func badge(
    _ key: LocalizedStringKey?
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(key)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func badge<S>(
    _ label: S?
  ) -> some View where S: StringProtocol {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(label)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func interactiveDismissDisabled(
    _ isDisabled: Bool = true
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .interactiveDismissDisabled(isDisabled)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func onChange<V>(
    of: V,
    perform: @escaping (_ newValue: V) -> Void
  ) -> some View where V: Equatable {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .onChange(
          of: of,
          perform: perform
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func onSubmit(
    of: SwiftUIAdapterSubmitTriggers = .text,
    _ action: @escaping (() -> Void)
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .onSubmit(
          of: of.value,
          action
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func refreshable(
    action: @escaping @Sendable () async -> Void
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .refreshable(action: action)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func safeAreaInset<V>(
    edge: SwiftUIAdapterVerticalEdge,
    alignment: HorizontalAlignment = .center,
    spacing: CGFloat? = nil,
    @ViewBuilder content: () -> V
  ) -> some View where V : View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .safeAreaInset(
          edge: edge.value,
          alignment: alignment,
          content: content
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func searchable(
    text: Binding<String>,
    placement: SwiftUIAdapterSearchFieldPlacement = .automatic,
    prompt: LocalizedStringKey
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .searchable(
          text: text,
          placement: placement.value,
          prompt: prompt
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func swipeActions<T>(
    edge: SwiftUIAdapterHorizontalEdge = .trailing,
    allowsFullSwipe: Bool = true,
    @ViewBuilder content: () -> T
  ) -> some View where T: View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .swipeActions(
          edge: edge.value,
          allowsFullSwipe: allowsFullSwipe,
          content: content
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func task(
    priority: TaskPriority = .userInitiated,
    _ action: @escaping @Sendable () async -> Void
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .task(
          priority: priority,
          action
        )
    } else {
      contentView
    }
  }
  
#if os(iOS)
  @ViewBuilder public func listRowSeparator(
    _ visibility: SwiftUIAdapterVisibility,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(iOS 15.0, *) {
      contentView
        .listRowSeparator(
          visibility.value,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listRowSeparatorTint(
    _ color: Color?,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(iOS 15.0, *) {
      contentView
        .listRowSeparatorTint(
          color,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listSectionSeparator(
    _ visibility: SwiftUIAdapterVisibility,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(iOS 15.0, *) {
      contentView
        .listSectionSeparator(
          visibility.value,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listSectionSeparatorTint(
    _ color: Color?,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(iOS 15.0, *) {
      contentView
        .listSectionSeparatorTint(
          color,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
#endif
}

// MARK: iOS 16 / macOS 13

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func backgroundStyle<S>(
    _ style: S
  ) -> some View where S: ShapeStyle {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .backgroundStyle(style)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func contentTransition(
    _ transition: SwiftUIAdapterContentTransition
  ) -> some View {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .contentTransition(transition.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func fontWidth(
    _ width: SwiftUIAdapterFontWidth?
  ) -> some View {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .fontWidth(width?.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationBackgroundInteraction(
    _ interaction: SwiftUIAdapterPresentationBackgroundInteraction
  ) -> some View {
    if #available(iOS 16.4, macOS 13.3, *) {
      contentView
        .presentationBackgroundInteraction(interaction.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationCompactAdaptation(
    _ adaptation: SwiftUIAdapterPresentationAdaptation
  ) -> some View {
    if #available(iOS 16.4, macOS 13.3, *) {
      contentView
        .presentationCompactAdaptation(adaptation.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationCornerRadius(
    _ cornerRadius: CGFloat?
  ) -> some View {
    if #available(iOS 16.4, macOS 13.3, *) {
      contentView
        .presentationCornerRadius(cornerRadius)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollBounceBehavior(
    _ behavior: SwiftUIAdapterScrollBounceBehavior,
    axes: Axis.Set = [.vertical]
  ) -> some View {
    if #available(iOS 16.4, macOS 13.3, *) {
      contentView
        .scrollBounceBehavior(
          behavior.value,
          axes: axes
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func toolbarRole(
    _ role: SwiftUIAdapterToolbarRole
  ) -> some View {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .toolbarRole(role.value)
    } else {
      contentView
    }
  }
  
#if os(iOS)
  @ViewBuilder public func presentationBackground<S>(
    _ style: S
  ) -> some View where S: ShapeStyle {
    if #available(iOS 16.4, *) {
      contentView
        .presentationBackground(style)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationBackground<V>(
    alignment: Alignment = .center,
    @ViewBuilder content: () -> V
  ) -> some View where V : View {
    if #available(iOS 16.4, *) {
      contentView
        .presentationBackground(
          alignment: alignment,
          content: content
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollContentBackground(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(iOS 16.0, *) {
      contentView
        .scrollContentBackground(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func tint<S>(
    _ tint: S?
  ) -> some View where S: ShapeStyle {
    if #available(iOS 16.0, *) {
      contentView
        .tint(tint)
    } else {
      contentView
    }
  }
#endif
}

// MARK: iOS 17 / macOS 13

@MainActor extension SwiftUIAdapter {
#if os(iOS)
  @ViewBuilder public func scrollTargetLayout() -> some View {
    if #available(iOS 17.0, *) {
      contentView
        .scrollTargetLayout()
    } else {
      contentView
    }
  }
#endif
  
#if os(macOS)
  @ViewBuilder public func listRowSeparator(
    _ visibility: SwiftUIAdapterVisibility,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .listRowSeparator(
          visibility.value,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listRowSeparatorTint(
    _ color: Color?,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .listRowSeparatorTint(
          color,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listSectionSeparator(
    _ visibility: SwiftUIAdapterVisibility,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .listSectionSeparator(
          visibility.value,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listSectionSeparatorTint(
    _ color: Color?,
    edges: SwiftUIAdapterVerticalEdgeSet = .all
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .listSectionSeparatorTint(
          color,
          edges: edges.value
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationBackground<S>(
    _ style: S
  ) -> some View where S: ShapeStyle {
    if #available(macOS 13.3, *) {
      contentView
        .presentationBackground(style)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationBackground<V>(
    alignment: Alignment = .center,
    @ViewBuilder content: () -> V
  ) -> some View where V : View {
    if #available(macOS 13.3, *) {
      contentView
        .presentationBackground(
          alignment: alignment,
          content: content
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollContentBackground(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .scrollContentBackground(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func tint<S>(
    _ tint: S?
  ) -> some View where S: ShapeStyle {
    if #available(macOS 13.0, *) {
      contentView
        .tint(tint)
    } else {
      contentView
    }
  }
#endif
}

// MARK: iOS 17 / macOS 14

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func allowedDynamicRange(
    _ range: SwiftUIAdapterImageDynamicRange?
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .allowedDynamicRange(range?.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func containerRelativeFrame(
    _ axes: Axis.Set,
    alignment: Alignment = .center
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .containerRelativeFrame(
          axes,
          alignment: alignment
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func containerRelativeFrame(
    _ axes: Axis.Set,
    count: Int,
    span: Int = 1,
    spacing: CGFloat,
    alignment: Alignment = .center
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .containerRelativeFrame(
          axes,
          count: count,
          span: span,
          spacing: spacing,
          alignment: alignment
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func safeAreaPadding(
    _ insets: EdgeInsets
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .safeAreaPadding(insets)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func safeAreaPadding(
    _ length: CGFloat
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .safeAreaPadding(length)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func safeAreaPadding(
    _ edges: Edge.Set = .all,
    _ length: CGFloat? = nil
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .safeAreaPadding(
          edges,
          length
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollPosition(
    id: Binding<(some Hashable)?>,
    anchor: UnitPoint? = nil
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .scrollPosition(
          id: id,
          anchor: anchor
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func transaction(
    value: some Equatable,
    _ transform: @escaping (inout Transaction) -> Void
  ) -> some View {
    if #available(iOS 17.0, macOS 14.0, *) {
      contentView
        .transaction(
          value: value,
          transform
        )
    } else {
      contentView
    }
  }
  
#if os(macOS)
  @ViewBuilder public func scrollTargetLayout() -> some View {
    if #available(macOS 14.0, *) {
      contentView
        .scrollTargetLayout()
    } else {
      contentView
    }
  }
#endif
}

// MARK: iOS 18 / macOS 15

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func allowsWindowActivationEvents(
    _ value: Bool? = true
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .allowsWindowActivationEvents(value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func imagePlaygroundSheet(
    isPresented: Binding<Bool>,
    sourceImage: Image? = nil,
    onCompletion: @escaping (URL) -> Void,
    onCancellation: (() -> Void)? = nil
  ) -> some View {
    if #available(iOS 18.1, macOS 15.1, *) {
      if ImagePlaygroundViewController.isAvailable {
        contentView
          .imagePlaygroundSheet(
            isPresented: isPresented,
            sourceImage: sourceImage,
            onCompletion: onCompletion,
            onCancellation: onCancellation
          )
      } else {
        contentView
      }
    }
  }
  
  @ViewBuilder public func labelsVisibility(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .labelsVisibility(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func matchedTransitionSource(
    id: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .matchedTransitionSource(
          id: id,
          in: namespace
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func onScrollTargetVisibilityChange<ID>(
    idType: ID.Type,
    threshold: Double = 0.5,
    _ action: @escaping ([ID]) -> Void
  ) -> some View where ID: Hashable {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .onScrollTargetVisibilityChange(
          idType: idType,
          threshold: threshold,
          action
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func onScrollVisibilityChange(
    threshold: Double = 0.5,
    _ action: @escaping (Bool) -> Void
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .onScrollVisibilityChange(
          threshold: threshold,
          action
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func presentationSizing(
    _ sizing: SwiftUIAdapterPresentationSizing
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .presentationSizing(sizing.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func sectionActions<Content>(
    @ViewBuilder content: () -> Content
  ) -> some View where Content: View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView
        .sectionActions(content: content)
    } else {
      contentView
    }
  }
  
#if os(iOS)
  @ViewBuilder public func navigationTransitionZoom(
    sourceID: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
    if #available(iOS 18.0, *) {
      contentView
        .navigationTransition(
          .zoom(
            sourceID: sourceID,
            in: namespace
          )
        )
        .interactiveDismissDisabled()
    } else {
      contentView
    }
  }
#endif
}

// MARK: iOS 26 / macOS 26

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func backgroundExtensionEffect() -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .backgroundExtensionEffect()
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func buttonSizing(
    _ sizing: SwiftUIAdapterButtonSizing
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .buttonSizing(sizing.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func containerCornerOffset(
    _ edges: Edge.Set,
    sizeToFit: Bool = false
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .containerCornerOffset(
          edges,
          sizeToFit: sizeToFit
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassButtonStyle(
    fallbackStyle: some PrimitiveButtonStyle = DefaultButtonStyle()
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .buttonStyle(.glass)
    } else {
      contentView
        .buttonStyle(fallbackStyle)
    }
  }
  
  @ViewBuilder public func glassEffect(
    _ glass: SwiftUIAdapterGlass = .regular,
    in shape: some Shape
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .glassEffect(
          glass.value,
          in: shape
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassEffect(
    _ glass: SwiftUIAdapterGlass = .regular,
    in shape: some Shape,
    fallbackBackground: some ShapeStyle
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .glassEffect(
          glass.value,
          in: shape
        )
    } else if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .background(fallbackBackground, in: shape)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassEffectContainer(
    spacing: CGFloat? = nil
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      GlassEffectContainer(spacing: spacing) {
        contentView
      }
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassEffectID(
    _ id: (some Hashable & Sendable)?,
    in namespace: Namespace.ID
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .glassEffectID(
          id,
          in: namespace
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassEffectTransition(
    _ transition: SwiftUIAdapterGlassEffectTransition
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .glassEffectTransition(transition.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassEffectUnion(
    id: (some Hashable & Sendable)?,
    namespace: Namespace.ID
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .glassEffectUnion(
          id: id,
          namespace: namespace
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func glassProminentButtonStyle() -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .buttonStyle(.glassProminent)
    } else if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .buttonStyle(.borderedProminent)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func listSectionMargins(
    _ edges: Edge.Set = .all,
    _ length: CGFloat?
  ) -> some View {
    if #available(iOS 26.0, macOS 11, *) {
#if os(iOS)
      contentView
        .listSectionMargins(edges, length)
#else
      contentView
#endif
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func onOpenURL(
    prefersInApp: Bool
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .onOpenURL(prefersInApp: prefersInApp)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func safeAreaBar<V: View>(
    edge: SwiftUIAdapterVerticalEdge,
    alignment: HorizontalAlignment = .center,
    spacing: CGFloat? = nil,
    @ViewBuilder content: () -> V
  ) -> some View {
    if #available(iOS 26.0, macOS 26, *) {
      contentView
        .safeAreaBar(
          edge: edge.value,
          alignment: alignment,
          spacing: spacing,
          content: content
        )
    } else if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .safeAreaInset(
          edge: edge.value,
          alignment: alignment,
          spacing: spacing,
          content: content
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollEdgeEffectHidden(
    _ hidden: Bool = true,
    for edges: Edge.Set = .all
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .scrollEdgeEffectHidden(
          hidden,
          for: edges
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func scrollEdgeEffectStyle(
    _ style: SwiftUIAdapterScrollEdgeEffectStyle?,
    for edges: Edge.Set
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .scrollEdgeEffectStyle(
          style?.value,
          for: edges
        )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func sliderThumbVisibility(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .sliderThumbVisibility(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func symbolColorRenderingMode(
    _ mode: SwiftUIAdapterSymbolColorRenderingMode?
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .symbolColorRenderingMode(mode?.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func symbolVariableValueMode(
    _ mode: SwiftUIAdapterSymbolVariableValueMode?
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .symbolVariableValueMode(mode?.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func tabBarMinimizeBehavior(
    _ behavior: SwiftUIAdapterTabBarMinimizeBehavior
  ) -> some View {
    if #available(iOS 26.0, macOS 26.0, *) {
      contentView
        .tabBarMinimizeBehavior(behavior.value)
    } else {
      contentView
    }
  }
}

//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import ImagePlayground
import SwiftUI

public struct SwiftUIAdapter<ContentView: View> {
  public let contentView: ContentView
}

// MARK: iOS 15 / macOS 12

@MainActor extension SwiftUIAdapter {
  @ViewBuilder func badge(
    _ count: Int
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(count)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func badge(
    _ label: Text?
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(label)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func badge(
    _ key: LocalizedStringKey?
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(key)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func badge<S>(
    _ label: S?
  ) -> some View where S: StringProtocol {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .badge(label)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func interactiveDismissDisabled(
    _ isDisabled: Bool = true
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .interactiveDismissDisabled(isDisabled)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func onChange<V>(
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
  
  @ViewBuilder func onSubmit(
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
  
  @ViewBuilder func refreshable(
    action: @escaping @Sendable () async -> Void
  ) -> some View {
    if #available(iOS 15.0, macOS 12.0, *) {
      contentView
        .refreshable(action: action)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func searchable(
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
  
  @ViewBuilder func swipeActions<T>(
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
  
  @ViewBuilder func task(
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
  @ViewBuilder func listRowSeparator(
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
  
  @ViewBuilder func listRowSeparatorTint(
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
  
  @ViewBuilder func listSectionSeparator(
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
  
  @ViewBuilder func listSectionSeparatorTint(
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
  @ViewBuilder func backgroundStyle<S>(
    _ style: S
  ) -> some View where S: ShapeStyle {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .backgroundStyle(style)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func fontWidth(
    _ width: SwiftUIAdapterFontWidth?
  ) -> some View {
    if #available(iOS 16.0, macOS 13.0, *) {
      contentView
        .fontWidth(width?.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func toolbarRole(
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
  @ViewBuilder func scrollContentBackground(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(iOS 16.0, *) {
      contentView
        .scrollContentBackground(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func tint<S>(
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
  @ViewBuilder public func contentTransition(
    _ transition: SwiftUIAdapterContentTransition
  ) -> some View {
    if #available(iOS 17.0, macOS 13.0, *) {
      contentView
        .contentTransition(transition.value)
    } else {
      contentView
    }
  }
  
#if os(macOS)
  @ViewBuilder func listRowSeparator(
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
  
  @ViewBuilder func listRowSeparatorTint(
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
  
  @ViewBuilder func listSectionSeparator(
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
  
  @ViewBuilder func listSectionSeparatorTint(
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
  
  @ViewBuilder func scrollContentBackground(
    _ visibility: SwiftUIAdapterVisibility
  ) -> some View {
    if #available(macOS 13.0, *) {
      contentView
        .scrollContentBackground(visibility.value)
    } else {
      contentView
    }
  }
  
  @ViewBuilder func tint<S>(
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

// MARK: iOS 18 / macOS 15

@MainActor extension SwiftUIAdapter {
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
  
  @ViewBuilder public func matchedTransitionSource(
    id: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
    if #available(iOS 18.0, macOS 15.0, *) {
      contentView.matchedTransitionSource(
        id: id,
        in: namespace
      )
    } else {
      contentView
    }
  }
  
  @ViewBuilder public func navigationTransitionZoom(
    sourceID: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
#if os(iOS)
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
#else
    contentView
#endif
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
}

//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import ImagePlayground
import SwiftUI

public struct SwiftUIAdapter<ContentView: View> {
  public let content: ContentView
  
  public init(
    _ content: ContentView
  ) {
    self.content = content
  }
}

// MARK: iOS 17 / macOS 13

@MainActor extension SwiftUIAdapter {
  public enum SwiftUIAdapterContentTransition {
    case identity
    case numericText
    case opacity
  }
  
  
  @ViewBuilder public func contentTransition(
    _ transition: SwiftUIAdapterContentTransition
  ) -> some View {
#if os(iOS)
    if #available(iOS 17.0, *) {
      switch transition {
      case .identity:
        content.contentTransition(.identity)
      case .opacity:
        content.contentTransition(.opacity)
      case .numericText:
        content.contentTransition(.numericText())
      }
    } else {
      content
    }
#elseif os(macOS)
    if #available(macOS 13.0, *) {
      switch transition {
      case .identity:
        content.contentTransition(.identity)
      case .numericText:
        content.contentTransition(.numericText())
      case .opacity:
        content.contentTransition(.opacity)
      }
    } else {
      content
    }
#else
    content
#endif
  }
}

// MARK: iOS 18 / macOS 15

@MainActor extension SwiftUIAdapter {
  public enum SwiftUIAdapterPresentationSizing {
    case form
  }
  
  @ViewBuilder public func presentationSizing(
    _ sizing: SwiftUIAdapterPresentationSizing
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
      switch sizing {
      case .form:
        content.presentationSizing(.form)
      }
    } else {
      content
    }
#elseif os(macOS)
    if #available(macOS 15.0, *) {
      switch sizing {
      case .form:
        content.presentationSizing(.form)
      }
    } else {
      content
    }
#else
    content
#endif
  }
  
  @ViewBuilder public func navigationTransitionZoom(
    sourceID: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
      content
        .navigationTransition(
          .zoom(
            sourceID: sourceID,
            in: namespace
          )
        )
        .interactiveDismissDisabled()
    } else {
      content
    }
#else
    content
#endif
  }
  
  @ViewBuilder public func matchedTransitionSource(
    id: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
      content.matchedTransitionSource(
        id: id,
        in: namespace
      )
    } else {
      content
    }
#elseif os(macOS)
    if #available(macOS 15.0, *) {
      content.matchedTransitionSource(
        id: id,
        in: namespace
      )
    } else {
      content
    }
#else
    content
#endif
  }
  
  @ViewBuilder public func imagePlaygroundSheet(
    isPresented: Binding<Bool>,
    sourceImage: Image? = nil,
    onCompletion: @escaping (URL) -> Void,
    onCancellation: (() -> Void)? = nil
  ) -> some View {
#if os(iOS)
    if #available(iOS 18.1, *) {
      if ImagePlaygroundViewController.isAvailable {
        content
          .imagePlaygroundSheet(
            isPresented: isPresented,
            sourceImage: sourceImage,
            onCompletion: onCompletion,
            onCancellation: onCancellation
          )
      } else {
        content
      }
    } else {
      content
    }
#elseif os(macOS)
    if #available(macOS 15.1, *) {
      if ImagePlaygroundViewController.isAvailable {
        content
          .imagePlaygroundSheet(
            isPresented: isPresented,
            sourceImage: sourceImage,
            onCompletion: onCompletion,
            onCancellation: onCancellation
          )
      } else {
        content
      }
    } else {
      content
    }
#else
    content
#endif
  }
}

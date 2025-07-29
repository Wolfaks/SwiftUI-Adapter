//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import ImagePlayground
import SwiftUI

public struct SwiftUIAdapter<ContentView: View> {
  public let contentView: ContentView
}

// MARK: iOS 17 / macOS 13

@MainActor extension SwiftUIAdapter {
  @ViewBuilder public func contentTransition(
    _ transition: SwiftUIAdapterContentTransition
  ) -> some View {
#if os(iOS)
    if #available(iOS 17.0, *) {
      switch transition {
      case .identity:
        contentView.contentTransition(.identity)
      case .opacity:
        contentView.contentTransition(.opacity)
      case .numericText:
        contentView.contentTransition(.numericText())
      }
    } else {
      contentView
    }
#elseif os(macOS)
    if #available(macOS 13.0, *) {
      switch transition {
      case .identity:
        contentView.contentTransition(.identity)
      case .numericText:
        contentView.contentTransition(.numericText())
      case .opacity:
        contentView.contentTransition(.opacity)
      }
    } else {
      contentView
    }
#else
    contentView
#endif
  }
}

// MARK: iOS 18 / macOS 15

@MainActor extension SwiftUIAdapter {  
  @ViewBuilder public func presentationSizing(
    _ sizing: SwiftUIAdapterPresentationSizing
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
      switch sizing {
      case .form:
        contentView.presentationSizing(.form)
      }
    } else {
      contentView
    }
#elseif os(macOS)
    if #available(macOS 15.0, *) {
      switch sizing {
      case .form:
        contentView.presentationSizing(.form)
      }
    } else {
      contentView
    }
#else
    contentView
#endif
  }
  
  @ViewBuilder public func navigationTransitionZoom(
    sourceID: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
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
  
  @ViewBuilder public func matchedTransitionSource(
    id: some Hashable,
    in namespace: Namespace.ID
  ) -> some View {
#if os(iOS)
    if #available(iOS 18, *) {
      contentView.matchedTransitionSource(
        id: id,
        in: namespace
      )
    } else {
      contentView
    }
#elseif os(macOS)
    if #available(macOS 15.0, *) {
      contentView.matchedTransitionSource(
        id: id,
        in: namespace
      )
    } else {
      contentView
    }
#else
    contentView
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
    } else {
      contentView
    }
#elseif os(macOS)
    if #available(macOS 15.1, *) {
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
    } else {
      contentView
    }
#else
    contentView
#endif
  }
}

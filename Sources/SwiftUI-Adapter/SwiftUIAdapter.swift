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
    if #available(iOS 17.0, macOS 13.0, *) {
      contentView
        .contentTransition(transition.value)
    } else {
      contentView
    }
  }
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

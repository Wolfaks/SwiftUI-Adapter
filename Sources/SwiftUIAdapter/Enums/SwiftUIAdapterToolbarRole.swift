//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterToolbarRole {
  case automatic
  
  @available(macOS, unavailable)
  case browser
  
  @available(iOS, introduced: 15.0)
  @available(macOS, introduced: 12.0)
  case editor
  
  @available(macOS, unavailable)
  case navigationStack
  
  @available(iOS 16.0, macOS 13.0, *)
  public var value: ToolbarRole {
    switch self {
    case .automatic:
      return .automatic
    case .browser:
#if os(macOS)
      fatalError("Browser role is unavailable on macOS")
#else
      return .browser
#endif
    case .editor:
      return .editor
    case .navigationStack:
#if os(macOS)
      fatalError("NavigationStack role is unavailable on macOS")
#else
      return .navigationStack
#endif
    }
  }
}

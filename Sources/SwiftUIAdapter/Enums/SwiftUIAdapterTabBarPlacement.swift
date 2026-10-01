//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterTabBarPlacement {
  case automatic
  
  @available(macOS, unavailable)
  case sidebar
  
  case tabBar
  
  @available(iOS 18.0, macOS 15.0, *)
  public var value: AdaptableTabBarPlacement {
    switch self {
    case .automatic:
      return .automatic
    case .sidebar:
#if os(macOS)
      fatalError("Sidebar placement is unavailable on macOS")
#else
      return .sidebar
#endif
    case .tabBar:
      return .tabBar
    }
  }
}

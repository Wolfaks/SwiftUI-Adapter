//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterTabBarMinimizeBehavior {
  case automatic
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: TabBarMinimizeBehavior {
    switch self {
    case .automatic: .automatic
    }
  }
}

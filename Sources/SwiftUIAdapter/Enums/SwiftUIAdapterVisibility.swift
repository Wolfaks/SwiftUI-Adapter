//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterVisibility {
  case automatic
  case hidden
  case visible
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: Visibility {
    switch self {
    case .automatic: .automatic
    case .hidden: .hidden
    case .visible: .visible
    }
  }
}

//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterSearchFieldPlacement {
  case automatic
  case toolbar
  case sidebar
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: SearchFieldPlacement {
    switch self {
    case .automatic: .automatic
    case .sidebar: .sidebar
    case .toolbar: .toolbar
    }
  }
}

//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterVerticalEdge {
  case top
  case bottom
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: VerticalEdge {
    switch self {
    case .top: .top
    case .bottom: .bottom
    }
  }
}

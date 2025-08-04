//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterVerticalEdgeSet {
  case all
  case bottom
  case top
  
  @available(iOS 15.0, macOS 12.0, *)
  var value: VerticalEdge.Set {
    switch self {
    case .all: .all
    case .bottom: .bottom
    case .top: .top
    }
  }
}

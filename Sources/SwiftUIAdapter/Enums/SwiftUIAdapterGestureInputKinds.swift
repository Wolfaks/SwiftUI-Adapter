//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterGestureInputKinds {
  case all
  case directTouch
  case indirectTouch
  case pencil
  case pointer
  
  @available(iOS 27.0, macOS 27.0, *)
  var value: GestureInputKinds {
    switch self {
    case .all: .all
    case .directTouch: .directTouch
    case .indirectTouch: .indirectTouch
    case .pencil: .pencil
    case .pointer: .pointer
    }
  }
}

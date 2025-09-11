//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterSymbolVariableValueMode {
  case color
  case draw
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: SymbolVariableValueMode {
    switch self {
    case .color: .color
    case .draw: .draw
    }
  }
}

//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterSymbolColorRenderingMode {
  case flat
  case gradient
  
  @available(iOS 26.0, macOS 26.0, *)
  var value: SymbolColorRenderingMode {
    switch self {
    case .flat: .flat
    case .gradient: .gradient
    }
  }
}

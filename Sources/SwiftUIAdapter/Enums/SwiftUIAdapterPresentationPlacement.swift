//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public enum SwiftUIAdapterPresentationPlacement {
  case automatic
  case center
  case leading
  case trailing
  
  @available(iOS 27.0, macOS 27.0, *)
  var value: PresentationPlacement {
    switch self {
    case .automatic: .automatic
    case .center: .center
    case .leading: .leading
    case .trailing: .trailing
    }
  }
}

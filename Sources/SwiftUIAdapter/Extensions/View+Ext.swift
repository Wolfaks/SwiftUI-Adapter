//  Created by Мобильный трудоголик: https://t.me/hardworkerIT

import SwiftUI

public extension View {
  var adapter: SwiftUIAdapter<Self> {
    SwiftUIAdapter(
      contentView: self
    )
  }
}

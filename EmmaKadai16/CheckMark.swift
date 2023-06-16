//
//  CheckMark.swift
//  EmmaKadai16
//
//  Created by Hitomi Ishiodori on 2023/06/16.
//

import SwiftUI

struct CheckMark: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(.orange)
    }
}

struct CheckMark_Previews: PreviewProvider {
    static var previews: some View {
        CheckMark()
    }
}

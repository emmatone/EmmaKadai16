//
//  EditIcon.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct EditIcon: View {
    var body: some View {
        Image(systemName: "info.circle")
            .padding(10)
            .foregroundColor(.blue)
            .contentShape(Rectangle())
    }
}

struct EditIcon_Previews: PreviewProvider {
    static var previews: some View {
        EditIcon()
    }
}

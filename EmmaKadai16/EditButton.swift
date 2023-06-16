//
//  EditButton.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        Image(systemName: "info.circle")
            .padding(10)
            .foregroundColor(.blue)
            .contentShape(Rectangle())
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}

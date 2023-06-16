//
//  SubTitle.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct SubTitle: View {
    var body: some View {
        Text("既存の項目の名前を変更できる機能")
            .font(.headline)
            .padding(.bottom, 15)
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity)
            .background(.teal.opacity(0.2))
    }
}

struct SubTitle_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            SubTitle()
            Spacer()
        }
    }
}

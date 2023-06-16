//
//  FruitEditorView.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct FruitEditorView: View {
    @EnvironmentObject var fruits: Fruits
    @Environment(\.dismiss) var dismiss
    @Binding var isAdd: Bool
    @State var newFruitName: String = ""
    let currentFruit: Fruit?

    var body: some View {
        NavigationStack {
            HStack {
                Text("名前")
                    .padding(.trailing, 20)
                TextField("", text: $newFruitName)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(50)
            Spacer()
                .navigationTitle(isAdd ? "新規フルーツを登録" : "フルーツを更新")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(Color.teal.opacity(0.2), for: .navigationBar)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Save") {
                            if isAdd {
                                _ = fruits.addNewFruitIfPossible(newFruitName)
                            } else {

                                guard let item = currentFruit else {
                                    return
                                }
                                _ = fruits.updateFruitNameIfPossible(item, newFruitName: newFruitName)
                            }
                            dismiss()
                        }
                    }
                }
        }
        .onAppear(perform: {
            guard let item = currentFruit  else {
                return newFruitName = ""
            }
            return newFruitName = item.name
        })
    }
}

struct FruitEditorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitEditorView(isAdd: .constant(true), currentFruit: nil)
                .environmentObject(Fruits())
            FruitEditorView(isAdd: .constant(false), currentFruit: Fruits().fruitsData[0])
                .environmentObject(Fruits())
        }
    }
}

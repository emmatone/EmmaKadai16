//
//  ContentView.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fruits: Fruits
    // 編集する果物という名称に変更
    @State private var fruitToEdit: Fruit?
    @State private var isAdd: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                SubTitle()
                // MARK: - List
                List(fruits.fruitsData) { fruit in
                    HStack {
                        // MARK: - チェックマークと果物名
                        FruitRow(fruit: fruit)
                            .onTapGesture {
                                _ = fruits.toggleIsCheckedIfPossible(fruit)
                            }
                        // MARK: - フルーツ名更新アイコン
                        EditIcon()
                            .onTapGesture {
                                fruitToEdit = fruit
                            }
                    }
                }
                .listStyle(.inset)
                // MARK: - 既存フルーツ更新View
                .fullScreenCover(item: $fruitToEdit) { item in
                    FruitEditorView(mode: .edit(item))
                }
            }
            .navigationTitle("課題16")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isAdd.toggle()

                    }, label: {
                        Image(systemName: "plus")
                    })
                    // MARK: - 新規フルーツ追加View
                    .fullScreenCover(isPresented: $isAdd) {
                        FruitEditorView(mode: .add)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Fruits())
    }
}

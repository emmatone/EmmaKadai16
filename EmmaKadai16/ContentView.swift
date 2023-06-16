//
//  ContentView.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fruits: Fruits
    @State private var selectedFruit: Fruit?
    @State private var isAdd: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                SubTitle()
                // MARK: - List {
                List(fruits.fruitsData) { fruit in
                    HStack {
                        // MARK: - チェックマークと果物名
                        FruitRow(fruit: fruit)
                            .onTapGesture {
                                _ = fruits.toggleIsCheckedIfPossible(fruit)
                            }
                        // MARK: - フルーツ名更新アイコン
                        EditButton()
                            .onTapGesture {
                                selectedFruit = fruit
                            }
                    }
                }
                .listStyle(.inset)
                // MARK: - 新規フルーツ追加View
                .fullScreenCover(item: $selectedFruit) { item in
                    FruitEditorView(isAdd: $isAdd, currentFruit: item)
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
                    // MARK: - 既存フルーツ更新View
                    .fullScreenCover(isPresented: $isAdd) {
                        FruitEditorView(isAdd: $isAdd, currentFruit: nil)
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

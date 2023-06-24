#  課題16 既存の項目の名前を変更できる機能


## OverView
- 4つのフルーツ名がリスト形式で表示される。
- フルーツ名にはチェックマークが付いているものと付いていないものがある
- フルーツ名を追加する機能を追加（課題14）
- フルーツ名をタップするとチェックマークが切り替わる機能を追加（課題15）
- 既存の項目の名前を変更できる機能を追加（課題16)


https://github.com/emmatone/EmmaKadai16/assets/120438170/c6f9126b-e26a-4c17-848c-9cd2dc1ec793


## Memo
- SwiftUI
- List
- Label
- Identifiable, Equatable
- ObservableObject/EnvironmentObject
- @Environment
- gurad let
- 未入力や、空白スペースのときは追加されないようにした。.trimmingCharacters(in: .whitespaces)
- 配列の要素を検索してインデックスを取得するため、.firstIndex(of:)からidで検索するためfirstIndex(where:)に変更。
- .contentShape, .onTapGesture
- 新規追加と既存更新の場合でフルーツ名編集画面を共有するようにした。

## Feedback
- 変数名をよりわかりやすく。
- enumで新規追加と既存更新を切り替える。


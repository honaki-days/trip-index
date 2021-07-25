# trip-index README

## trip-index作成経緯
### 旅行の行き先で何をするか考える時や、行き先決定後の現地ですることを考える時に自分が使いたいと思える旅行まとめサイトを作成しました。
### 私は複数のSNSやWebサイトなどから旅行情報を収集しますが、それを一元化できるサイトがあれば「楽なのになぁ」と常々考えていました。
### そのためtrip-indexを作成することにしました。


## trip-indexで何ができるのか（機能）
### ①ログイン機能
### ②投稿機能
### ③検索機能
### 他にもお気に入り機能・クレカ決済機能などを随時追加予定です。


## テーブル設計
### usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

#### Association
- has_many :posts


### postsテーブル

| Column             | Type   | Options                            |
| ------------------ | ------ | ---------------------------------- |
| description        | text   | null: false                        |
| place              | string | null: false, unique: true          |
| user               | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
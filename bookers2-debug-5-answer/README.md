# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## 課題5
### ①Bookers2にユーザー検索機能を追加しましょう
#### ヘッダーに検索窓を設置し、入力と名前が一致するユーザーを検索しましょう
**実装する機能**
* コントローラ
  * searchコントローラ追加
    * searchアクション追加
    用途：検索を行う
* ビュー
  * ログインしている場合に限り、ヘッダーに検索窓・検索ボタンを設置すること
  * 検索結果表示画面を作成し、検索結果一覧を表示すること

### ②Bookers2にユーザー・投稿検索機能を追加しましょう
#### ユーザー・投稿を選択でき、検索手法も選択できるようにしましょう
**前提**
課題5, ①を修了していること
**実装する機能**
* ビュー
  * ヘッダーにユーザー・投稿を選択できるプルダウンメニューを追加すること
  * ヘッダーに検索手法を選択できるプルダウンメニューを追加すること
  検索手法：[完全一致検索, 部分一致検索, 前方一致検索, 後方一致検索]
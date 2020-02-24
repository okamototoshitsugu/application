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

## 課題4
### Bookers2にフォロー・フォロワー機能を追加しましょう
**実装する機能**
* コントローラ
  * relationshipsコントローラを追加
    * createアクションを追加  
    用途：フォローを作成
    * destroyアクションを追加  
    用途：フォローを削除
    * <span style="color: #d61b09">フォローする・外すボタンをクリックしたら元画面に遷移すること</span>
* モデル
  * relationshipモデルを作成
* ビュー
  * サイドバーにフォロー数・フォロワー数を表示
  * サイドバーのフォロー数・フォロワー数をクリックしたらフォロー・フォロワーの一覧画面を表示すること
  * マイページ以外のサイドバーにフォローする・外すボタンを追加
  * ユーザー一覧画面にフォロー数・フォロワー数・フォローする・外すボタンの設置
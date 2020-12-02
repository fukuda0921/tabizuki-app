# アプリ名
Tabizuki

# 概要
画像付きの投稿から行先を決定してもらい、その後旅先を新規投稿してもらうアプリケーション。
# 本番環境
http://54.168.136.182/
### Basic認証
ユーザー名:fukuda <br> 
パスワード:9999<br>  
### ログイン情報(テスト用)
・Eメール:a@a<br>
・パスワード:a1a1a1<br>
・Eメール:b@b<br>
・パスワード:a1a1a1<br>
# 制作背景
私は多くに人が地方に足を運んでもらうことで、地方の人口減少の問題、地方の活性化につながるとうい狙いでこのアプリケーションを制作しました。<br>
私自身、５年間地方に住んでいましたが、本当に多くの魅力を感じました。同時に、人口減少、高齢化に伴う財政の厳しさも感じました。この問題を解決するには、まず足を運んでもらうことから始まるのではないかと考えています。<br>
そんな訪れたことのない場所の情報が投稿されているアプリケーションによって、知られていない様な地方の魅力を味わって欲しい、そして、地方の人口増加の第一歩になって欲しいという思いで制作しました。


# DEMO
## トップページ(ユーザー管理)
![readme6](https://user-images.githubusercontent.com/72489977/100865886-4250b600-34db-11eb-97cf-c6ad24f7e708.gif)

ログイン、新規登録それぞれクリックすることで遷移します。
## 新規登録ページ
![readme1](https://user-images.githubusercontent.com/72489977/100859226-55ab5380-34d2-11eb-82c3-616cbcdc3071.gif)

必要項目を入力後登録ボタンをクリックすることでユーザー情報が登録されます。
その後、トップページ(投稿)に遷移します
## ログインページ
![readme2](https://user-images.githubusercontent.com/72489977/100860983-8e4c2c80-34d4-11eb-90b3-fd331070820f.gif)

必要な登録情報を入力後、 Log inボタンをクリックすると正しい情報であればトップページ(投稿)に遷移します。
##  トップページ(投稿)
![readme5](https://user-images.githubusercontent.com/72489977/100865347-8ee7c180-34da-11eb-9663-4e76c4d1f3a2.gif)

マイページボタンをクリックすると自身のユーザー情報表示ページに遷移します。
新規登録ボタンをクリックすると新規投稿ページに遷移します。
投稿されると写真、タイトル、感想、投稿者のニックネームが表示され、写真、タイトル、感想のいずれかをクリックすると投稿詳細ページに遷移します。また、投稿者のニックネームをクリックすると、投稿者のユーザー詳細ページに遷移します。
## マイページ(ユーザー詳細ページ)
![readme4](https://user-images.githubusercontent.com/72489977/100864830-e76a8f00-34d9-11eb-836d-795c665a6449.gif)

editボタンをクリックするとユーザー情報編集ページに遷移します。またeditボタンは自身の詳細ページのみ表示されます。
ユーザーが投稿した写真、タイトル、感想、投稿者のニックネームのみが表示され、写真、タイトル、感想のいずれかをクリックすると投稿詳細ページに遷移します。
## ユーザー情報編集ページ
![readme3](https://user-images.githubusercontent.com/72489977/100862718-db310280-34d6-11eb-98a9-29f0f6c5b4cb.gif)

変更箇所の入力をおこない、更新するをクリックするとマイページに遷移します。
編集内容は、マイページに反映されます。
## 新規投稿ページ
![readme7](https://user-images.githubusercontent.com/72489977/100866768-7f697800-34dc-11eb-8024-10401576f8d9.gif)

必須項目に入力をして投稿するをクリックすると投稿されます。
トップページ(投稿)とユーザー詳細ページに反映されます。
## 投稿詳細ページ
![readme8](https://user-images.githubusercontent.com/72489977/100868152-8e512a00-34de-11eb-86cd-1e5b3eae519a.gif)

editボタンをクリックすると投稿編集ページに遷移します。
Deleteボタンをクリックすると投稿が削除されトップページ(投稿)に遷移します。
二つのボタンは投稿者本人のみに表示されます。
## 投稿編集ページ
![readme9](https://user-images.githubusercontent.com/72489977/100868677-47176900-34df-11eb-8038-21eb4ef0631b.gif)

編集箇所の入力をおこない、投稿をクリックすると投稿詳細ページに遷移します。
編集箇所はトップページ(投稿)、ユーザー詳細ページと投稿詳細ページに反映されます。
## 工夫したポイント
工夫したポイントは４つあります。<br>
①より多くの人が登録してもらえるように、ユーザー登録時の項目を少なくする。<br>
②投稿する写真が確認できるように、プレビュー機能を実装する。<br>
③トップページでインパクトを強く与えることによって興味を持ってもらえれようにする。<br>
④このアプリケーションの使い方としてステップを示すことで使いやすさ、分かりやすさに意識する。

## 使用技術(開発環境)
### バックエンド
Ruby,Ruby on Rails
### フロントエンド
JavaScript
### データベース
MySQL
### インフラ
AWS(EC2)
### Webサーバー(本番環境)
nginx
### アプリケーションサーバー(本番環境)
unicorn
### ソース管理
GitHub,GitHubDesktop
### テスト
RSpec
### エディタ
 VSCode
## 課題や今後実装したい機能
写真を一枚しか投稿できないという課題があります。ですので、今後の追加機能として複数の写真表示をどのようにするとユーザーが分かりやすいのかを第一に考えた実装を考えています。<br>
また、エラーハンドリングを表示させていません。JavaScriptを使ったものを考えていますので、その点も学習が必要だと考えています。<br>
実装したい機能として、訪れた都道府県をチェックする機能を考えています。地方に行ってもらうとうい点でよりユーザーがより足を運んでもらえる機能になると考えています。
# テーブル設計


## usersテーブル
|     Column         |  Type  |  Options    |
|--------------------|--------|-------------|
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| prefecture_id      | integer| null: false |
| period_id          | integer| null: false |
| target             | string | null: false |

 ### association
 has_many: posts


 ## postsテーブル
|       Column      |     Type   |  Options                       |
|-------------------|------------|--------------------------------|
| title             | string     | null: false                    |
| prefecture_id     | integer    | null: false                    |
| budget_id         | integer    | null: false                    |
| explain           | text       | null: false                    |
| place             | string     | null: false                    |
| transportation_id | integer    | null: false                    |
| user              | references | null: false, foreign_key: true |

### association
belongs_to :user
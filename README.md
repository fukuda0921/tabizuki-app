# アプリ名
Tabizuki

# 概要
ユーザー管理、写真付きの投稿、投稿の編集、投稿の削除、投稿の一覧表示
投稿の詳細表示、ユーザー情報の表示、ユーザー情報の編集

# 制作背景
私は多くに人が地方に足を運んでもらうことで、地方の人口減少の問題、地方の活性化につながるとうい狙いでこのアプリケーションを制作しました。私自身、５年間地方に住んでいましたが、本当に多くの魅力を感じました。同時に、人口減少、高齢化に伴う財政の厳しさも感じました。この問題を解決するには、まず足を運んでもらうことから始まるのではないかと考えています。そんな訪れたことのない場所の情報が投稿されているアプリケーションによって、知られていない様な地方の魅力を味わって欲しい、そして、地方の人口増加の第一歩になって欲しいという思いで制作しました。


# DEMO
## トップページ(ユーザー管理)
![スクリーンショット 2020-11-27 0 32 48](https://user-images.githubusercontent.com/72489977/100369407-303cc680-3048-11eb-90e0-53b566cfc983.png)
ログイン、新規登録それぞれクリックすることで遷移します。
## 新規登録ページ
![スクリーンショット 2020-11-27 0 39 48](https://user-images.githubusercontent.com/72489977/100370088-18b20d80-3049-11eb-8d29-c87d83e240f7.png)
必要項目を入力後登録ボタンをクリックすることでユーザー情報が登録されます。
その後、トップページ(投稿)に遷移します
## ログインページ
![スクリーンショット 2020-11-27 0 43 14](https://user-images.githubusercontent.com/72489977/100370407-9249fb80-3049-11eb-8799-70e61ac78ca7.png)
必要な登録情報を入力後、 Log inボタンをクリックすると正しい情報であればトップページ(投稿)に遷移します。
##  トップページ(投稿)
![スクリーンショット 2020-11-27 0 52 20](https://user-images.githubusercontent.com/72489977/100371243-d689cb80-304a-11eb-9865-41a1fddabcae.png)
マイページボタンをクリックすると自身のユーザー情報表示ページに遷移します。
新規登録ボタンをクリックすると新規投稿ページに遷移します。
投稿されると写真、タイトル、感想、投稿者のニックネームが表示され、写真、タイトル、感想のいずれかをクリックすると投稿詳細ページに遷移します。また、投稿者のニックネームをクリックすると、投稿者のユーザー詳細ページに遷移します。
## マイページ(ユーザー詳細ページ)
![スクリーンショット 2020-11-27 1 03 42](https://user-images.githubusercontent.com/72489977/100372335-7136da00-304c-11eb-8566-f897d2a52b6a.png)
editボタンをクリックするとユーザー情報編集ページに遷移します。またeditボタンは自身の詳細ページのみ表示されます。
ユーザーが投稿した写真、タイトル、感想、投稿者のニックネームのみが表示され、写真、タイトル、感想のいずれかをクリックすると投稿詳細ページに遷移します。
## ユーザー情報編集ページ
![スクリーンショット 2020-11-27 1 08 36](https://user-images.githubusercontent.com/72489977/100372770-1b166680-304d-11eb-9918-3e55e781010c.png)
変更箇所の入力をおこない、更新するをクリックするとマイページに遷移します。
編集内容は、マイページに反映されます。
## 新規投稿ページ
![スクリーンショット 2020-11-27 1 19 25](https://user-images.githubusercontent.com/72489977/100373789-ab08e000-304e-11eb-9813-dccf0e07254e.png)
![スクリーンショット 2020-11-27 1 19 42](https://user-images.githubusercontent.com/72489977/100373836-bbb95600-304e-11eb-8ff8-44b14eedb338.png)
必須項目に入力をして投稿するをクリックすると投稿されます。
トップページ(投稿)とユーザー詳細ページに反映されます。
## 投稿詳細ページ
![スクリーンショット 2020-11-27 1 25 29](https://user-images.githubusercontent.com/72489977/100374455-a85aba80-304f-11eb-87e0-0f1f58988910.png)
![スクリーンショット 2020-11-27 1 26 45](https://user-images.githubusercontent.com/72489977/100374501-bf011180-304f-11eb-877d-bbdbbab6e29e.png)
editボタンをクリックすると投稿編集ページに遷移します。
Deleteボタンをクリックすると投稿が削除されトップページ(投稿)に遷移します。
## 投稿編集ページ
![スクリーンショット 2020-11-27 1 40 31](https://user-images.githubusercontent.com/72489977/100375736-98dc7100-3051-11eb-9934-97247a20f1d9.png)
![スクリーンショット 2020-11-27 1 40 45](https://user-images.githubusercontent.com/72489977/100375930-f1ac0980-3051-11eb-8fcd-946905d6f028.png)
編集箇所の入力をおこない、投稿をクリックすると投稿詳細ページに遷移します。
編集箇所はトップページ(投稿)、ユーザー詳細ページと投稿詳細ページに反映されます。
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
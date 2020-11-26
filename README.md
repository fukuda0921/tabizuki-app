# アプリ名
Tabizuki

# 概要
ユーザー管理、写真付きの投稿、投稿の編集、投稿の削除、投稿の一覧表示
投稿の詳細表示、ユーザー情報の表示、ユーザー情報の編集

# 制作背景
私は多くに人が地方に足を運んでもらうことで、地方の人口減少の問題、地方の活性化につながるとうい狙いでこのアプリケーションを制作しました。私自身、５年間地方に住んでいましたが、本当に多くの魅力を感じました。同時に、人口減少、高齢化に伴う財政の厳しさも感じました。この問題を解決するには、まず足を運んでもらうことから始まるのではないかと考えています。そんな訪れたことのない場所の情報が投稿されているアプリケーションによって、知られていない様な地方の魅力を味わって欲しい、そして、地方の人口増加の第一歩になって欲しいという思いで制作しました。


# DEMO
![トップページ(ユーザー管理)](https://user-images.githubusercontent.com/72489977/100369407-303cc680-3048-11eb-90e0-53b566cfc983.png)






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
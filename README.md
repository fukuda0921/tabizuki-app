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
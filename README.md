# テーブル設計

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |   
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| family_name        | string     | null: false                    |
| first_name         | string     | null: false                    |
| family_name_kana   | string     | null: false                    |
| first_name_kana    | string     | null: false                    |
| birthday           | date       | null: false                    |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| image              | image      | null: false                    |
| price              | integer    | null: false                    |
| name               | string     | null: false                    |
| description        | text       | null: false                    |
| category_id        | integer    | null: false                    |
| status_id          | integer    | null: false                    |
| ship_fee_id        | integer    | null: false                    |
| ship_area_id       | integer    | null: false                    |
| ship_days-id       | integer    | null: false                    |
| user_id            | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- has_one    :orders

## orders テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| price              | integer    | null: false                    |
| user_id            | references | null: false, foreign_key: true |
| item_id            | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- belongs_to :items
- has_one    :addresses

## addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| post_code          | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| street_name        | string     | null: false                    |
| bldg_name          | string     |                                |
| phone_number       | string     | null: false                    |
| order_id           | references | null: false, foreign_key: true |

### Association

- belongs_to :orders
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

# テーブル設計

## users テーブル

| Column                | Type   | Options                   |
| --------------------- | ------ | ------------------------- |
| name                  | string | null: false               |
| email                 | string | null: false, unique: true |
| password              | string | null: false               |
| password_confirmation | string | null: false               |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| title               | string     | null: false                    |
| conclusion          | text       | null: false                    |
| content             | text       | null: false                    |
| study_time_id       | integer    | null: false                    |
| category_id         | integer    | null: false                    |
| user_id             | integer    | null: false, foreign_key: true |
| comment_id          | integer    | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- belongs_to_active_hash :study_time
- belongs_to_active_hash :category

## comments テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| user_id   | integer | null: false, foreign_key: true |
| post_id   | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post
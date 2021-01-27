# README

# アプリケーション名
Leaning Records


# アプリケーション概要
プログラミングを学習し始めた人に向けて作成した学習記録アプリです。

検索機能もついているので、一度学習したことを振り返るのも簡単です。

またモチベーションアップにも繋がるように学習時間も記録できるようにしました。

# URL
https://learning-records-29081.herokuapp.com/

# テスト用アカウント

アドレス:sample@sample.com
パスワード:sample

## Basic認証
ID:learning
Pass:records

# 利用方法
ユーザー登録をすると、学習した内容を記録することができます。
ログインしているユーザーはコメントをすることができます。
ログインしていないユーザーも投稿内容を閲覧することができます。


# 目指した課題解決
アウトプットすることにハードルを感じている人や、何をアウトプットすれば良いかわからない人、
またはアウトプットの習慣がない人がアウトプットの練習の場として気軽に使えるように作成しました。

学習時間も記録できるので、学習へのモチベーションにも繋がるようにしました。

また検索機能もあるので、一度学習した内容もすぐに振り返ることができるので、
効率良く学習を進められます。


# 洗い出した用件


# 実装した機能についての説明
*ユーザー登録  
新規ユーザー登録、ログイン、ログアウトができます。
ログインしているユーザーは新規投稿やコメントができます。

*学習記録投稿機能  
学習内容を投稿できます。
結論から記入できるので、学習内容を整理しやすくなっています。
学習時間やカテゴリーは選択式にし、簡単に登録できます。

*学習記録一覧表示機能  
タイトルと画像を一枚表示し、どんな内容なのか一目でわかりやすいようにしています。

*学習記録編集機能  
投稿したユーザー本人だけが投稿した学習内容を編集できます。

*学習記録削除機能  
投稿したユーザー本人だけが投稿した学習内容を削除できます。

*コメント機能  
ログインしているユーザーはコメントを投稿できます。

*検索機能  
キーワードを入力し、関連するタイトルの投稿を検索できます。


# 実装予定の機能
・マイページ作成
ユーザー毎に投稿した一覧を表示
総合学習時間を表示

# ローカルでの動作方法


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
| text      | text    | null: false                    |

### Association

- belongs_to :user
- belongs_to :post
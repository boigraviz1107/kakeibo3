# README

## 本番環境IPアドレス: [http://3.113.122.135/](http://3.113.122.135/)


## アプリケーションの概要
<img src="https://i.gyazo.com/1d03faf172b0a03a0260c66d86ac8f07.png">

### 月ごとの収入、支出、今月の収支金額、全体の残高がわかる家計簿アプリです。
### シンプルな見た目で難しい収支計算を簡単にします。
### ポップな見た目で、誰もが使いたくなるようにしました。


## 1.ユーザー登録
<img src="https://i.gyazo.com/211d25798179f14eeeffa3ad98759cbb.png">

<img src="https://i.gyazo.com/f220374c71b5f63a16a5418c8d23ae60.png">

### ユーザーごとにデータを管理が可能です。


## 2.収入
<img src="https://i.gyazo.com/a35491c7809a971fd01c1b79bffa80cd.png">

### 収入の種類、日にち、金額を記録できます。
<img src="https://i.gyazo.com/d37bd62ccd38c461585b1c2fa8536e2d.png">

### 月ごとに金額の合計、収入の詳細を表示。編集、削除も可能です。
### 円グラフが内訳を表示してくれ、視覚化する事で何の仕事が収益が大きいのかわかります。
<img src="https://i.gyazo.com/d962a2b33265967d6cfb0fbb945cfc98.png">

### 収入のページの上には常に今月の収入合計が自動で表示されます

## 3.支出
<img src="https://i.gyazo.com/60e3dde957b053b72b542cec482391d9.png">

### 支出の種類、日にち、金額を記録できます。
<img src="https://i.gyazo.com/5676293134637c0a4cbbcdd2e3f7367b.png">
<img src="https://i.gyazo.com/29719d6446c98aa985deddde09248c10.png">

### 月ごとに金額の合計、支出の詳細を表示。編集、削除も可能です。
### 円グラフが内訳を表示してくれ、視覚化する事で何にお金を使っているのかがわかります。
<img src="https://i.gyazo.com/3252414edf9adaa37012e20ac08ad2bc.png">

### 支出のページの上には常に今月の支出合計が自動で表示されます

## 4.残高確認
<img src="https://i.gyazo.com/f249238c935068b00128bb0a86737cd9.png">

### topページで常に、残高が確認可能。
### 今月の収支金額も表示されるので、常にお金の使い方を意識できます。


## テーブル


## users
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|emaill|string|null: false|
|password|string|null :false|

### Association
- has_many :incomes
- has_many :spendings

## incomes
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|year_month|date|null: false|
|value|integer|null :false|
|user_id|integer|null :false|

### Association
- belongs_to :user

## spendings
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|year_month|date|null: false|
|value|integer|null :false|
|user_id|integer|null :false|

### Association
- belongs_to :user
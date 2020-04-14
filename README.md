# README


## アプリ名
  ## CraMasS (クラマス)

## url
  ### https://warm-wave-74212.herokuapp.com/

## ログインアカウント
  ### Eメール: alpha@alpha  パスワード: aaaaaa

## 概要
  ### 工作機械を所有している企業が、工作機械を使って開発したい借り手に対し、オペレーターごと貸し出せるようなマッチングアプリです。アプリ名は、Craftsman's Master stroke （職人の神技） の略です。

## 開発背景
  ### 工作機械を所有する企業は、景気の変動などで仕事量が少なくなり、機械とそのオペレーターが遊んでしまうことが悩ましいです。一方、何か新しい物を製作・開発したい人は、機械を買ったりオペレーターを育てたりする投資が必要で、試作への障壁が高い状況です。そういった中、貸し手と借り手がWIN-WINの関係になるサービスがあればと思い、アプリを開発しました。

## 工夫したポイント
  ### 一言に工作機械といっても、旋盤、研削盤、マシニングセンター、放電加工機、・・・etc. といろいろあるので、機械の借り手側は検索窓から自身が希望する機械のカテゴリーを検索できるようにしました。同様に、借り手の所在地の近くの地域にどんな機械があるのかも検索できます。

## 今後実装したい機能
  ### 現在、借りたい機械を見つけた借り手は、その機械のオーナーのHPへアクセスしてその中のinfoメールからオファーする、という仕様です。これを簡略化するために、貸し手が登録しているメールアドレスをクリックして、借り手がダイレクトメールでオファーできる機能を実装したいです。

## 開発環境
  ### ruby '2.5.1'
  ### VSCode (Visual Studio Code)

## DB設計

 ### usersテーブル

|Column|Type|Options|
|------|----|-------|
|company|string|null: false|
|address|string|null: false|
|tell|string|null: false|
|url|string||
|email|string|null: false|
|password|string|null: false|
#### Association
- has_many :machines

### machinesテーブル

|Column|Type|Options|
|------|----|-------|
|category|string|null: false|
|model|string|null: false|
|maker|string||
|made|date||
|engineer|string||
|image|text||
|address|string|null: false|
#### Association
- belongs_to :user
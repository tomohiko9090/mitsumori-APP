# Task-APP
タスク見積もり向上のためのアプリ<b>「mitsumori」<b>  
https://mitsumoriheroku.herokuapp.com/tasks
<kbd><img width="1907" alt="スクリーンショット 0004-09-12 午前7 20 01" src="https://user-images.githubusercontent.com/66200485/189551287-859b56ec-64d2-42b2-b9c2-f16711a191b2.png"></kbd>


## 使用した技術
### 言語
- Ruby 2.7.6 
- JavaScript

### フレームワーク
- Ruby on Rails 6.1.6.1
- Vue.js

### データベース
- postgresql 14.4

### サーバー
- Heroku
  
## 一言でいうと...
タスクの「見積もり時間」と「実際にかかった時間」の乖離を示し、時間の見積を改善するアプリ
  
## ターゲット
<img width="892" alt="スクリーンショット 0004-08-31 午前7 38 42" src="https://user-images.githubusercontent.com/66200485/187555845-8e2ea412-2e5d-49af-b650-88dbac172d16.png">
 
## ターゲットの課題を解決する方法
<img width="1203" alt="スクリーンショット 0004-08-31 午前7 43 12" src="https://user-images.githubusercontent.com/66200485/187556411-85468e6d-9e9b-4a0c-becd-62bdaefcae16.png">
  
## アプリのこだわりポイント
<img width="948" alt="スクリーンショット 0004-08-31 午前7 40 00" src="https://user-images.githubusercontent.com/66200485/187555983-78bc5af2-7c66-4e1e-9e5a-2869dd77448f.png">


  
  
## リンク一覧
- [DrawSQL](https://drawsql.app/teams/--109/diagrams/task-app-mitsumo)
- [ワイヤーフレーム](https://docs.google.com/presentation/d/1NFN-4HQrUUHpKZJMY7fSJQKlNyEoEVLvPS-sP0J-5Cw/edit#slide=id.p)
- [スライド発表](https://docs.google.com/presentation/d/1pP8PoIwpLFg5yyZ4kPjM-vtRJusNTsBewJEeBgUqjoQ/edit)



## 設計
- 画面遷移図（サイトマップ）
- 画面レイアウト（ワイヤーフレーム）
- ER図
- スキーマ設計図


## 今後の展望
- この作業量は終わらないことを教えてくれると嬉しい
- ex.先週の作業量は~ポイントでした。あなたは~ポイントしか作業をこなせませんが、今週の作業量は〜ポイントあります。周りの人に協力してタスクを減らしてください。
- アプリを見るだけで使い方がわかるようにして、発表時はターゲットや課題をいうだけにする
- タスクマネジメントマスターに絡める
- 重いタスクと軽いタスクに分ける
- カレンダーに反映できるようにする
- 現状のタスク管理から考える課題
  - タスクを洗い出しても、どの順で作業を進めるかがわからない
  - タスクを洗い出す → カレンダーに登録するが 2 度手間
- タスク管理アプリ
  - 要件は？
  - 予めワイヤーフレームを見てもらい、「使い方わかる？」と UIFB もらう
  - 「タスクってどんな状態になっているといいですか?」かを質問する
  - タスク管理で何か不安な点はありますか？
- タスクをサブタスクに分解ができる
- タスクの見積もりと乖離が可視化されている
- タスクの見積もりから自分の見積もりレベルがわかる
- 仲間とタスクの見積もりレベルを競争できる（年齢と性別つき）

- タスク分解が浅い→巨人タスクと小人タスクに分かれる　タスクとサブタスクとしても良いが、かわいい画像は貼り付ける  ピラミッドか氷河のイラストでもOK
- BP編タスクマネジメント
- https://communication.motivation-cloudapp.com/companies/66/member/articles/15873
- https://communication.motivation-cloudapp.com/companies/66/member/articles/16401
- 期待値理論でモチベーション判断
- 見積もりとそのズレをチェックして傾向を出し、終わらなそうな場合、アラートを出す
- タスクを敵として、それをやっつけるイメージにする
- 脳内が３Dになっている感じで可視化する
- タスクが良くわかっていない社会人1年目に向けたアプリ
- Googleカレンダーから、元から入ってるいる予定を取ってきてから、それを使ってアルゴリムを作っていく
- せまく深い
- 誰のためにそんな解決ができるのかを記載する
- 複数人で使用できるアプリにする
- 「思考」「作業」「集中」の三つにわける


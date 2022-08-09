User.create(name: "未来のワクワクさん", level: 3, birth_date: "1997/04/05", email: "tomo.k9090@gmail.com", password: "taitasu2", nickname: "未来のワクワクさん")
User.create(name: "葛葉朋彦", level: 1, birth_date: "1997/04/05", email: "kuzuba.tomohiko@lmi.ne.jp", password: "taitasu2", nickname: "葛葉朋彦")


Task.create(user_id: 1, status: 1, task_name: "資料作成", estimated_time: 45, end_time: 0)
Task.create(user_id: 1, status: 2, task_name: "イベントの企画", estimated_time: 30, end_time: 0)
Task.create(user_id: 1, status: 0, task_name: "日程調整", estimated_time: 20, end_time: 0)
Task.create(user_id: 2, status: 1, task_name: "電話", estimated_time: 30, end_time: 0)
Task.create(user_id: 2, status: 2, task_name: "スライド作成", estimated_time: 50, end_time: 0)

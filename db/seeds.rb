def insert_task_data(user_id)

  # 明後日以降のタスク
  Task.create(user_id: user_id, status: 0, task_name: "ER図の作成", estimated_time: 50, actual_time: 0)
  Task.create(user_id: user_id, status: 0, task_name: "ワイヤーフレームの作成", estimated_time: 50, actual_time: 0)
  Task.create(user_id: user_id, status: 0, task_name: "起業の科学読破", estimated_time: 50, actual_time: 0)
  Task.create(user_id: user_id, status: 0, task_name: "基本情報技術者試験の勉強", estimated_time: 50, actual_time: 0)
  Task.create(user_id: user_id, status: 0, task_name: "部屋の掃除", estimated_time: 50, actual_time: 0)

  # 本日のタスク
  Task.create(user_id: user_id, status: 0, task_name: "発表スライドの作成", estimated_time: 60, actual_time: 0, action_date: "#{DateTime.now.year}/#{DateTime.now.month}/#{DateTime.now.day}")
  Task.create(user_id: user_id, status: 0, task_name: "メール返信", estimated_time: 50, actual_time: 0, action_date: "#{DateTime.now.year}/#{DateTime.now.month}/#{DateTime.now.day}")
  Task.create(user_id: user_id, status: 0, task_name: "新メンバーのオンボーディング", estimated_time: 70, actual_time: 0, action_date: "#{DateTime.now.year}/#{DateTime.now.month}/#{DateTime.now.day}")

  # 過去のタスク
  Task.create(user_id: user_id, status: 2, task_name: "タスク1", estimated_time: 55, actual_time: 50, action_date: "2022/08/07")
  Task.create(user_id: user_id, status: 2, task_name: "タスク2", estimated_time: 60, actual_time: 50, action_date: "2022/08/07")
  Task.create(user_id: user_id, status: 2, task_name: "タスク3", estimated_time: 65, actual_time: 70, action_date: "2022/08/07")
  Task.create(user_id: user_id, status: 2, task_name: "タスク4", estimated_time: 70, actual_time: 80, action_date: "2022/08/07")
  Task.create(user_id: user_id, status: 2, task_name: "タスク5", estimated_time: 75, actual_time: 80, action_date: "2022/08/07")

  Task.create(user_id: user_id, status: 2, task_name: "タスク6", estimated_time: 75, actual_time: 55, action_date: "2022/08/08")
  Task.create(user_id: user_id, status: 2, task_name: "タスク7", estimated_time: 75, actual_time: 70, action_date: "2022/08/08")
  Task.create(user_id: user_id, status: 2, task_name: "タスク8", estimated_time: 75, actual_time: 85, action_date: "2022/08/08")
  Task.create(user_id: user_id, status: 2, task_name: "タスク9", estimated_time: 75, actual_time: 70, action_date: "2022/08/08")
  Task.create(user_id: user_id, status: 2, task_name: "タスク10", estimated_time: 75, actual_time: 65, action_date: "2022/08/08")

  Task.create(user_id: user_id, status: 2, task_name: "タスク11", estimated_time: 75, actual_time: 70, action_date: "2022/08/09")
  Task.create(user_id: user_id, status: 2, task_name: "タスク12", estimated_time: 75, actual_time: 60, action_date: "2022/08/09")
  Task.create(user_id: user_id, status: 2, task_name: "タスク13", estimated_time: 10, actual_time: 15, action_date: "2022/08/09")
  Task.create(user_id: user_id, status: 2, task_name: "タスク14", estimated_time: 15, actual_time: 20, action_date: "2022/08/09")
  Task.create(user_id: user_id, status: 2, task_name: "タスク15", estimated_time: 20, actual_time: 30, action_date: "2022/08/09")

  Task.create(user_id: user_id, status: 2, task_name: "タスク16", estimated_time: 25, actual_time: 20, action_date: "2022/08/10")
  Task.create(user_id: user_id, status: 2, task_name: "タスク17", estimated_time: 30, actual_time: 40, action_date: "2022/08/10")
  Task.create(user_id: user_id, status: 2, task_name: "タスク18", estimated_time: 35, actual_time: 40, action_date: "2022/08/10")
  Task.create(user_id: user_id, status: 2, task_name: "タスク19", estimated_time: 40, actual_time: 50, action_date: "2022/08/10")
  Task.create(user_id: user_id, status: 2, task_name: "タスク20", estimated_time: 45, actual_time: 50, action_date: "2022/08/10")

  Task.create(user_id: user_id, status: 2, task_name: "タスク21", estimated_time: 50, actual_time: 60, action_date: "2022/08/11")
  Task.create(user_id: user_id, status: 2, task_name: "タスク22", estimated_time: 50, actual_time: 60, action_date: "2022/08/11")
  Task.create(user_id: user_id, status: 2, task_name: "タスク23", estimated_time: 50, actual_time: 60, action_date: "2022/08/11")
  Task.create(user_id: user_id, status: 2, task_name: "タスク24", estimated_time: 50, actual_time: 55, action_date: "2022/08/11")
  Task.create(user_id: user_id, status: 2, task_name: "タスク25", estimated_time: 50, actual_time: 40, action_date: "2022/08/11")

  Task.create(user_id: user_id, status: 2, task_name: "タスク26", estimated_time: 50, actual_time: 40, action_date: "2022/08/12")
  Task.create(user_id: user_id, status: 2, task_name: "タスク27", estimated_time: 50, actual_time: 30, action_date: "2022/08/12")
  Task.create(user_id: user_id, status: 2, task_name: "タスク28", estimated_time: 50, actual_time: 80, action_date: "2022/08/12")
  Task.create(user_id: user_id, status: 2, task_name: "タスク29", estimated_time: 50, actual_time: 50, action_date: "2022/08/12")
  Task.create(user_id: user_id, status: 2, task_name: "タスク30", estimated_time: 50, actual_time: 40, action_date: "2022/08/12")

  Task.create(user_id: user_id, status: 2, task_name: "タスク31", estimated_time: 50, actual_time: 40, action_date: "2022/08/13")
  Task.create(user_id: user_id, status: 2, task_name: "タスク32", estimated_time: 50, actual_time: 60, action_date: "2022/08/13")
  Task.create(user_id: user_id, status: 2, task_name: "タスク33", estimated_time: 50, actual_time: 60, action_date: "2022/08/13")
  Task.create(user_id: user_id, status: 2, task_name: "タスク34", estimated_time: 50, actual_time: 50, action_date: "2022/08/13")
  Task.create(user_id: user_id, status: 2, task_name: "タスク35", estimated_time: 50, actual_time: 50, action_date: "2022/08/13")

  Task.create(user_id: user_id, status: 2, task_name: "タスク36", estimated_time: 50, actual_time: 40, action_date: "2022/08/14")
  Task.create(user_id: user_id, status: 2, task_name: "タスク37", estimated_time: 50, actual_time: 30, action_date: "2022/08/14")
  Task.create(user_id: user_id, status: 2, task_name: "タスク38", estimated_time: 50, actual_time: 40, action_date: "2022/08/14")
  Task.create(user_id: user_id, status: 2, task_name: "タスク39", estimated_time: 50, actual_time: 80, action_date: "2022/08/14")
  Task.create(user_id: user_id, status: 2, task_name: "タスク40", estimated_time: 50, actual_time: 55, action_date: "2022/08/14")

  Task.create(user_id: user_id, status: 2, task_name: "タスク41", estimated_time: 50, actual_time: 40, action_date: "2022/08/15")
  Task.create(user_id: user_id, status: 2, task_name: "タスク42", estimated_time: 50, actual_time: 60, action_date: "2022/08/15")
  Task.create(user_id: user_id, status: 2, task_name: "タスク43", estimated_time: 50, actual_time: 55, action_date: "2022/08/15")

  Task.create(user_id: user_id, status: 2, task_name: "タスク44", estimated_time: 50, actual_time: 40, action_date: "2022/08/16")
  Task.create(user_id: user_id, status: 2, task_name: "タスク45", estimated_time: 50, actual_time: 60, action_date: "2022/08/16")
  Task.create(user_id: user_id, status: 2, task_name: "タスク46", estimated_time: 50, actual_time: 25, action_date: "2022/08/16")

  Task.create(user_id: user_id, status: 2, task_name: "タスク47", estimated_time: 50, actual_time: 40, action_date: "2022/08/17")
  Task.create(user_id: user_id, status: 2, task_name: "タスク48", estimated_time: 50, actual_time: 60, action_date: "2022/08/17")
  Task.create(user_id: user_id, status: 2, task_name: "タスク49", estimated_time: 50, actual_time: 25, action_date: "2022/08/17")

  Task.create(user_id: user_id, status: 2, task_name: "タスク50", estimated_time: 60, actual_time: 100, action_date: "2022/08/18")
  Task.create(user_id: user_id, status: 2, task_name: "タスク51", estimated_time: 50, actual_time: 40, action_date: "2022/08/18")
  Task.create(user_id: user_id, status: 2, task_name: "タスク52", estimated_time: 60, actual_time: 40, action_date: "2022/08/18")

  Task.create(user_id: user_id, status: 2, task_name: "タスク53", estimated_time: 60, actual_time: 60, action_date: "2022/08/19")
  Task.create(user_id: user_id, status: 2, task_name: "タスク54", estimated_time: 50, actual_time: 40, action_date: "2022/08/19")
  Task.create(user_id: user_id, status: 2, task_name: "タスク55", estimated_time: 60, actual_time: 55, action_date: "2022/08/19")

  Task.create(user_id: user_id, status: 2, task_name: "タスク56", estimated_time: 60, actual_time: 40, action_date: "2022/08/20")
  Task.create(user_id: user_id, status: 2, task_name: "タスク57", estimated_time: 50, actual_time: 50, action_date: "2022/08/20")
  Task.create(user_id: user_id, status: 2, task_name: "タスク58", estimated_time: 60, actual_time: 60, action_date: "2022/08/20")
end


User.create(name: "管理者", level: 3, birth_date: "1997/04/05", email: "admin@gmail.com", password: "test2", nickname: "admin")
User.create(name: "未来のワクワクさん", level: 3, birth_date: "1997/04/05", email: "tomo.k9090@gmail.com", password: "test2", nickname: "未来のワクワク")
User.create(name: "葛葉朋彦", level: 1, birth_date: "1997/04/05", email: "kuzuba.tomohiko@lmi.ne.jp", password: "test2", nickname: "葛葉朋彦")
User.create(name: "テストさん", level: 1, birth_date: "1997/04/05", email: "test@gmail.com", password: "test2", nickname: "テスト")


# Task.delete_all
insert_task_data(11)

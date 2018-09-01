require 'google_drive'
require 'pry'
# config.jsonを読み込んでセッションを確立
  session = GoogleDrive::Session.from_config("config.json")

  # スプレッドシートをURLで取得
  sp = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1-yzjw6y0P_I-kyxg6qzyhC94DH7BTE5e17FIpg89S4E/edit#gid=0")

  # "シート1"という名前のワークシートを取得
  ws = sp.worksheet_by_title('シート1')
  binding.pry
  # セルを指定して値を更新　インデックスの基準は1
  ws[1, 1] = "foo" # セルA2
  ws[1, 2] = "bar" # セルB2

  # saveで変更を保存、実際にスプレッドシートに反映させる
  ws.save

def registration_student(students)
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {}
  puts '生徒名を入力してください'
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  student[:age] = gets.to_i

  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  puts "国語の得点は？"
  student[:japanese]= gets.to_i
  puts "数学の得点は？"
  student[:math]= gets.to_i
  puts "英語の得点は？"
  student[:english]= gets.to_i
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  students.each do |student|
  puts "[[#{index}]: #{student[:name]}"
end

  puts '見たい生徒の番号を入力してください'
  num = gets.to_i

  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  puts "名前: #{@name}\n"
  puts "年齢: #{@age}\n"
  puts "国語:#{@score}\n"
  puts "数学:#{@score}\n"
  puts "英語:#{@score}\n"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  puts input
  if input == 1
  registration_student(students)
  elsif input == 2
  show_student_name(students)
  elsif input == 3
    # アプリケーションを終了させなさい
    exit
  else
    puts '無効な値です'
  end
end

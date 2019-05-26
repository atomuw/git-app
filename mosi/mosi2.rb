def register_data(data)

  # 名前、パンチ力、キック力、ジャンプ力をユーザーに入力させ、保存する。
  puts "名前を入力してください"
  name = gets.chomp
  puts "パンチ力を入力してください(0 ~ 100)"
  power = power(gets.to_i)
  puts "キック力を入力してください(0 ~ 100)"
  power = power(gets.to_i)
  puts "ジャンプ力を入力してください(0 ~ 100)"
  power = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump, jump, rank: hero_rank(punch,kick,jump)}
  data << person

end


def power(power)
  while power > 100
  puts "100以下の数字を入力してください"
    power = gets.to_i
  end
  return power
end


def hero_rank(punch, kick, jump)

  power = punch + kick + jump
  if power == 300
    rank = "A"
  elsif 100<= power && power < 300
    rank = "B"
  elsif 20<= power && power < 100
    rank = "C"
  else
  rank = "D"
end

end


def show_data_list(data)

   puts "見たい番号を入力してください"
   data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
end

input = gets.to_i - 1
person = data[input]
puts "名前: #{person[:name]}"
puts "パンチ力:#{person[:punch]}"
puts "キック力:#{person[:kick]}"
puts "ジャンプ力:#{person[:jump]}"
puts "ヒーローランク:#{person[:rank]}"

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    # データの登録を行う。
  def register_data(data)
  elsif input == 1
    # 保存されたデータの一覧を表示する。
  def show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end

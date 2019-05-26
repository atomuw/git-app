def post_review(a_cart)
# 商品名、値段、個数を入力させ合計金額を出し、配列に保存してください。
  post = {}
  puts "商品名を入力してください："
  post[:name] = gets.chomp
  puts "値段を入力してください："
  post[:price] = gets.to_i
  puts "個数を入力してください："
  post[:count]= gets.to_i
  line   = "---------------------------"

# 入力された値の描画
  puts "商品名 :#{cart[:name]} \n#{line}"
  puts "値段 :#{cart[:price]}\n#{line}"
  puts "個数 :#{cart[:count]} \n#{line}"
  puts "合計金額 :#{cart[:total_price]}\n#{line}"

# 配列オブジェクトに追加
cart = {name: name, price: price, count: count, total: total_price(name,price,count)}
  a_cart << post

# a_cartをメソッドの呼び出し元に返す
return a_cart
end

def check_reviews(a_cart)
# 保存された全商品の一覧を表示
  total_price = 0
  line = "-----------------"
  a_cart.each do |post|
  puts "#{post[:name]}/#{post[:price]}/#{post[:count]}\n#{line}"
  total_price += post[:price] * post[:count]
end
# 商品名、値段、個数を表示

# 全ての商品の合計金額を表示
  puts "合計金額 : #{total_price}"

  puts "[0]購入確定する"
  puts "[1]買い物を続ける"
  input = gets.to_i

  if input == 0
    buy_program(total_price)
  elsif input == 1
    return
  else
    exception
  end
end

def buy_program(total_price)
  puts "合計金額 : #{total_price}"
  puts "支払う金額を入力してください："
  input = gets.to_i
  if input >= total_price
    post = input - total_price
    puts "お釣り : #{post}"
  else
    puts "金額が足りません"
    buy_program(total_price)
  end
end

# if文を使用し条件ごとの処理を実行
# ユーザーに支払う金額を入力させ合計金額からマイナスしてください
# お釣りを表示してください


# 金額が足りない場合はもう一度、buy_program(total_price)を実行


def end_program
  # プログラムを終了する記述
  exit
end

def exception
  puts "入力された値は無効な値です"
end

cart = []             # 配列オブジェクトcartの生成

while true do
# メニューの表示
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty?       #カートに商品がない場合は[1]は選択できない
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    cart = post_review(cart)  # post_reviewメソッドの呼び出し
  elsif input == 1 then
    check_reviews(cart) # check_reviewsメソッドの呼び出し
  elsif input == 2 then
    end_program     # end_programメソッドの呼び出し
  else
    exception           # exceptionメソッドの呼び出し
  end
end

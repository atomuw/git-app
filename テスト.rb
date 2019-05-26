def is_three_multiples(num)
 if num % 3 == 0 then
   puts "3の倍数です"
 else
   puts "3の倍数ではありません"
 end
end

judge_flag = false

while !judge_flag do
 puts "自然数を入力してください："
 input = gets.to_i
 judge_flag = is_three_multiples(input)
end

puts "プログラムを終了します"

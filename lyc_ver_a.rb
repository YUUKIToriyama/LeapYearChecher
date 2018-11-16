#!/usr/bin/ruby
#閏年判定スクリプト

print '〇〇〇〇年から: '
a = gets.chomp #入力値の受け取り
if a =~ /^[0-9]+$/ #正規表現による入力値の確認
	y_start = a
else
	puts '正しい値(正整数)を入力してください'
	exit!
end

print '〇〇〇〇年まで: '
b = gets.chomp #入力値の受け取り
if b =~ /^[0-9]+$/ #正規表現による入力値の確認
	y_end = b
else
	puts '正しい値(正整数)を入力してください'
	exit!
end

#入力値の確認2 数の大小を判定
if y_end <= y_start
	exit!
else
	puts y_start + '年～' + y_end + '年'
	#入力された範囲内の年が閏年であるかそれぞれ判定する
	#１、基本的に4で割り切れる年は閏年です。
	#２、ただ、100で割り切れる年は閏年としません。
	#３、ただ、その中でも400で割り切れる年は閏年とします。
	y = y_start.to_i
	while ((y <= y_end.to_i && y >= y_start.to_i)) #「y_start ≦ y ≦ y_end」なる変数yを用意した
		if (y % 4) != 0
			puts y.to_s + '年は閏年ではありません'
		elsif (y % 400) == 0
			puts y.to_s + '年は閏年'
		elsif (y % 100) == 0
			puts y.to_s + '年は閏年ではありません'
		else
			puts y.to_s + '年は閏年'
		end
		y = y + 1 #yをひとつづつ大きくしてゆく
	end
end
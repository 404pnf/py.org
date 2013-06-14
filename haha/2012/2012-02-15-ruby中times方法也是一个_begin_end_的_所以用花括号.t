# ruby中times方法也是一个 begin end 的 所以用花括号

>> 5.times {puts "guess what?"}
guess what?
guess what?
guess what?
guess what?
guess what?
=> 5

>> 10.times {|number| puts number}
0
1
2
3
4
5
6
7
8
9
=> 10

>> 1.upto(3) {|number| puts "I can count to #{number}!"}
I can count to 1!
I can count to 2!
I can count to 3!
=> 1

>> 10.downto(1) {|number| puts number} 
10
9
8
7
6
5
4
3
2
1
=> 10
>> puts "Blast-off!"
Blast-off!
=> nil


>> 5.step(50, 5) {|x| puts "This is the  " + x.to_s + "th time I warn ya!" }
This is the  5th time I warn ya!
This is the  10th time I warn ya!
This is the  15th time I warn ya!
This is the  20th time I warn ya!
This is the  25th time I warn ya!
This is the  30th time I warn ya!
This is the  35th time I warn ya!
This is the  40th time I warn ya!
This is the  45th time I warn ya!
This is the  50th time I warn ya!
=> 5

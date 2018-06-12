def basic
  begin
    print "Select an operator: + - * / : "
    operator = gets.chomp
  end while !['+','-','*','/'].include?(operator)

  print "Enter your first number : "
  num1 = gets.chomp.to_f
  print "Enter your second number : "
  num2 = gets.chomp.to_f

  result = operator == '+' && num1+num2 || operator == '-' && num1-num2 || operator == '*' && num1*num2 || operator == '/' && num1/num2
  output = num1.to_s + ' ' + operator + ' ' + num2.to_s + ' = ' + result.to_s
  puts output
end

mode = ''
begin
  print "Select a mode: (b)asic or (a)dvanced : "
  mode = gets.chomp
end while !['b','a'].include?(mode)

system('clear')
puts (mode == 'b' && "You Are in BASIC Mode" && basic) || (mode == 'a' && "You Are in ADVANCED Mode")

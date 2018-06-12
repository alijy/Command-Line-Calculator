include Math

def get_two_nums
  print "Enter your first number : "
  num1 = gets.chomp.to_f
  print "Enter your second number : "
  num2 = gets.chomp.to_f
  [num1, num2]
end

def get_one_num
  print "Enter your number : "
  num1 = gets.chomp.to_f
end

def clean num
  i, f = num.to_i, num.to_f
  i == f ? i : f
end

def basic
  begin
    print "Select an operator: + - * / : "
    operator = gets.chomp
  end while !['+','-','*','/'].include?(operator)

  num1, num2 = get_two_nums

  result = operator == '+' && num1+num2 || operator == '-' && num1-num2 || operator == '*' && num1*num2 || operator == '/' && num1/num2
  output = "#{clean(num1)} #{operator} #{clean(num2)} = #{clean(result)}"
end

def advanced
  begin
    print "Select an operator: (p)ower or (s)quare root : "
    operator = gets.chomp
  end while !['p','s'].include?(operator)

  if operator == 'p'
    num1, num2 = get_two_nums
    "#{clean(num1)} ** #{clean(num2)} = #{clean(num1 ** num2)}"
  else
    num = get_one_num
    "Sqrt(#{num}) = #{clean(Math.sqrt(num))}"
  end
end

def bmi
  begin
    print "Select an operator: (i)pmerial or (m)etric : "
    sys = gets.chomp
  end while !['i','m'].include?(sys)

  print "Enter your height in #{sys=='m'? 'Meters' : 'Inches'} : "
  height = gets.chomp.to_f
  print "Enter your weight in #{sys=='m'? 'Kilograms' : 'Pounds'} : "
  weight = gets.chomp.to_f

  result = sys == 'i' && (weight*703)/(height**height) || sys == 'm' && weight/(height**height)
  output = "Your BMI is #{clean(result)}"
end


def trip
  print "Enter distance : "
  distance = gets.chomp.to_f
  print "Enter fuel efficiency (mpg) : "
  mpg = gets.chomp.to_f
  print "Enter cost pre gallon : "
  cost = gets.chomp.to_f
  print "Enter speed : "
  speed = gets.chomp.to_f

  # result = cost * ((distance-30)/mpg + 
  output = "Your trip will take #{clean(distance/speed)} hours and costs £#{clean(cost*distance/mpg)}"
end

mode = ''
begin
  print "Select a mode: (b)asic or (a)dvanced or bm(i) or (t)rip : "
  mode = gets.chomp
end while !['b','a','i','t'].include?(mode)

system('clear')
puts (mode == 'b' && "You Are in BASIC Mode" && basic) || (mode == 'a' && "You Are in ADVANCED Mode" && advanced) || (mode == 'i' && "You Are in BMI Mode" && bmi) || (mode == 't' && "You Are in TRIP Mode" && trip)

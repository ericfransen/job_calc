require 'colorize'

class JobCalc
  def hourly(num)
    puts "#{num}/HR =".red
    puts "#{num*8}/DAY".yellow
    puts "#{num*8*5}/WEEK".light_blue
    puts "#{num*8*5*4}/MONTH"
    puts "#{num*8*5*4*12}/YEAR".green
  end

  def yearly(num)
    puts "#{num}/YEAR =".red
    puts "#{num/12}/MONTH".yellow
    puts "#{num/12/4}/WEEEK".light_blue
    puts "#{num/12/4/5}/DAY"
    puts "#{num/12/4/5/8}/HR".green
  end
end

jobcalc = JobCalc.new

puts "Enter yearly or hourly amount:"
amount = gets.strip
amount = amount.gsub(',', '').to_i

if amount > 1000
  jobcalc.yearly(amount)
else
  jobcalc.hourly(amount)
end

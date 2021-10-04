require 'time'

dates = ['11 Aug 2020', '29 Jan', '27 Jan', '1 Dec 2022', '28 Jan']
time_dates = dates.map { |d| Time.parse(d) }

intervals = []
$i = 0
$j = dates.size - 2

for $i in 0..$j
  interval = []
  start_date = time_dates[$i]
  end_date = time_dates[$i + 1]

  validation = start_date <=> end_date

  if validation == 1
    @end_date = start_date
    start_date = end_date
    end_date = @end_date
  end 

  interval << start_date
  while interval.last != end_date
    interval << interval.last + 86400
  end

  intervals << interval
end

puts intervals.to_s
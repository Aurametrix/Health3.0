require 'csv'
require 'pp'

def distance ary1, ary2
  paired_points = ary1.zip(ary2)

  Math.sqrt(paired_points.map { |a, b| (a - b)**2 }.inject(:+))
end


new_iris = [5.0, 3.0, 4.4, 1.6, nil]

k = 5

data = CSV.read("iris.csv", converters: :all ).to_a

data.shift # Remove the header

neighbors = data.min_by(3) { |ary| distance new_iris[0..3], ary[0..3] }

puts neighbors.group_by { |a| a[4] }.max_by { |k, v| v.count }[0]

neighbors = data.sort_by { |ary| distance new_iris[0..3], ary[0..3] }.first(3)

puts neighbors.group_by { |a| a[4] }.max_by { |k, v| v.count }[0]

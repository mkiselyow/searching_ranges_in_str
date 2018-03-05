def string_range_scan(str)
  arr_of_ranges = []
  arr_of_ranges << range = ('1'..'9').to_a.join
  arr_of_ranges << range.reverse
  arr_of_ranges << range_leters = ('a'..'z').to_a.join
  arr_of_ranges << range_leters.reverse

  arr_of_ranges.each do |range|
    super_scan(range, str)
  end
  str
end

def super_scan(range, str)
  range.split('').each do |char|
    str.gsub!(range) {|match| p "#{match.to_s.chr}-#{match[match.length.to_i-1]}"}
    range.chop! if range.length > 3
  end
end

test_str = 'abcdab987612'
string_range_scan(test_str)
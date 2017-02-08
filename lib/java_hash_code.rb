require 'java_hash_code/version'

module JavaHashCode
  ##
  # Computes hash for given string with Java hashCode algorithm
  #
  # ==== Example
  #   JavaHashCode.compute('1234')    # 1509442
  #   JavaHashCode.compute('ABC abc') # -489353340
  #   JavaHashCode.compute('АБВ')     # 1032753
  #
  def self.compute(string_value)
    return 0 if string_value.nil? || string_value.empty?
    hash = 0

    power = string_value.size - 1
    string_value.each_char do |char|
      hash += char.ord * (31 ** power)
      power -= 1
    end

    [hash].pack('L').unpack('l')[0]
  end
end

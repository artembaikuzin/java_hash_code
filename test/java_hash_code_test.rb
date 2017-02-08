require 'test_helper'

class JavaHashCodeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::JavaHashCode::VERSION
  end

  def test_it_returns_zero_if_nil_or_empty
    assert_equal(0, JavaHashCode.compute(nil))
    assert_equal(0, JavaHashCode.compute(''))
  end

  def test_hash_case1
    (0..255).each do |c|
      assert_equal(c, JavaHashCode.compute(c.chr))
    end
  end

  def test_hash_case2
    assert_equal(1202062463,
                 JavaHashCode.compute('1234 ффффффффффффф sadfm ||[]'))
  end

  def test_hash_case3
    assert_equal(-658750532,
                 JavaHashCode.compute('Яfrekfnef 38hfif frefe r4r3 ФЫЫВУУАЦУА'))
  end

  def test_hash_case4
    assert_equal(1283828766,
                 JavaHashCode.compute('frej bjqp8iur qi784 g2u46ferq ll;;;"'))
  end

  def test_hash_case5
    assert_equal(1509442, JavaHashCode.compute('1234'))
  end

  def test_hash_case6
    assert_equal(-489353340, JavaHashCode.compute('ABC abc'))
  end

  def test_hash_case7
    assert_equal(1032753, JavaHashCode.compute('АБВ'))
  end
end

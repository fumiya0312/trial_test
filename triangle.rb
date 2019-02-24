class Triangle
  def check(a, b, c)
    if (a * b * c == 0)
      return "引数に0あり"
    elsif
      a == b && b == c
      return "正三角形"
    elsif
      (a == b || b == c || a == c) && (a + b > c && b + c > a && a + c > b)
      return "二等辺三角形"
    elsif
      (a + b > c && b + c > a && a + c > b)
      return "不等辺三角形"
    else
      return "三角形じゃないです><"
    end
  end
end
  #ARGVは全て文字列変換の為、数字に変換
  a = ARGV[0].to_i
  b = ARGV[1].to_i
  c = ARGV[2].to_i

  triangle = Triangle.new
  result = triangle.check(a, b, c)
  p result
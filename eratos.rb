class Eratos
  def eratos(n)
    nums = (2..n).to_a #2～nの探索リスト配列を用意
    primes = [] #探索リストの先頭の数を素数リストに放り込むための空の配列
    while nums.size > 0
      num = nums.shift #shiftでnumbersに代入した　倍数を探索リストから削除し、numに代入,numsには2はいない
      primes << num #numをnum_arrayに追加して素数の配列を作る
      nums.each do |x| #2はnumsから除外されているので3スタート
        if x % num == 0 #割り切れる　= 素数じゃない
          nums.delete(x) #割り切れた時点で探索リストのnumsから削除するif文
        end
      end
    end
    puts primes
  end
end
n = 30
test = Eratos.new
test.eratos(n)

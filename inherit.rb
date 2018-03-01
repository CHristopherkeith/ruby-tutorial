class RingArray < Array # 指定父类
	def [](i) # 重定义运算符[]
		# puts size
		idx = i % size # 计算新索引值
		super(idx) # 调用父类中同名的方法
	end
end
wday = RingArray["sun", "mon", "tus", "wen", "thu", "fri", "sat"]
p wday[6] #=> "土"
p wday[11] #=> "木"
p wday[15] #=> "月"
p wday[-1] #=> "土"
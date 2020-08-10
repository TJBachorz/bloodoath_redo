require 'pry'
require_relative './cult'
require_relative './follower'
require_relative './Bloodoath'


keystone = Cult.new('keystone', 'dillon',1800, 'full send')
breck = Cult.new('breck', 'frisco',1900, 'powder day')
vail = Cult.new('vail', 'eagle',2000, 'groomers')
bc = Cult.new('bc', 'eagle',2010, 'lift line')
adam = Follower.new('adam', 18, 'just do it')
bill = Follower.new('bill', 20, 'get rich')
chris = Follower.new('chris',22, 'be happy')
dan = Follower.new('dan', 24, 'im dope and i do dope things')
evan = Follower.new('evan',26, 'protect and serve')
greg = Follower.new('greg',28, 'who am i')


oath1 = Bloodoath.new(keystone, adam, '2019/1/1')
oath2 = Bloodoath.new(breck, bill, '2020/1/2')
oath3 = Bloodoath.new(vail, chris, '2020/1/1')
oath4 = Bloodoath.new(bc, dan,'2020/1/1')
oath5 = Bloodoath.new(keystone, evan, '2020/1/1')
oath6 = Bloodoath.new(breck, greg,'2020/1/5')
oath7 = Bloodoath.new(vail, adam,'2020/1/5')
oath8 = Bloodoath.new(bc, bill,'2020/1/5')
oath9 = Bloodoath.new(keystone, chris, '2020/1/5')
oath10 = Bloodoath.new(breck, dan, '2020/1/13')
oath11 = Bloodoath.new(vail, evan, '2020/1/5')
oath12 = Bloodoath.new(keystone, dan, '2016/12/1')
oath13 = Bloodoath.new(keystone, greg, '2020/10/1')
oath14 = Bloodoath.new(vail, bill, '2020/11/15')
oath15 = Bloodoath.new(vail, dan, '2020/9/5')
# jon = Follower.new "Jon", 53, "When in Rome..."
# david = Follower.new "David", 33, "Don't tread on me"

# branch_davidians = Cult.new "Branch Davidians", "Texas", 1992, "We really think David is on to something."

# oath1 = Bloodoath.new branch_davidians, david, 04-19-92

# a = Cult.new("Rajneeshpuram", "Antelope", 1981, "Baghwan is the best!")
# b = Cult.new("Scientology", "New York", 1977, "Time to go clear!")
# c = Cult.new("Blue Man Group", "Las Vegas", 1995, "...")
# d = Cult.new("Green Man Group", "Las Vegas", 1996, "We hate blue!")
# hailey = Follower.new("Chris", 26, "Yolo")
# sam = Follower.new("Dick", 36, "I need a sign!")
# shelley = Follower.new("Mike", 18, "I'm impressionable!")
# z = Bloodoath.new(hailey, a, "2017")
# ab = Bloodoath.new(sam, b, "2014")

binding.pry

require_relative '../models/blog.rb'
require_relative '../models/posts.rb'


require 'rspec'

describe 'Blog class' do
Daily = Post.new("Daily news", Time.new(2016, 5, 2), "The stuff that happened today")
Weekly = Post.new("Weekly Recap", Time.new(2016, 4, 3), "The stuff that happened this week")
Strange = Post.new("Weird stuff", Time.new(2016, 5, 3), "MAybe aliens?!?!")
Death = Sponsored.new("Deadly?", Time.new(2016, 6, 14), "Watch yo back!!!")
Myblog = Blog.new


Myblog.add_post(Daily)
Myblog.add_post(Weekly)
Myblog.add_post(Strange)
Myblog.add_post(Death)

arr = [Daily, Weekly, Strange, Death]
arr1 = [Death, Strange, Daily, Weekly]


  it " blogs post method returns an array" do
    expect(Myblog.bposts).to eq(arr)
  end

  it " return an array sortted by the posts date of creation" do
    expect(Myblog.latest_posts).to eq(arr1)
  end

end
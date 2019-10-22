class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select{|post|post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end
  
  def self.post_count
    count = 0
    Post.all.each{|n| count += 1 if n.author != nil}
    count
  end
  
end
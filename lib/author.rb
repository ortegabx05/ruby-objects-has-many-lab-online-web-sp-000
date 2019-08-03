<<<<<<< HEAD
class Author 
  
  attr_accessor :name
  
  @@post_count = 0

   def initialize(name)
    @name = name
    @posts = []
  end

   def posts
    @posts
    Post.all.select {|post| post.author == self}
  end

   def add_post(post)
    @posts << post
=======
class Author

  attr_accessor :title

  @@post_count = 0
  
  def initialize(name)
    @title = title
    @posts = []
  end

  def add_post(post)
    self.posts << post
>>>>>>> 88e7c80a9f20eb5ead93195aa6ca9d33b03872fc
    post.author = self
    @@post_count += 1
  end

<<<<<<< HEAD
   def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
=======
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
>>>>>>> 88e7c80a9f20eb5ead93195aa6ca9d33b03872fc
    post.author = self
    @@post_count += 1
  end

<<<<<<< HEAD
   def self.post_count
    @@post_count += 1
  end

 end 
=======
  def posts
    @posts
  end
    
  def self.post_count
    @@post_count
  end
end
>>>>>>> 88e7c80a9f20eb5ead93195aa6ca9d33b03872fc

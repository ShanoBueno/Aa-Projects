require "sqlite3"
require "singleton"

class QuestionsDatabase < SQLite3::Database 
  
  include Singleton
  
  def initialize
    super('questions.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Question 
  attr_accessor :id, :title, :body, :author_id
  def self.find_by_id(id)
    questions = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM questions WHERE id = ?
    SQL
    return nil unless questions.length > 0
    Question.new(questions.first)
  end

  def self.find_by_author_id(author_id)
    questions = QuestionsDatabase.instance.execute(<<-SQL, author_id)
      SELECT * FROM questions WHERE author_id = ?
    SQL
    questions.map { |hsh| Question.new(hsh) }
  end
  
  def initialize(options)
    @id = options['id']
    @title = options['title']
    @body = options['body']
    @author_id = options['author_id']
  end
end

class User
  attr_accessor :id, :fname, :lname
  def self.find_by_id(id)
    users = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM users WHERE id = ?
    SQL
    return nil unless users.length > 0 
    User.new(users.first)
  end

  def self.find_by_name(fname, lname)
    users = QuestionsDatabase.instance.execute(<<-SQL, fname, lname)
      SELECT * FROM users WHERE fname = ? AND lname = ?
    SQL
    users.map { |hsh| User.new(hsh) }
  end
  
  def initialize(options)
    @id = options['id']
    @fname = options['fname']
    @lname = options['lname']
  end
end

class Reply
  attr_accessor :id, :body, :question_id, :replier_id, :parent_reply_id
  def self.find_by_id(id)
    replies = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM replies WHERE id = ?
    SQL
    return nil unless replies.length > 0 
    Reply.new(replies.first)
  end
  
  def self.find_by_replier_id(replier_id)
    replies = QuestionsDatabase.instance.execute(<<-SQL, replier_id)
      SELECT * FROM replies WHERE replier_id = ?
    SQL
    replies.map { |hsh| Reply.new(hsh) }
  end

  def self.find_by_question_id(question_id)
    replies = QuestionsDatabase.instance.execute(<<-SQL, question_id)
      SELECT * FROM replies WHERE question_id = ?
    SQL
    replies.map { |hsh| Reply.new(hsh) }
  end

  def initialize(options)
    @id = options['id']
    @body = options['body']
    @question_id = options['question_id']
    @replier_id = options['replier_id']
    @parent_reply_id = options['parent_reply_id']
  end
end

class QuestionFollow
  attr_accessor :id, :question_id, :follower_id
  def self.find_by_id(id)
    question_follows = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM question_follows WHERE id = ?
    SQL
    return nil unless question_follows.length > 0 
    QuestionFollow.new(question_follows.first)
  end
  
  def initialize(options)
    @id = options['id']
    @question_id = options['question_id']
    @follower_id = options['follower_id']
  end
end

class QuestionLike
  attr_accessor :id, :question_id, :like_user_id
  def self.find_by_id(id)
    question_likes = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM question_likes WHERE id = ?
    SQL
    return nil unless question_likes.length > 0 
    QuestionLike.new(question_likes.first)
  end
  
  def initialize(options)
    @id = options['id']
    @question_id = options['question_id']
    @like_user_id = options['like_user_id']
  end
end

# p User.find_by_name("Kush", "Push")
# p User.find_by_id(2)
# p Question.find_by_id(1)
# p Question.find_by_author_id(1)
# p Reply.find_by_id(2)
# p Reply.find_by_replier_id(2)
# p Reply.find_by_question_id(2)
# p QuestionFollow.find_by_id(2)
# p QuestionLike.find_by_id(2)

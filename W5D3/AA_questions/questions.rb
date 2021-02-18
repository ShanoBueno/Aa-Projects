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

class Questions 
  attr_accessor :
  def self.find_by_id
    questions = QuestionsDatabase.instance.execute(<<-SQL, id)
      SELECT * FROM questions WHERE id = ?
    SQL
      return nil unless 
        questions.length > 0 
      end
  end
  
  def initialize(options)
    @id = options['id']
    @title = options['title']
    @body = options['body']
    @author_id = options['author_id']

  end




end
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  fname TEXT,
  lname TEXT
)

CREATE TABLE questions (
  title TEXT,
  body TEXT,
  author_id INTEGER,
  FOREIGN KEY (author_id) REFERENCES (users.id)
)

CREATE TABLE question_follows (
  author_id INTEGER,
  question TEXT,
  follower_id INTEGER,
  FOREIGN KEY (question) REFERENCES (questions.title)
  FOREIGN KEY (author_id) REFERENCES (users.id)
  FOREIGN KEY (follower_id) REFERENCES (users.id)
)


DROP TABLE if EXISTS question_likes;
DROP TABLE if EXISTS replies;
DROP TABLE if EXISTS question_follows;
DROP TABLE if EXISTS questions;
DROP TABLE if EXISTS users;

PRAGMA foreign_keys = ON;

CREATE TABLE users (
  id INTEGER PRIMARY KEY, 
  fname TEXT NOT NULL, 
  lname TEXT NOT NULL 
);

CREATE TABLE questions (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL, 
  body TEXT NOT NULL, 
  author_id INTEGER NOT NULL, 
  FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
  author_id INTEGER NOT NULL, 
  question_id INTEGER NOT NULL, 
  follower_id INTEGER NOT NULL, 
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (author_id) REFERENCES users(id),
  FOREIGN KEY (follower_id) REFERENCES users(id)
);

CREATE TABLE replies(
  id INTEGER PRIMARY KEY,
  body TEXT NOT NULL,
  question_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL,
  parent_reply_id INTEGER,
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (author_id) REFERENCES users(id),
  FOREIGN KEY (parent_reply_id) REFERENCES replies(id)
);


CREATE TABLE question_likes (
  author_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (author_id) REFERENCES users(id)
);

INSERT INTO
users(fname, lname)
VALUES
  ('Ned', 'Question'),
  ('Kush', 'Question'),
  ('Earl', 'Question');

INSERT INTO 
  questions(title,body,author_id)
VALUES
  ('Ned Question', 'Ned Ned Ned',1), 
  ('Kush Question', 'Kush Kush Kush',2), 
  ('Earl Question', 'Earl Earl Earl',3); 



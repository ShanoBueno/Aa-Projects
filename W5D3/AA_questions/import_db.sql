

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
  question_id INTEGER NOT NULL, 
  follower_id INTEGER NOT NULL, 
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (follower_id) REFERENCES users(id)
);

CREATE TABLE replies(
  id INTEGER PRIMARY KEY,
  body TEXT NOT NULL,
  question_id INTEGER NOT NULL,
  replier_id INTEGER NOT NULL,
  parent_reply_id INTEGER,
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (replier_id) REFERENCES users(id),
  FOREIGN KEY (parent_reply_id) REFERENCES replies(id)
);


CREATE TABLE question_likes (
  like_user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,
  FOREIGN KEY (question_id) REFERENCES questions(id),
  FOREIGN KEY (like_user_id) REFERENCES users(id)
);

INSERT INTO
  users(fname, lname)
VALUES
  ('Ned', 'Dead'),
  ('Kush', 'Push'),
  ('Earl', 'Pearl');

INSERT INTO 
  questions(title,body,author_id)
VALUES
  ('Ned Question', 'This is my question from Ned.',1), 
  ('Kush Question', 'What is todays date? -Kush' ,2), 
  ('Earl Question', 'What is my name? -Earl',3); 


INSERT INTO 
  question_follows(question_id, follower_id)
VALUES
  (1, 2), 
  (2, 3), 
  (3, 1); 


INSERT INTO 
  replies(body, question_id, replier_id, parent_reply_id)
VALUES
  ('That is not a question.', 1, 2, NULL), 
  ('Get a calendar!', 2, 1, NULL), 
  ('Your name is Earl.', 3, 1, NULL),
  ('That is rude', 2, 3, 2);

INSERT INTO
  question_likes(like_user_id, question_id)
VALUES
  (1, 1),
  (3, 3);

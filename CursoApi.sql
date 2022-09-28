CREATE TABLE "users" (
  "id" uuid UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "role_id" int NOT NULL,
  "course_id" int
);

CREATE TABLE "courses" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "user_id" uuid NOT NULL
);

CREATE TABLE "courses_videos" (
  "id" int PRIMARY KEY,
  "title" varchar,
  "url" varchar NOT NULL,
  "curse_id" int NOT NULL,
  "category_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("curse_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into roles (id, "name") values (0, 'student'),(1, 'admin')

insert into categories (id, "name") values (0,'normal'),(1,'expert');

insert into users (id, "name", email,"password",age, role_id) values ('be2829bf-85ce-4cb6-8bde-b59e559ebfce', 'sebas', 'sebas@gmail.com', '12345', '22',0),('d53decfe-c622-442f-a448-3d53394b1404', 'Paula', 'paula@gmail.com', '54132', 23,1);

insert into courses (id,title,description,"level",teacher,user_id) values (0,'Front-end','how to become a front-end developer', 'easy', 'Juan','be2829bf-85ce-4cb6-8bde-b59e559ebfce'),(1,'Back-end','how to become a back-end developer','easy','Pepito','d53decfe-c622-442f-a448-3d53394b1404')

insert into courses_videos (id, title,url,curse_id,category_id) values (0,'Initial','http:asdlkfjksl.com',0,0),(1,'The process','http:processalisfj.com',1,0);




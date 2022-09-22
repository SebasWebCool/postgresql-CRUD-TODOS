DROP TABLE IF EXISTS todos;

CREATE TABLE "todos" (
  "id" uuid,
  "task" varchar NOT NULL,
  "start_date" date NOT NULL,
  "end_date" date NOT NULL,
  "note" float,
  "is_iscomplete" boolean DEFAULT false
);

insert into users  values('4f095517-440d-4940-a2f8-4d050e53c9dc', 'create an e-comers', '10/03/2022','12/03/2022', 0, false),('b010672d-4bd1-4963-936f-e88d9cffe2db', 'create a users CRUD', '10/02/2022','12/02/2022', 0 ,false),('d78161d6-e50f-482b-b0f7-1b157228ec0c', 'solve a javascript problem', '10/04/2022','12/04/2022',5.5, true);

--Get all task

select * from todos u 


select * from users where is_iscomplete = true;
select * from users u 




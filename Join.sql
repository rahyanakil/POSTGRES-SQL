
--create user table 
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)
--create post table
--Cascade means delete with foreign key 

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE 
)
--insert data into the user table 

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')
--insert data into post1 TABLE

INSERT INTO post(title,user_id) VALUES 
('Enjoying a sunny day with AKASH!',1),
('Batash just shared an amazing!',2),
('Exploring adventures with sagor',3),
('Nodis wisdom always leaves me inspired',4)

select * from "user";
select * from post;

SELECT * FROM post as p  
JOIN "user"u on p.user_id =u.id;

--LEFT JOIN
SELECT * FROM post as p         
lEFT JOIN "user" u on p.user_id = u.id;

--RIGHT JOIN
SELECT * FROM post as p             
RIGHT JOIN "user" u on p.user_id = u.id;

--LEFT OUTER JOIN
SELECT * FROM post as p
LEFT OUTER JOIN "user" u on p.user_id = u.id;
--RIGHT OUTER JOIN
SELECT * FROM post as p
RIGHT OUTER JOIN "user" u on p.user_id = u.id;
--FULL OUTER JOIN           
SELECT * FROM post as p
FULL OUTER JOIN "user" u on p.user_id = u.id;






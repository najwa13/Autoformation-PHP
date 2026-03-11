CREATE TABLE  library_books(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title  VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    published_year YEAR ,
    status ENUM ('Available','Borrowed','Lost'),
    price DECIMAL(10,2)

);
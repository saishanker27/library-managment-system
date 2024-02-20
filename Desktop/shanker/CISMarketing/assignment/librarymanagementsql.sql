CREATE TABLE member (
    memberId BIGINT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    emailAddress VARCHAR(50),
    phoneNumber VARCHAR(10)
);

describe member;

CREATE TABLE books (
    bookId BIGINT,
    title VARCHAR(50),
    author VARCHAR(50),
    isbn VARCHAR(50),
    price DOUBLE,
    genre VARCHAR(50)
);

describe books;
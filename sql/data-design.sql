-- Set the collation of DB to utf8
ALTER DATABASE wharris21 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- These statements drop the tables and re-add them


-- CREATE TABLE statement for user entity
CREATE TABLE user (
   userId BINARY(16) NOT NULL,
   userHash CHAR(97) NOT NULL,
   userLocation CHAR(20),
   userEmail VARCHAR(128) NOT NULL,
   userPhoneNumber VARCHAR(32),
   -- these prevent duplicate data
   UNIQUE(userEmail),
   UNIQUE(userPhoneNumber),
   -- primary key for user entity
   PRIMARY KEY(userId)
);

-- CREATE TABLE statement for post entity
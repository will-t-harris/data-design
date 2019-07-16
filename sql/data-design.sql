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
   -- unique keys -- these prevent duplicate data
   UNIQUE(userEmail),
   UNIQUE(userPhoneNumber),
   -- primary key for user entity
	PRIMARY KEY(userId)
);

CREATE TABLE postStatus (

);

-- CREATE TABLE statement for post entity
CREATE TABLE post (
	postId BINARY(16) NOT NULL,
	postUserId BINARY(16) NOT NULL,
	postPostStatusId BINARY(16) NOT NULL,
	postArea VARCHAR(128) NOT NULL,
	postTitle VARCHAR(70) NOT NULL,
	postCategory VARCHAR(32) NOT NULL,
	postDate DATETIME(17) NOT NULL,
	postExpiration DATETIME(17) NOT NULL,
	postContent VARCHAR(65539) NOT NULL,
	-- unique keys for post entity
	UNIQUE(postUserId),
	UNIQUE(postPostStatusId),
	UNIQUE(postTitle),
	-- foreign keys for post entity
	FOREIGN KEY(postUserId) REFERENCES user(userId),
	FOREIGN KEY(postPostStatusId) REFERENCES postStatus(postStatusId)
);
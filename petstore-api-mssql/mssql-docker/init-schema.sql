IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'pets')
    BEGIN
        EXEC ('create schema pets')
    END

go

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'pets' AND type = 'U')

    BEGIN

        PRINT 'Creating tables with sample data'

        create table pets.pets_category
        (
            id    int identity
                constraint pets_category_pk
                    primary key,
            label varchar(255)
        )

        create table pets.pets
        (
            id          int identity
                constraint pets_pk
                    primary key,
            nickname    varchar(255),
            category_id int
                constraint pets_pets_category_id_fk
                    references pets.pets_category,
            status      varchar(255)
        )

        create table pets.pets_images
        (
            pet_id   int          not null,
            imageurl varchar(255) not null,
            constraint pets_images_pk
                primary key (pet_id, imageurl)
        )

        create table pets.pets_tags
        (
            id     int identity
                constraint pets_tags_pk
                    primary key,
            pet_id int,
            name   varchar(255)
        )

        INSERT INTO pets.pets_category (label) VALUES (N'Dog');
        INSERT INTO pets.pets_category (label) VALUES (N'Cat');
        INSERT INTO pets.pets_category (label) VALUES (N'Bird');
        INSERT INTO pets.pets_category (label) VALUES (N'Mouse');
        INSERT INTO pets.pets_category (label) VALUES (N'Horse');

        INSERT INTO pets.pets (nickname, category_id, status) VALUES (N'Bello', 1, N'available');
        INSERT INTO pets.pets (nickname, category_id, status) VALUES (N'Lucky', 2, N'available');
        INSERT INTO pets.pets (nickname, category_id, status) VALUES (N'Annie', 3, N'pending');
        INSERT INTO pets.pets (nickname, category_id, status) VALUES (N'Ratti', 4, N'sold');

        INSERT INTO pets.pets_images (pet_id, imageurl) VALUES (1, N'https://www.example.com/image1');

        INSERT INTO pets.pets_tags (pet_id, name) VALUES (1, N'cute');
        INSERT INTO pets.pets_tags (pet_id, name) VALUES (1, N'noisy');
        INSERT INTO pets.pets_tags (pet_id, name) VALUES (2, N'miauw');
        INSERT INTO pets.pets_tags (pet_id, name) VALUES (3, N'yellow');
        INSERT INTO pets.pets_tags (pet_id, name) VALUES (4, N'fast');
        INSERT INTO pets.pets_tags (pet_id, name) VALUES (1, N'brown');

    END

go
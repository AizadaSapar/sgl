CREATE TABLE menu1(
                      id SERIAL PRIMARY KEY ,
                      number_of_foods INT NOT NULL,
                      choose_a_kitchen INTEGER not null
);
CREATE table Asian_foods(
                            id int primary key,
                            Korean_food varchar,
                            Chinese_food varchar
);
create table sushi(
                      id int primary key,
                      Maki_sushi varchar,
                      Nigiri_sushi varchar,
                      Temaki_sushi varchar
);
create table salads(
                       id int primary key,
                       green_salads varchar,
                       vegetable_salads varchar,
                       salads_of_pasta varchar,
                       mixed_salads varchar

);
create table beverages(
                          id int primary key,
                          Soft_drinks varchar,
                          Water varchar,
                          Beer varchar,
                          Wine varchar
);

alter table menu add column Asian_foods_id int references Asian_foods(id);
alter table Asian_foods add column sushi_id int references sushi(id);
alter table Asian_foods add column salads_id int references salads(id);
alter table Asian_foods add column beverages_id int references beverages(id);

CREATE TABLE Turkish_foods(
                              id int primary key ,
                              breakfast VARCHAR(100),
                              salads VARCHAR,
                              beverages VARCHAR,
                              sweets VARCHAR
);
create table breakfast_menu(
                               id int primary key ,
                               cheese VARCHAR(50),
                               bred VARCHAR(50),
                               egg int,
                               fruits VARCHAR
);
create table kebabs(
                       id int primary key,
                       doner VARCHAR(50),
                       kofte VARCHAR(50),
                       shaverma varchar(60)
);
create table breads(
                       id int primary key,
                       cimit varchar(50),
                       tost INTEGER,
                       baslama varchar(50),
                       borek varchar(80)
);
create table soups(
                      id int primary key ,
                      yayla_chorba varchar,
                      iskender_chorba varchar,
                      misir_chorba varchar,
                      ezogelin_chorba varchar,
                      ayran_chorba varchar
);
alter table menu1 add column Turkish_foods int references Turkish_foods(id);
alter table Turkish_foods add column breakfast_menu int references breakfast_menu(id);
alter table Turkish_foods add column  kebabs int references kebabs(id);
alter table Turkish_foods add column  breads int references breads(id);
alter table Turkish_foods add column   soups int references soups(id);

CREATE TABLE Italian_foods(
                              id INTEGER PRIMARY KEY,
                              Pasta varchar,
                              Pizza varchar,
                              Risotto varchar,
                              Wine varchar
);
create table pastas(
                       id int primary key,
                       price int,
                       weight INTEGER,
                       types_pasta varchar(100),
                       make_date int
);
create table pizzas(
                       id int primary key,
                       price int,
                       size INTEGER,
                       add_of_pizza varchar

);
create table wine(
                     id int primary key,
                     price INTEGER,
                     types_of_wine varchar,
                     glass_of_wine int
);
alter table menu1 add column Italian_foods int references Italian_foods(id);
alter table Italian_foods add column breakfast_menu int references breakfast_menu(id);
alter table Italian_foods add column  pastas int references pastas(id);
alter table Italian_foods add column   pizzas int references  pizzas(id);
alter table Italian_foods add column   wine int references wine(id);
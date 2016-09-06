CREATE TABLE topic(
 topic varchar(40) NOT NULL,
  id int unsigned NOT NULL,
   createddate date NOT NULL,
    PRIMARY KEY(id)
    )engine=innodb; 
INSERT topic SET topic='就職活動', id='1', createddate='2016-8-19';
INSERT topic SET topic='大学受験', id='2', createddate='2016-8-19'; 
INSERT topic SET topic='夏のレジャー施設', id='3', createddate='2016-8-19';  


CREATE TABLE comment(
 comment varchar(140) NOT NULL,
  id_topic int unsigned NOT NULL,
   id int unsigned NOT NULL,
    createddate date NOT NULL,
     PRIMARY KEY(id),
      FOREIGN KEY(id_topic)
       REFERENCES topic(id)
       )engine=innodb; 

INSERT comment SET comment='就職活動はいつから始めますか？', id_topic='1', id='1', createddate='2016-8-19';
 INSERT comment SET comment='おすすめの総合商社はありますか？', id_topic='1', id='2', createddate='2016-8-19'; 
INSERT comment SET comment='法学部に行くならどこの大学がいいですか？', id_topic='2', id='3', createddate='2016-8-19';



  CREATE TABLE reply(
 reply varchar(140) NOT NULL,
  id_comment int unsigned NOT NULL,
   id int unsigned NOT NULL,
    createddate date NOT NULL,
     FOREIGN KEY(id_comment)
      REFERENCES comment(id)
        )engine=innodb; 

INSERT reply SET reply='だいたい大学三年生の冬くらいです。', id_comment='1', id='1', createddate='2016-8-19';
 INSERT reply SET reply='私は春に始めました。', id_comment='1', id='2', createddate='2016-8-19'; 
INSERT reply SET reply='早慶いいと思います。', id_comment='3', id='3', createddate='2016-8-19';


drop table topics;
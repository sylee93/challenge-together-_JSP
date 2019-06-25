ALTER TABLE Cert DISABLE PRIMARY KEY CASCADE;
ALTER TABLE Reply DISABLE PRIMARY KEY CASCADE;
ALTER TABLE Join DISABLE PRIMARY KEY CASCADE;
ALTER TABLE Together DISABLE PRIMARY KEY CASCADE;
ALTER TABLE Member DISABLE PRIMARY KEY CASCADE;

TRUNCATE TABLE Cert;
TRUNCATE TABLE Reply;
TRUNCATE TABLE Join;
TRUNCATE TABLE Together;
TRUNCATE TABLE Member;
TRUNCATE TABLE OperInfo;

--------------------------------------------------------
--  [������] ������ ������ - �ݿ���-3��-29-2019   33
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190305',233,'gowith','img/ksm_manbo20190305.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190306',233,'gowith','img/ksm_manbo20190306.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190307',233,'gowith','img/ksm_manbo20190307.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190309',233,'gowith','img/ksm_manbo20190309.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190310',233,'gowith','img/ksm_manbo20190310.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190311',233,'gowith','img/ksm_manbo20190311.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190312',233,'gowith','img/ksm_manbo20190312.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190313',233,'gowith','img/ksm_manbo20190313.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190315',233,'gowith','img/ksm_manbo20190315.jpg');
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190317',233,'gowith','img/ksm_manbo20190317.jpg');
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,201,'�̷��� �� �����ؾ���.','ggyo','20190210');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,201,'������ ����','gozila','20190210');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,201,'���ϸ� ���� �ƴ�?','gazua','20190211');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,204,'�� �̻��ѵ�? ','gowith','20190304');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,204,'�� ������ �� �Ұ���','gazua','20190305');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,204,'�������ƿ�','ggyo','20190306');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,222,'���줻��','ggyo','20181225');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,222,'�� ����� ���Դ� �ε�?','gozila','20181226');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,222,'��--------------------��------------������','gowith','20181227');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,233,'���̵�, ���� ������ �� ����','gazua','20180314');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,233,'���� �̷��� ���������?','gowith','20180314');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,233,'�̷��� ���� �� �Ա� �ƴմϱ�?','gozila','20180315');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (201,'gazua','20190210',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (204,'gozila','20190305',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (222,'ggyo','20191224',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (233,'gowith','20190303',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (201,'ggyo','20190210',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (204,'gazua','20190305',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (222,'gowith','20191224',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (233,'gozila','20190303',0);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('gowith','�輺��','19442','010-2322-9912','gowith@gmail.com',19230,'20160302');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('ggyo','������','12355','010-2443-2211','ggyo19@naver.com',1233,'20170706');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('gazua','������','123116','010-5643-9811','gazua@gmail.com',0,'20110202');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('gozila','�ڻ���','1251156','010-2411-2991','goinggo@gmail.com',1233500,'20110603');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (233,'�����ȱ�','�����Ȱ� �ǰ�ì����','img/ksm_manbo.jpg',500,'20190305','20190318',1,50,2,0,'gowith','20190301',3);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (222,'�Ϸ翭��','�Ϸ� �� ���� ���ñ�','img/ksm_water.jpg',1000,'20190101','20190402',10,100,2,0,'ggyo','20181220',1);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (201,'�Ϸ��ѳ�','�ҽ��Ͽ� �������','img/ksm_onemeal.jpg',700,'20190215','20190415',5,30,2,0,'gazua','20190208',1);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (204,'��ħì��','��ħ�԰� �Ϸ�����','img/ksm_breakfast.jpg',900,'20190308','20190318',2,50,2,0,'gozila','20190302',1);

--------------------------------------------------------
-- [�ڼ���] ������ ������ - �ݿ���-3��-29-2019   
--------------------------------------------------------
Insert into OPERINFO (LASTPROCDATE,OPERDATE) values ('20100101',to_date('19/04/16','RR/MM/DD'));

REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190106',700,'zebra',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190107',700,'xylitol',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190107',700,'young',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190107',700,'zebra',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190108',700,'xylitol',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190109',700,'young',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190109',700,'zebra',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190110',700,'xylitol',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190112',700,'young',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190113',700,'zebra',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190114',700,'xylitol',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190114',700,'young',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190114',700,'zebra',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,700,'�� ���ô� �� ���� �߿�����. ������ �ѹ� �� ���ڽ��ϴ�.','zebra','20190101');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,700,'2���Ͱ� �����ұ��? ����','zebra','20190105');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,700,'���� �ϸ�����~ �� �� �� ���� ��...','xylitol','20190115');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (4,700,'�� �Դ� �� ����� �����ߴµ�, ���� ���� �ƴϾ���.','young','20190116');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,701,'���� ��� �� �� �Ǿ� �����?','zebra','20190101');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,701,'���� ���� ������ �� ���ƿ�. ���ٴ� �� ���� �Ѵٴ� ��...','zebra','20190203');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,701,'���ٴ� ����... ���� �ȶ�������. �� �����ϸ鼭 �ѹ� ����! ��','xylitol','20190202');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (4,701,'���ٶ�... �̰� �ϸ� ������ �� ���� �Ǿ������? �ٽ� �����ϸ� �ѹ� �� ���� ����.','young','20190329');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,702,'������ ���� ��ٴµ�. ������ �ѻ纮. ���ú��� ������� �ѹ� �ٳຼ���?','zebra','20190305');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,702,'�ݼ��մϴ�. �ǳ� ���������͸� Ÿ�� �ٳ�µ� ���� ä����� �󸶳� �ɾ�� �ұ��? ��������� ��� �� ��.','zebra','20190329');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,702,'����! ���� �� �� �� ���� ���. ������ �����. ��','xylitol','20190401');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (702,'zebra','20190320',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (702,'xylitol','20190311',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (702,'young','20190303',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (701,'zebra','20190207',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (701,'xylitol','20190207',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (701,'young','20190208',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (700,'zebra','20190101',2000);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (700,'xylitol','20190102',1000);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (700,'young','20190103',1000);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('xylitol','���ϸ���','xylitol','010-3923-9820','saintp@naver.com',89234,'20190102');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('young','������','young','010-2345-9201','young@daum.net',238909,'20170101');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('zebra','��踻','zebra','016-9029-2298','zebra@hotmail.com',43927,'20150323');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (700,'�Ϸ翡 �� 2���� ���ñ�','�����ñ� �������? ���� ���� ���ž� �ǰ��� ���ƿ�.','img/saintpWater.png',10000,'20190105','20190114',2,1000,3,0,'zebra','20190101',3);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (701,'���� ���ܸ� �����ϱ�','���� ���ٴ� ���� �� 3���� �ϱ�� �ؿ�. �̰� �ǿܷ� ��ƴ� ��. 
������ �� ���� ��� ����� �⻵�ϰ�, ���� �ູ�� ����. ^^
','img/saintpThanks.jpg',30000,'20190210','20190310',3,2000,2,0,'zebra','20190201',0);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (702,'���� ���� �ȱ�','���ϸ����ȱ��ϱ��.','img/saintpManbo.png',20000,'20190430','20191231',10,50,3,0,'xylitol','20190301',1);

--------------------------------------------------------
-- [������] ������ ������ - �ݿ���-3��-29-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190422',601,'seoinjun',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190423',601,'seomoon',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190425',601,'seomoon',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190230',602,'seosungjun',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190228',602,'seomoon',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190301',602,'seomoon',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190311',602,'seomoon',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,601,'������ �غ���!!','seoinjun','20190420');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,601,'� å���� �ϳ���?','seomoon','20190401');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,602,'��������?','seomoon','20190219');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,603,'���� �ϰ������!','seosungjun','20190327');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,604,'�Ȱ� �� ����� ������ �� �ֳ���?','seoinjun','20190327');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,604,'Can I do it? ','seostar','20190401');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (601,'seoinjun','20190420',6666);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (602,'seosungjun','20190219',1666);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (602,'seomoon','20190219',4998);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (601,'seomoon','20190420',13332);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('seoinjun','������','seoinjun','010-1234-1234','seo@naver.com',50000,'20190329');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('seomoon','����','seomoon','010-1234-6789','moon@navr.com',70000,'20190311');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('seosungjun','������','seosungjun','010-6789-1234','shseo@gmail.com',30000,'20190314');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('seostar','����','seostar','010-1234-4311','star@daum.net',0,'20190328');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (601,'�Ϸ� å1�ð��б�','�Ϸ翡 å 1�ð� �д� �����Դϴ�.
����ְ�����?
å�� ���� �ʰ� ������� �����ϴٺ��� ���Ҹ��� �ϰ� �˴ϴ�.
å ������ ������ �����ϴ�.
1. ���ѹα� ���
2. ���̿�ũ�� ����������
3. ','img/seo_601_book.jpg',100000,'20190420','20190720',2,30,2,0,'seoinjun','20190329',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (602,'��ħ6�ñ��','���� 6�ÿ� �Ͼ�� ���������� �ø��� �����Դϴ�. 
ȭ����!!','img/seo_602_wakeUp01.jpg',100000,'20190219','20190419',10,40,2,0,'seoinjun','20190204',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (603,'���� ���� ���۸���','���� ����� ������ �ϴ� �����Դϴ�. A4���� ���� ǥ�� ���, ��Ʈ ������ 11���Ϸ� 1�� �̻��� ���� ���� ����, �����ϴ� �����Դϴ�. ���� ������ ���� �������ָ� ���� �� �����ϴ�','img/seo_603_writing01.jpg',25000,'20190407','20190609',7,15,1,0,'seomoon','20190320',1);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (604,'30�ϵ���PullUp �����ϱ�','���� PullUp�� �ϴ� �����Դϴ�. 30�� ���� �����մϴ�. �������� �����մϴ�. ','img/seo_604_pullUp.jpg',30000,'20190414','20190514',10,60,2,0,'seomoon','20190401',1);

--------------------------------------------------------
-- [������] ������ ������ - �ݿ���-3��-29-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20180325',500,'qty5252',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20180326',500,'pickle52',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20180327',500,'pjyun11',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20180328',500,'qulity77',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20180329',500,'rrrrap777',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,500,' �����׿�!!','qty5252','20180315');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,500,' ��������Ф�','qty5252','20180315');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,510,'�ٵ� �������ô�!','pjyun11','20190311');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (500,'pickle52','20180320',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (500,'pjyun11','20180316',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (500,'qulity77','20180317',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (500,'qty5252','20180315',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (500,'rrrrap777','20180320',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (510,'pjyun11','20190311',0);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('phk0987','������','phk0987','010-5648-8963','phk0987@naver.com',80000,'20180708');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('pickle52','�ڿ���','pickle01','010-1298-7659','pickle01@daum.net',45000,'20170630');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('pjyun11','������','pjyun11','010-9966-7756','pjyun11@nate.com',76000,'20160821');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('queen99','������','queen99','010-9631-7852','queen99@apple.com',142000,'20180511');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('qulity77','�̱��','qulity77','010-7564-1359','qulity77@sal.co.kr',16000,'20170425');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('qty5252','������','qty5252','010-2233-4593','qty5252@naver.com',18000,'20161209');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('rabbit03','������','rabbit03','010-7896-6528','rabbit03@naver.com',74000,'20181104');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('redy1004','��â��','redy1004','010-7832-1116','redy1004@daum.net',32000,'20170329');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('rrrrap777','������','rrrrap777','010-878-1952','rrrrap777@yahoo.co.kr',24000,'20160918');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together 
(toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (500,'�����Ͽ� å 1���б�','���� �� �Ǿ� å�� �����鼭 ������ ��� �ױ�','img/ynvly_book.jpg',10000,'20180401','20180428',5,30,5,0,'qty5252','20180315',3);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (510,'���� �ϱ⾲��','�Ϸ縦 �������ϸ� ���� �־��� ���� �����غ��ƿ�. �Ŀ��� ���� �߾��� �� �� ����!','img/ynvly_diary.jpg',5000,'20190325','20190425',3,20,1,5000,'pjyun11','20190311',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (520,'������ ������� �ٲ�Ա�!',' �Ϸ� �ѳ� ������ ������� �ٲ㼭 �ǰ��� ���̾�Ʈ �θ����䳢�� ��ƺ��ô�!','img/ynvly_salad.jpg',10000,'20190501','20190507',10,50,0,0,'rabbit03','20190401',1);

--------------------------------------------------------
-- [�̼���] ������ ������ - �ݿ���-3��-29-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190312',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190312',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190313',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190314',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190315',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190316',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190317',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190318',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190319',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190320',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190321',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190322',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190323',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190324',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190325',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190326',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190315',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190316',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190317',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190318',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190319',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190320',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190322',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190325',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190328',2,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190327',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190328',2,'a0101',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190108',1,'a0201',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190109',1,'a0201',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190110',1,'a0201',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190108',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190109',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190110',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190111',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190112',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190113',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190114',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190115',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190116',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190117',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190118',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190119',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190120',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190121',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190122',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190123',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190124',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190125',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190126',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190127',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190128',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190129',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190130',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190131',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190201',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190202',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190203',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190204',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190205',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190206',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190207',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190208',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190209',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190210',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190211',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190212',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190213',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190214',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190215',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190216',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190217',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190218',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190219',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190220',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190221',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190222',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190223',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190224',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190225',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190226',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190227',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190228',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190301',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190302',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190303',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190304',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190305',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190306',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190307',1,'a0508',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190308',1,'a0508',null);

REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,1,'�۽� 3�ϰ�','a0201','20190110');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,1,'�۽� 3�� ��ȭ��..','a0201','20190309');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,2,'��..','a0508','20190325');

REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (2,'a0101','20190310',17000);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (3,'a0201','20190327',15000);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (1,'a0201','20190105',300);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (2,'a0508','20190311',10000);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (1,'a0508','20190101',34600);

REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('a0508','�̼���','a0508','01011110000','a0508@a.com',5000000,'20180508');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('a0101','���ؿ�','a0101','01001010101','a0101@a.com',128000,'20190118');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('a0201','������','a0201','01002010201','a0101@a.com',128000,'20190327');

REM INSERTING into Together
SET DEFINE OFF;
INSERT INTO TOGETHER (TONO,TITLE,DESCRIPTION,THUMPATH,JOINPOINT,STARTDATE,ENDDATE,MINPERSON,MAXPERSON,JOINPERSON,REMAINPOINT,CREATORID,CREATEDATE,STATUS) VALUES (1,'�ｺ�尡��','���ؿ� � ����','img/syGymGo.jpg',5900,'20190108','20190308',10,100,98,0,'a0508','20190101',3);
INSERT INTO TOGETHER (TONO,TITLE,DESCRIPTION,THUMPATH,JOINPOINT,STARTDATE,ENDDATE,MINPERSON,MAXPERSON,JOINPERSON,REMAINPOINT,CREATORID,CREATEDATE,STATUS) VALUES (2,'�Ϸ� �ѹ� �ڰ��� ���⹮�� Ǯ��','�Ϸ� �ѹ� �ڰ��� ���⹮�� Ǯ��','img/syLicenseStudy.jpg',31000,'20190312','20190412',5,100,76,0,'a0101','20190310',2);
INSERT INTO TOGETHER (TONO,TITLE,DESCRIPTION,THUMPATH,JOINPOINT,STARTDATE,ENDDATE,MINPERSON,MAXPERSON,JOINPERSON,REMAINPOINT,CREATORID,CREATEDATE,STATUS) VALUES (3,'��ħ 8������ �Ͼ��','��ħ���ΰ�','img/syMorningHuman.jpg',30000,'20190402','20190502',2,100,60,0,'a0201','20190327',1);
--------------------------------------------------------
-- [�����] ������ ������ - �ݿ���-3��-29-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190227',403,'noise',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190228',403,'noise',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190301',403,'noise',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190302',403,'noise',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190320',403,'noise',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,401,'��.. �ο� ������ �ȵǼ� �ƽ��׿��','moon','20180725');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,401,'�� �ڽ� ����� ������ ���ڴµ�','noon','20180721');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,402,'�����ó�� ưư�� ������ ��������','ninano','20190228');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,402,'��.. ���..,. õ���� ����̾�..','mongdal','20190301');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,402,'.. �츮 ���� ��*�ñ״Ͼ�........................','monkey','20190324');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,403,'�Ϳ� ������ ì�ܸ԰� ���� ���� ŰŰ','narara','20190402');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,403,'���� ��ǥ��','murmur','20190407');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,403,'��ٸ��� �����','ncis','20190408');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (4,403,'�ȴ� ������ !','most','20190409');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (5,403,'�� �� �a','noise','21090409');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (401,'moon','20180720',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (401,'noon','20180723',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (402,'ninano','20190405',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (401,'mongdal','20180724',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (402,'monkey','20190408',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (403,'narara','20190224',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (402,'murmur','20190402',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (402,'ncis','20190409',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (403,'most','20190223',null);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (403,'noise','20190226',null);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('moon','����ȣ','moon','010-2456-5896','moon@naver.com',37500,'20181119');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('noon','���¿�','noon','010-6521-4256','noon@daum.net',200000,'20190101');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('ninano','ä�ҿ�','ninano','019-156-2458','ninano@empas.com',16000,'20181229');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('mongdal','äġ��','mongdal','010-3216-1154','mongdal@empas.com',130000,'20190305');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('monkey','�����','monkey','010-8563-4698','monkey@yahoo.co.kr',6000,'20190314');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('narara','���븸','narara','010-4785-1256','narara@daum.net',20000,'20190328');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('murmur','������','murmur','010-9365-1235','murmur@naver.com
',1000,'20181023');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('ncis','���¼�','ncis','010-7632-6521','ncis@daum.net',80000,'20181204');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('most','�̸���','most','010-9514-7532','most@naver.com',63000,'20190101');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('noise','����ȯ','noise','010-5214-2653','noise@naver.com',50000,'20190201');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values  (401,'���� 100�� �⵵�սô�.','������ �Ȱ��� ���������� 100�� ���� �ڳ� ���� 100�� �⵵ �Ͻ� �� �����մϴ�.','img/mh_pray.jpg',100000,'20180725','20181101',7,10,6,0,'moon','20180720',0);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (402,'�Ϸ� �� ��, ���ι��̿�ƽ��&�������̿�ƽ�� ì�� �Ա�','��ħ: ���ι��̿�ƽ�� 1��(��), ����: �������̿�ƽ�� 1��(��)
*����*
���ι��̿�ƽ���� ���� ����Ű�� ���ر��� ������ �����ϰ� ���� ������� Ȱ�������� ������ �峻���رհ� ���б��� ���ľ����� ����鿪�� Ȱ��ȭ�� ������ ���̷����� �������� ������ ������ ����ȭ�� ���� ���� ���󿡵� ������ �شٰ� �������ϴ�.
�������̿�ƽ�� ������ ���ι��̿�ƽ�� ������ ���,ȿ�� ����, ��Ƴ��� �̻����κ����� ������ ���� �� �ֽ��ϴ�','img/mh_biotics.jpg',10000,'20190410','20190419',3,100,4,0,'murmur','20190402',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (403,'1�� ��� 10�� ������','*��� ������ � ȿ��*
1. �㸮�ѷ� ����
2. �߼����� ��ġ ����
3. ���� �� ���� ��ġ ����
4. ������ ��ȭ
5. ��ü �ٷ� ���

*�ٸ� �ڼ�
1. ô�߸� �ٷ� �����, �� ����� 11��, ��� ���� ������ �ָ� �ϳ� ����, ��� ��� �� 1/2���� �÷� �ָ�, ������ ������ �յڷ� ���� �����̸� �о� �ִ� �������� ������, �ణ ���� ���� ���� ���� ������ ����.
** �ٸ��� ���� ������ ������ �ִٸ� ���� ��.','img/mh_stair.jpg',60000,'20190227','20190328',30,50,40,0,'noise','20190222',3);



--------------------------------------------------------
--  [����ö] ������ ������ - ������-4��-01-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190301',300,'jwony04',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190101',301,'keunb95',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190201',302,'lchaey00',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,300,'�丶�� �ֽ� ����~!','jwony04','20190302');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,301,'�޷���~~~~!!','keunb95','20190102');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,302,'�հ����� ���� ����.','lchaey00','20190202');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (300,'jwony04','20190415',2333);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (301,'keunb95','20181225',1546);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (302,'lchaey00','20190125',12808);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('jwony04','�����','jwony04','010-8859-1195','won04@gmail.com',200000,'20190101');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('keunb95','������','keunb95','010-2759-4058','eun95@gmail.com',500000,'20180301');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('lchaey00','��ä��','lchaey00','010-1004-8702','chae00@gmail.com',400000,'20180305');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (300,'���Ͼ�ħ �丶�� �ֽ� ���ܾ� �Ա�','��ħ���� �丶�� �ֽ�(���� or ��������)�� ���ʴϴ�.','img/Jyc_tomato.jpg',5000,'20190301','20190501',3,30,3,15000,'jwony04','20190220',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (301,'�Ϸ� 1�ð� ��ϱ�','����� or �ٷ¿ �� �ϰ���� Ȱ������ ��� �մϴ�.','img/Jyc_running.jpg',10000,'20190101','20190630',3,15,3,30000,'keunb95','20181215',2);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (302,'�Ϸ� 10�� ����Ÿ�� �����ϱ�','�۷ι� �ô뿡 �°� ����Ÿ�� ������ ���� �ܱ���ȭ�� ��Ȱ�� ������ �غ��ô�.','img/Jyc_typing.jpg',20000,'20190201','20190430',3,50,3,60000,'lchaey00','20190115',2);

--------------------------------------------------------
--  [����] ������ ������ - ������-4��-01-2019   
--------------------------------------------------------
REM INSERTING into Cert
SET DEFINE OFF;
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190329',101,'deadNinja',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190329',102,'eternalLight',null);
Insert into Cert (createDate,toNo,memberID,filepath) values ('20190329',103,'fireLazer',null);
REM INSERTING into Reply
SET DEFINE OFF;
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (1,101,'���� �㽯?','deadNinja','20190329');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (2,102,'����� �ʹ� ���׿��','eternalLight','20190329');
Insert into Reply (seq,toNo,Reply,creatorID,createDate) values (3,103,'Let it be','fireLazer','20190329');
REM INSERTING into Join
SET DEFINE OFF;
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (101,'deadNinja','20190329',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (102,'eternalLight','20190329',0);
Insert into Join (toNo,memberID,joinDate,rewardPoint) values (103,'fireLazer','20190329',0);
REM INSERTING into Member
SET DEFINE OFF;
Insert into Member (ID,name,password,tel,email,point,createDate) values ('deadNinja','����','deadNinja','02-333-1111','deadNinja@gmail.com',100000,'20190218');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('eternalLight','����','eternalLight','02-332-1111','eternalLight@gmail.com',200000,'20190301');
Insert into Member (ID,name,password,tel,email,point,createDate) values ('fireLazer','���丣','fireLazer','02-331-1111','fireLazer@gmail.com',300000,'20190325');
REM INSERTING into Together
SET DEFINE OFF;
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (101,'�׸��� �нż�','�׸��� �нż� ����','img/yhs_shadowZED.png',10000,'20190329','20190501',5,20,3,30000,'deadNinja','20190319',1);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (102,'������ ��Ÿ�ؿ�!','������ ���縸���','img/yhs_elementalLUX.jpg',15000,'20190329','20190501',5,20,3,45000,'eternalLight','20190319',1);
Insert into Together (toNo,title,description,thumPath,joinPoint,startDate,endDate,minPerson,maxPerson,joinPerson,remainPoint,creatorID,createDate,Status) values (103,'�������� ��ȭ�� �����϶�!','�������� ��ſ� ���н���
','img/yhs_lazerVICTOR.PNG',20000,'20190329','20190501',5,20,3,60000,'fireLazer','20190319',1);




ALTER TABLE Member ENABLE VALIDATE PRIMARY KEY;
ALTER TABLE Cert ENABLE VALIDATE PRIMARY KEY;
ALTER TABLE Reply ENABLE VALIDATE PRIMARY KEY;
ALTER TABLE Join ENABLE VALIDATE PRIMARY KEY; 
ALTER TABLE Together ENABLE VALIDATE PRIMARY KEY;



ALTER TABLE Cert ENABLE VALIDATE CONSTRAINT FK_Join_TO_Cert_1;
ALTER TABLE Reply ENABLE VALIDATE CONSTRAINT FK_Together_TO_Reply_1;
ALTER TABLE Reply ENABLE VALIDATE CONSTRAINT FK_Member_TO_Reply_1;
ALTER TABLE Join ENABLE VALIDATE CONSTRAINT FK_Together_TO_Join_1 ;
ALTER TABLE Join ENABLE VALIDATE CONSTRAINT FK_Member_TO_Join_1 ;
ALTER TABLE Together ENABLE VALIDATE CONSTRAINT FK_Member_TO_Together_1 ;


UPDATE Member SET password='1';
UPDATE Together SET remainPoint = joinPoint*joinPerson WHERE status = 1;

INSERT INTO Join ( toNo, memberID, joinDate, rewardPoint)
 (SELECT toNo, creatorID, createDate, 0 FROM Together 
  WHERE status = 1 AND joinPerson=0);

UPDATE Together SET 
    remainPoint = joinPoint*(joinPerson+1), 
    joinPerson=1 
  WHERE status = 1 AND joinPerson=0;


UPDATE Together SET 
    remainPoint = joinPoint*joinPerson/2 
  WHERE status = 2 AND remainPoint=0;

UPDATE JOIN j SET
  rewardPoint =
    (SELECT j.rewardPoint
        + SUM(t.joinPoint/(TO_DATE(t.endDate) - TO_DATE(t.startDate) +1))
      FROM Cert c,Together t
            WHERE c.toNo =j.toNo
              AND c.memberID = j.memberID
              AND c.createDate > (SELECT MAX(LastProcDate) FROM operInfo)
              AND c.toNo = t.toNo
              AND t.status = 2
      GROUP BY j.toNo, j.memberID, j.rewardPoint)
  WHERE (toNo, memberID) IN 
  (SELECT DISTINCT c.toNo, c.memberID
    FROM Cert c, Together t
          WHERE c.createDate BETWEEN (SELECT MAX(LastProcDate) FROM operInfo) AND TO_CHAR( SYSDATE-1, 'YYYYMMDD')
            AND c.toNo = t.toNo
            AND t.status = 2
  );
  
UPDATE Join SET  rewardPoint = 0  WHERE rewardPoint IS NULL;
  
SELECT toNo, remainPoint, joinPoint, joinPerson, startDate, endDate FROM Together 
  WHERE status = 2 AND remainPoint=0;


DELETE FROM CERT WHERE tono IN ( SELECT tono FROM together WHERE status IN (0, 1));
DELETE FROM JOIN WHERE tono IN ( SELECT tono FROM together WHERE status = 0);


COMMIT;

DELETE FROM T5CASHL2;
DELETE FROM T5CLIENT;
INSERT INTO T5CLIENT(cliidentity,clicode,climanagerresp,cliproducttype,cliparentmanager)
VALUES(1,'A0079145TRA','ST',1,'ST');

DELETE FROM T5PARTICIPANT;
INSERT INTO T5PARTICIPANT(PARPDRPARTICIPANTID,parl3interest)
VALUES('CASH','Y');

INSERT INTO T5CASHL2(cl2identity,cl2clientnum,cl2currencyunit,cl2accountcode,cl2portfolionum,
cl2settledbalance,cl2accountbalance,cl2interest,cl2interestdate)
VALUES(1,'A0079145TRA','GBP','CASH','DEFAULT','1000.00','1500.00','0.00', '20190101');

DELETE FROM T5PARTICIPANT;
INSERT INTO T5PARTICIPANT(PARPDRPARTICIPANTID,parl3interest)
VALUES('CASH','Y');

DELETE FROM T5CASHL3;
INSERT INTO T5CASHL3(cl3identity,CL3CLIENTNUM,CL3CURRENCYUNIT,CL3ACCOUNTNUM,CL3PORTFOLIONUM,
CL3DATE1,CL3DATE2,CL3REVFLAG,CL3DRCRFLAG,CL3VALUE)
VALUES(1,'A0079145TRA','GBP','CASH','DEFAULT', '20190101', '20190101','N','C','1500.00');

DELETE FROM T5InterestRates;
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('12','50000.01','0.0','GBP','CASH','20180101','0','365','1','ST','ST','0','0.25','','0.5','','','','20151002','', '1');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('12','50000.01','0.0','GBP','CASH','20180101','0','365','1','ST','ST','0','0.25','','0.5','','','','20151002','', '2');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('11','15000.01','0.0','GBP','CASH','','0','365','1','ST','ST','0','','','','','','','20141001','', '3');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('10','0','0.0','GBP','CASH','','0','365','1','ST','ST','0','','','','','','','20141001','', '4');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('13','250000.01','0.1','GBP','CASH','','0','365','1','ST','ST','0','','','','','','','20141001','', '5');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('14','0','0.0','GBP','CASH','','0','365','2','ST','ST','0','','','','','','','20141001','', '6');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('15','15000.01','0.0','GBP','CASH','','0','365','2','ST','ST','0','','','','','','','20141001','', '7');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('16','50000.01','0.0','GBP','CASH','','0','365','2','ST','ST','0','','','','','','','20141001','', '8');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('17','250000.01','0.1','GBP','CASH','','0','365','2','ST','ST','0','','','','','','','20141001','', '9');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('18','0','0.0','GBP','CASH','','0','365','5','ST','ST','0','','','','','','','20141001','', '10');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('19','15000.01','0.0','GBP','CASH','','0','365','5','ST','ST','0','','','','','','','20141001','', '11');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('20','50000.01','0.0','GBP','CASH','','0','365','5','ST','ST','0','','','','','','','20141001','', '12');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('21','250000.01','0.1','GBP','CASH','','0','365','5','ST','ST','0','','','','','','','20141001','', '13');
INSERT INTO T5InterestRates(ITRBAND,ITRRANGEMIN,ITRRATE,ITRCURRENCY,ITRACCOUNTCODE,ITRDATE,ITRMARGIN,ITRDAYSINYEAR,ITRPRODUCTTYPE,ITRPARENTMANAGER,ITRMANAGERRESP,ITRMINPAYMENT,itrintrorate,itrintroexpiry,itrloyaltyrate,itrminbalance,itrmaxwithdrawal,itrloyaltyexpiry,itrstartdate,itrintroperiod, ITRSQLTIMESTAMP)VALUES('21','250000.01','0.1','GBP','CASH','','0','365','5','ST','ST','0','','','','','','','20141001','', '14');
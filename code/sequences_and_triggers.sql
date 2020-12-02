create SEQUENCE client_seq
    start with 16 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE company_seq
    start with 21 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE employee_seq
    start with 11 
    INCREMENT by 1
NOCACHE ORDER;

create SEQUENCE employee_job_seq
    start with 11 
    INCREMENT by 1
NOCACHE ORDER;

create SEQUENCE genre_seq
    start with 15 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE merch_seq
    start with 40 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE merch_genre_seq
    start with 102 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE merch_kind_seq
    start with 5 
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE merch_performer_seq
    start with 60
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE performer_seq
    start with 16
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE sale_quantity_merch_seq
    start with 99
    INCREMENT by 1
NOCACHE ORDER;
 
create SEQUENCE sales_seq
    start with 21
    INCREMENT by 1
NOCACHE ORDER;

create TRIGGER client_trig
    before insert on CLIENT
    for EACH ROW
    WHEN (new.client_id is null)
    begin :new.client_id := vesko.CLIENT_SEQ.NEXTVAL;
end;


create TRIGGER company_trig
    before insert on company
    for EACH ROW
    WHEN (new.company_id is null)
    begin :new.company_id := vesko.company_seq.NEXTVAL;
end;

create TRIGGER employee_trig
    before insert on employee
    for EACH ROW
    WHEN (new.employee_id is null)
    begin :new.employee_id := vesko.employee_seq.NEXTVAL;
end;

create TRIGGER employee_job_trig
    before insert on employee_job
    for EACH ROW
    WHEN (new.employee_job_id is null)
    begin :new.employee_job_id := vesko.employee_job_seq.NEXTVAL;
end;

create TRIGGER genre_trig
    before insert on genre
    for EACH ROW
    WHEN (new.genre_id is null)
    begin :new.genre_id := vesko.genre_seq.NEXTVAL;
end;

create TRIGGER merch_trig
    before insert on merch
    for EACH ROW
    WHEN (new.merch_id is null)
    begin :new.merch_id := vesko.merch_seq.NEXTVAL;
end;

create TRIGGER merch_genre_trig
    before insert on merch_genre
    for EACH ROW
    WHEN (new.merch_genre_id is null)
    begin :new.merch_genre_id := vesko.merch_genre_seq.NEXTVAL;
end;

create TRIGGER merch_kind_trig
    before insert on merch_kind
    for EACH ROW
    WHEN (new.merch_kind_id is null)
    begin :new.merch_kind_id := vesko.merch_kind_seq.NEXTVAL;
end;

create TRIGGER merch_performer_trig
    before insert on merch_performer
    for EACH ROW
    WHEN (new.merch_performer_id is null)
    begin :new.merch_performer := vesko.merch_performer_seq.NEXTVAL;
end;

create TRIGGER performer_trig
    before insert on performer
    for EACH ROW
    WHEN (new.performer_id is null)
    begin :new.performer_id := vesko.performer_seq.NEXTVAL;
end;

create TRIGGER sale_quantity_merch_trig
    before insert on sale_quantity_merch
    for EACH ROW
    WHEN (new.sale_quantity_merch_id is null)
    begin :new.sale_quantity_merch_id := vesko.sale_quantity_merch_seq.NEXTVAL;
end;

create TRIGGER sales_trig
    before insert on sales
    for EACH ROW
    WHEN (new.sales_id is null)
    begin :new.sales_id := vesko.sales_seq.NEXTVAL;
end;
--计划
create table plan(
       id char(32) primary key,
       create_user varchar2(256),
       create_dept varchar2(256),
       create_time date,
       modify_user varchar2(256),
       modify_dept varchar2(256),
       modify_time date,
       deleted char(1),
       plan_name varchar2(256),
       src_conn_type number,
       src_conn_str varchar2(1000),
       src_username varchar2(256),
       src_password varchar2(256),
       target_conn_type number,
       target_conn_str varchar2(1000),
       target_username varchar2(256),
       target_password varchar2(256),
       plan_state number,
       task_finishCount number
)
--任务
create table task(
       id char(32) primary key,
       create_user varchar2(256),
       create_dept varchar2(256),
       create_time date,
       modify_user varchar2(256),
       modify_dept varchar2(256),
       modify_time date,
       deleted char(1),
       plan_id char(32),
       task_name varchar2(256),
       parent_id char(32),
       cycleType varchar2(50),
       timeOut varchar2(50),
       task_params varchar2(256),
       timeOut_handleType varchar2(50),
       timeOut_handle varchar2(256),
       exception_handleType varchar2(50),
       exception_handle varchar2(256),
       task_state varchar2(50),
       timeOut_count number,
       col_mapping varchar2(2000)
)
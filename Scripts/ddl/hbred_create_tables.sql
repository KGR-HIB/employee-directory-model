USE HHTEDDB;

/* Role */
CREATE TABLE IF NOT EXISTS HHTEDTROLE (
  ROLE_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  CODE VARCHAR(60) NOT NULL COMMENT 'Code of role',
  NAME VARCHAR(120) NOT NULL COMMENT 'Role’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKROL PRIMARY KEY (ROLE_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUROL (CODE)
) ENGINE = InnoDB COMMENT 'System roles';

/* Functionality */
CREATE TABLE IF NOT EXISTS HHTEDTFUNCTIONALITY (
  FUNCTIONALITY_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Functionality id',
  CODE VARCHAR(60) NOT NULL COMMENT 'Code of the functionality',
  DESCRIPTION VARCHAR(120) NOT NULL COMMENT 'Description of the functionality',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKFUN PRIMARY KEY (FUNCTIONALITY_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUFUN (CODE)
) ENGINE = InnoDB COMMENT 'Functionality';

/* Role functionalities */
CREATE TABLE IF NOT EXISTS HHTEDTROLFUN (
  ROLFUN_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Role functionality Id',
  ROLE_ID INT NOT NULL COMMENT 'Role id',
  FUNCTIONALITY_ID INT NOT NULL COMMENT 'Functionality id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKROLFUN PRIMARY KEY (ROLFUN_ID)
) ENGINE = InnoDB COMMENT 'Role functionalities';

/* City */
CREATE TABLE IF NOT EXISTS HHTEDTCITY (
  CITY_ID INT NOT NULL AUTO_INCREMENT COMMENT 'City id',
  NAME VARCHAR(60) NOT NULL COMMENT 'Name of the city',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKCIT PRIMARY KEY (CITY_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUCIT (NAME ASC)
) ENGINE = InnoDB COMMENT 'Catalog of cities';

/* Project */
CREATE TABLE IF NOT EXISTS HHTEDTPROJECT (
  PROJECT_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Project id',
  NAME VARCHAR(120) NOT NULL COMMENT 'Project’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKPRO PRIMARY KEY (PROJECT_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUPRO (NAME ASC)
) ENGINE = InnoDB COMMENT 'Project catalog';

/* Position */
CREATE TABLE IF NOT EXISTS HHTEDTPOSITION (
  POSITION_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Position id',
  NAME VARCHAR(60) NOT NULL COMMENT 'Position’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKPOS PRIMARY KEY (POSITION_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUPOS (NAME ASC)
) ENGINE = InnoDB COMMENT 'Position catalog';

/* Department */
CREATE TABLE IF NOT EXISTS HHTEDTDEPARTMENT (
  DEPARTMENT_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Department id',
  NAME VARCHAR(120) NOT NULL COMMENT 'Department’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKDEP PRIMARY KEY (DEPARTMENT_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUDEP (NAME ASC)
) ENGINE = InnoDB COMMENT 'Department catalog';

/* Skill */
CREATE TABLE IF NOT EXISTS HHTEDTSKILL (
  SKILL_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Skill id',
  NAME VARCHAR(120) NOT NULL COMMENT 'Skill’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKSKI PRIMARY KEY (SKILL_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUSKI (NAME ASC)
) ENGINE = InnoDB COMMENT 'Skill catalog';

/* Certification */
CREATE TABLE IF NOT EXISTS HHTEDTCERTIFICATION (
  CERTIFICATION_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Certification id',
  NAME VARCHAR(120) NOT NULL COMMENT 'Certification’s name',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKCER PRIMARY KEY (CERTIFICATION_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUCER (NAME ASC)
) ENGINE = InnoDB COMMENT 'Certification catalog';

/* Employee */
CREATE TABLE IF NOT EXISTS HHTEDTEMPLOYEE (
  EMPLOYEE_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Employee id',
  NAME VARCHAR(120) NOT NULL COMMENT 'Employee names',
  LAST_NAME VARCHAR(120) NOT NULL COMMENT 'last name of the employee',
  PHONE VARCHAR(20) NOT NULL COMMENT 'Employee phone',
  PHOTO_PATH VARCHAR(120) NULL COMMENT 'Employee photo folder address',
  CITY_ID INT NOT NULL COMMENT 'City id',
  POSITION_ID INT NOT NULL COMMENT 'Position id',
  DEPARTMENT_ID INT NOT NULL COMMENT 'Department id',
  IMMEDIATE_CHIEF_ID INT COMMENT 'Id of the immediate chief',
  USER_ID INT NOT NULL COMMENT 'User id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKEMP PRIMARY KEY (EMPLOYEE_ID)
) ENGINE = InnoDB COMMENT 'Employee';

/* User */
CREATE TABLE IF NOT EXISTS HHTEDTUSER (
  USER_ID INT NOT NULL AUTO_INCREMENT COMMENT 'User id',
  EMAIL VARCHAR(120) NOT NULL COMMENT 'User’s email address',
  PASSWORD VARCHAR(100) NOT NULL COMMENT 'User’s password',
  LOGIN_FIRST_TIME TINYINT NOT NULL DEFAULT 0 COMMENT 'True if the user has already login the system for the first time, false otherwise',
  ROLE_ID INT NOT NULL COMMENT 'Role id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKUSE PRIMARY KEY (USER_ID),
  CONSTRAINT UNIQUE INDEX HHTEDIUUSE (EMAIL)
) ENGINE = InnoDB COMMENT 'User';

/* Employee skills */
CREATE TABLE IF NOT EXISTS HHTEDTEMPSKI (
  EMPSKI_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Employee skill id',
  SKILL_ID INT NOT NULL COMMENT 'Skill id',
  EMPLOYEE_ID INT NOT NULL COMMENT 'Employee id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKEMPSKI PRIMARY KEY (EMPSKI_ID)
) ENGINE = InnoDB COMMENT 'Employee skills';

/* Employee certifications */
CREATE TABLE IF NOT EXISTS HHTEDTEMPCER (
  EMPCER_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Employee certification id',
  CERTIFICATION_ID INT NOT NULL COMMENT 'Certification id',
  EMPLOYEE_ID INT NOT NULL COMMENT 'Employee id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKEMPCER PRIMARY KEY (EMPCER_ID)
) ENGINE = InnoDB COMMENT 'Employee certifications';

/* Employee projects */
CREATE TABLE IF NOT EXISTS HHTEDTEMPPRO (
  EMPPRO_ID INT NOT NULL AUTO_INCREMENT COMMENT 'Employee project id',
  PROJECT_ID INT NOT NULL COMMENT 'Project id',
  EMPLOYEE_ID INT NOT NULL COMMENT 'Employee id',
  STATUS TINYINT NOT NULL DEFAULT 1 COMMENT 'True if the record is active otherwise false',
  CREATED_BY_USER INT NOT NULL COMMENT 'User who created the record',
  CREATED_DATE DATETIME NOT NULL COMMENT 'Date the record was created',
  LAST_MODIFIED_BY_USER INT NULL COMMENT 'User who made the last modification of the registry',
  LAST_MODIFIED_DATE DATETIME NULL COMMENT 'Date of the last modification',
  CONSTRAINT HHTEDRPKEMPPRO PRIMARY KEY (EMPPRO_ID)
) ENGINE = InnoDB COMMENT 'Employee projects';

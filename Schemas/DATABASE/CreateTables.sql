SET default_storage_engine=INNODB;
CREATE DATABASE IF NOT EXISTS eventargs;

CREATE TABLE IF NOT EXISTS users
(	
	user_id BIGINT AUTO_INCREMENT,
	user_firstname VARCHAR(15) NOT NULL,
	user_lastname VARCHAR(15) NOT NULL,
	user_phno BIGINT NOT NULL,
	user_password VARCHAR(30) NOT NULL,
	user_email VARCHAR(40) UNIQUE NOT NULL,
	user_dob DATE NOT NULL,
	PRIMARY KEY(user_id)
);

CREATE TABLE IF NOT EXISTS addresses
(
	address_id BIGINT AUTO_INCREMENT,
	address_name VARCHAR(30),
	longitude VARCHAR(9),
	latitude VARCHAR(9),
	street VARCHAR(100),
	locality VARCHAR(30),
	city VARCHAR(30),
	zipcode VARCHAR(6),
	state VARCHAR(20),
	PRIMARY KEY(address_id)
);

CREATE TABLE IF NOT EXISTS address_type
(
	address_id BIGINT NOT NULL,
	address_type VARCHAR(15) NOT NULL,
	PRIMARY KEY(address_id,address_type),
	FOREIGN KEY(address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS user_addresses
(
	user_id BIGINT NOT NULL,
	address_id BIGINT NOT NULL,
	addresstype_for_user VARCHAR(15) NOT NULL,
	PRIMARY KEY(user_id,address_id),
	FOREIGN KEY(user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS events
(
	event_id BIGINT AUTO_INCREMENT,
	event_name VARCHAR(30) NOT NULL,	
	date_from DATE NOT NULL,
	date_to DATE,
	time_from TIME,
	time_to TIME,
	user_id BIGINT NOT NULL,
	event_status VARCHAR(10) NOT NULL,
	PRIMARY KEY(event_id),
	FOREIGN KEY(user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_addresses
(
	event_id BIGINT NOT NULL,
	address_id BIGINT NOT NULL,
	PRIMARY KEY(event_id,address_id),
	FOREIGN KEY(event_id) REFERENCES events(event_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS venues
(
	venue_id BIGINT AUTO_INCREMENT,
	address_id BIGINT NOT NULL,
	venue_name VARCHAR(15) NOT NULL,
	venue_cost DECIMAL(11,2) NOT NULL,
	venue_phno INT(10) NOT NULL,
	venue_email VARCHAR(40) NOT NULL,
	venue_regno VARCHAR(20) NOT NULL,
	PRIMARY KEY(venue_id),
	FOREIGN KEY(address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);                 

CREATE TABLE IF NOT EXISTS venue_manager
(
	vmanager_id BIGINT AUTO_INCREMENT,
	user_id BIGINT NOT NULL UNIQUE,
	vmanager_aadhar_no CHAR(12) NOT NULL UNIQUE,
	vmanager_reg_id	VARCHAR(20) NOT NULL UNIQUE, 
	PRIMARY KEY(vmanager_id),
	FOREIGN KEY(user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS venue_management
(
	venue_id BIGINT NOT NULL,
	vmanager_id BIGINT NOT NULL,
	PRIMARY KEY(venue_id,vmanager_id),
	FOREIGN KEY(venue_id) REFERENCES venues(venue_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(vmanager_id) REFERENCES venue_manager(vmanager_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_types
(
	eventtype_id BIGINT AUTO_INCREMENT,
	eventtype_name VARCHAR(30) NOT NULL,
	eventtype_level CHAR(1) NOT NULL,
	eventtype_image_link VARCHAR(255),
	PRIMARY KEY(eventtype_id)
);

CREATE TABLE IF NOT EXISTS relation_between_eventtypes
(
	maineventtype_id BIGINT NOT NULL,
	subeventtype_id BIGINT,
	PRIMARY KEY(maineventtype_id,subeventtype_id),
	FOREIGN KEY(maineventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(subeventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS type_of_event
(
	event_id BIGINT NOT NULL,
	eventtype_id BIGINT NOT NULL,
	PRIMARY KEY(event_id,eventtype_id),
	FOREIGN KEY(event_id) REFERENCES events(event_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(eventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS items_or_services
(
	item_or_service_id BIGINT AUTO_INCREMENT,
	item_or_service_name VARCHAR(40) NOT NULL UNIQUE,
	item_or_service_type VARCHAR(30) NOT NULL,
    item_presence_of_subtype CHAR(1) NOT NULL,
	PRIMARY KEY(item_or_service_id)
);

CREATE TABLE IF NOT EXISTS subitem_or_services
(	
	mainitem_id BIGINT,
    subitem_id BIGINT,
    FOREIGN KEY(mainitem_id) REFERENCES items_or_services(item_or_service_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(subitem_id) REFERENCES items_or_services(item_or_service_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_item_services
(
	eventtype_id BIGINT NOT NULL,
	item_or_service_id BIGINT NOT NULL,
    user_type VARCHAR(25) NOT NULL,
	PRIMARY KEY(eventtype_id,item_or_service_id),
	FOREIGN KEY(eventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(item_or_service_id) REFERENCES items_or_services(item_or_service_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS userdefined_event_item_services
(
	event_id BIGINT NOT NULL,
	item_or_service_id BIGINT NOT NULL,
	PRIMARY KEY(event_id,item_or_service_id),
	FOREIGN KEY(event_id) REFERENCES events(event_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(item_or_service_id) REFERENCES items_or_services(item_or_service_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS invite_types
(
	invite_type_id INT AUTO_INCREMENT,
	invite_type VARCHAR(20) NOT NULL,
	PRIMARY KEY(invite_type_id,invite_type)
);

CREATE TABLE IF NOT EXISTS invite_templates
(
	invite_template_id INT AUTO_INCREMENT,
	invite_type_id INT NOT NULL,
	invite_template TEXT NOT NULL,
	PRIMARY KEY(invite_template_id),
	FOREIGN KEY(invite_type_id) REFERENCES invite_types(invite_type_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_invite_templates
(
	eventtype_id BIGINT NOT NULL,
	invite_template_id INT NOT NULL,
	PRIMARY KEY(eventtype_id,invite_template_id),
	FOREIGN KEY(eventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(invite_template_id) REFERENCES invite_templates(invite_template_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS group_event_managers
(
	group_user_id BIGINT NOT NULL,
	event_id BIGINT NOT NULL,
	group_unique_id VARCHAR(20) UNIQUE NOT NULL,
	PRIMARY KEY(group_user_id,event_id,group_unique_id),
	FOREIGN KEY (group_user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (event_id) REFERENCES events(event_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shops
(
	shop_id BIGINT AUTO_INCREMENT,
	shop_name VARCHAR(30) NOT NULL,
	shop_address_id BIGINT NOT NULL,
	shop_reg_id VARCHAR(20) UNIQUE NOT NULL,
	shop_phone_number BIGINT NOT NULL,
	shop_emailid VARCHAR(30) NOT NULL,
	shop_picture LONGBLOB,
	PRIMARY KEY(shop_id),
	FOREIGN KEY (shop_address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS owners
(
	owner_id BIGINT AUTO_INCREMENT,
	user_id BIGINT NOT NULL UNIQUE,
	owner_aadhar_no CHAR(12) NOT NULL UNIQUE,
	owner_reg_id VARCHAR(20) NOT NULL UNIQUE,
	PRIMARY KEY(owner_id),
	FOREIGN KEY(user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shop_owners
(
	shop_id BIGINT NOT NULL,
	owner_id BIGINT NOT NULL,
	PRIMARY KEY(shop_id,owner_id),
	FOREIGN KEY (shop_id) REFERENCES shops(shop_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (owner_id) REFERENCES owners(owner_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shop_items_services
(
	shop_id BIGINT NOT NULL,
	item_or_service_id BIGINT NOT NULL,
	PRIMARY KEY(shop_id,item_or_service_id),
	FOREIGN KEY (shop_id) REFERENCES shops(shop_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (item_or_service_id) REFERENCES items_or_services(item_or_service_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_handlers
(
	event_handler_id BIGINT AUTO_INCREMENT,
	event_handler_name VARCHAR(30) NOT NULL,
	event_handler_phone_number BIGINT NOT NULL,
	event_handler_address_id BIGINT NOT NULL,
	event_handler_email VARCHAR(30) NOT NULL,
	event_handler_reg_id INT NOT NULL UNIQUE,
	event_handler_website_link VARCHAR(2083) NOT NULL,
	PRIMARY KEY(event_handler_id),
	FOREIGN KEY (event_handler_address_id) REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_handler_eventtype
(
	event_handler_id BIGINT NOT NULL,
	eventtype_id BIGINT NOT NULL,
	PRIMARY KEY(event_handler_id,eventtype_id),
	FOREIGN KEY (event_handler_id) REFERENCES event_handlers(event_handler_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (eventtype_id) REFERENCES event_types(eventtype_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS event_handler_past_experience
(
	event_handler_id BIGINT NOT NULL,
	event_handler_rating INT NOT NULL,
	FOREIGN KEY (event_handler_id) REFERENCES event_handlers(event_handler_id) On UPDATE CASCADE ON DELETE CASCADE
);

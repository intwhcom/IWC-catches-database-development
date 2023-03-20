-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-12-19 09:54:42.389

-- tables
-- Table: FAOareas
CREATE TABLE FAOareas (
    id int  NOT NULL,
    geom geometry  NOT NULL,
    CONSTRAINT FAOareas_pk PRIMARY KEY (id)
);

-- Table: RMPareas
CREATE TABLE RMPareas (
    id int  NOT NULL,
    geom geometry  NOT NULL,
    CONSTRAINT RMPareas_pk PRIMARY KEY (id)
);

-- Table: areas
CREATE TABLE areas (
    code int  NOT NULL,
    oc varchar(5)  NOT NULL,
    area varchar(50)  NOT NULL,
    minlat real  NOT NULL,
    maxlat real  NOT NULL,
    minlon real  NOT NULL,
    maxlon real  NOT NULL,
    notes text  NOT NULL,
    geom geometry  NOT NULL,
    CONSTRAINT areas_pk PRIMARY KEY (code)
);

-- Table: catch_summmary
CREATE TABLE catch_summmary (
    id int  NOT NULL,
    species_code int  NOT NULL,
    number int  NOT NULL,
    lost int  NOT NULL,
    dauhval int  NOT NULL,
    operation_id int  NOT NULL,
    CONSTRAINT catch_summmary_pk PRIMARY KEY (id)
);

-- Table: catcher_boats
CREATE TABLE catcher_boats (
    code char(1)  NOT NULL,
    fullname varchar(100)  NOT NULL,
    description text  NOT NULL,
    CONSTRAINT catcher_boats_pk PRIMARY KEY (code)
);

-- Table: coding
CREATE TABLE coding (
    code int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT coding_pk PRIMARY KEY (code)
);

-- Table: data
CREATE TABLE data (
    id char(1)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT data_pk PRIMARY KEY (id)
);

-- Table: data_expeditions
CREATE TABLE data_expeditions (
    code int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT data_expeditions_pk PRIMARY KEY (code)
);

-- Table: expedition_type
CREATE TABLE expedition_type (
    code char(1)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT expedition_type_pk PRIMARY KEY (code)
);

-- Table: expeditions
CREATE TABLE expeditions (
    code int  NOT NULL,
    name varchar(100)  NOT NULL,
    company varchar(100)  NOT NULL,
    expedition_type_code char(1)  NOT NULL,
    areas_code int  NOT NULL,
    start_year1 int  NOT NULL,
    end_year1 int  NOT NULL,
    start_year2 int  NULL,
    end_year2 int  NULL,
    start_year3 int  NULL,
    end_year3 int  NULL,
    lat int  NOT NULL,
    lon int  NOT NULL,
    wt int  NOT NULL,
    notes text  NOT NULL,
    sum_code int  NOT NULL,
    nations_id int  NOT NULL,
    nations_code char(2)  NOT NULL,
    CONSTRAINT expeditions_pk PRIMARY KEY (code)
);

-- Table: fem
CREATE TABLE fem (
    code int  NOT NULL,
    description varchar(150)  NOT NULL,
    CONSTRAINT fem_pk PRIMARY KEY (code)
);

-- Table: foetuses
CREATE TABLE foetuses (
    id int  NOT NULL,
    length int  NOT NULL,
    length_unit_code smallint  NOT NULL,
    individual_id int  NOT NULL,
    sex_code smallint  NOT NULL,
    CONSTRAINT foetuses_pk PRIMARY KEY (id)
);

-- Table: individual
CREATE TABLE individual (
    id int  NOT NULL,
    whno int  NOT NULL,
    catcher_boats_code char(1)  NOT NULL,
    species_code char(2)  NOT NULL,
    length int  NOT NULL,
    length_unit_id smallint  NOT NULL,
    day int  NULL,
    month int  NULL,
    year int  NOT NULL,
    foetusno int  NULL,
    ddlat int  NULL,
    minlat int  NULL,
    ns char(1)  NULL,
    ddlon int  NULL,
    minlon int  NULL,
    we char(1)  NULL,
    expeditions_code int  NOT NULL,
    stomach_contents_code int  NULL,
    stomach_content_quantity_code varchar(5)  NULL,
    stomach_content_digestion_code int  NULL,
    stomach_content_size_id int  NULL,
    stomach_content_size_code char(1)  NULL,
    ld_code int  NULL,
    infractions_code smallint  NULL,
    infraction_type_code smallint  NULL,
    coding_code int  NOT NULL,
    sex_code smallint  NOT NULL,
    maturity_code int  NULL,
    fem_code int  NULL,
    mark_recovery_code smallint  NULL,
    sample_code smallint  NULL,
    text_code int  NOT NULL,
    notes text  NULL,
    added date  NOT NULL,
    modified date  NULL,
    nations_id int  NOT NULL,
    nations_code char(2)  NOT NULL,
    version decimal(5,1)  NOT NULL,
    position_accuracy_lon_code smallint  NOT NULL,
    position_accuracy_lat_code smallint  NOT NULL,
    CONSTRAINT individual_pk PRIMARY KEY (id)
);

-- Table: infraction_type
CREATE TABLE infraction_type (
    code smallint  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT infraction_type_pk PRIMARY KEY (code)
);

-- Table: infractions
CREATE TABLE infractions (
    code smallint  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT infractions_pk PRIMARY KEY (code)
);

-- Table: ld
CREATE TABLE ld (
    code int  NOT NULL,
    description varchar(100)  NOT NULL,
    CONSTRAINT ld_pk PRIMARY KEY (code)
);

-- Table: length_unit
CREATE TABLE length_unit (
    code smallint  NOT NULL,
    description varchar(250)  NOT NULL,
    CONSTRAINT length_unit_pk PRIMARY KEY (code)
);

-- Table: mark_recovery
CREATE TABLE mark_recovery (
    code smallint  NOT NULL,
    description varchar(200)  NOT NULL,
    CONSTRAINT mark_recovery_pk PRIMARY KEY (code)
);

-- Table: maturity
CREATE TABLE maturity (
    code int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT maturity_pk PRIMARY KEY (code)
);

-- Table: nations
CREATE TABLE nations (
    id int  NOT NULL,
    nation varchar(50)  NOT NULL,
    code char(2)  NOT NULL,
    CONSTRAINT nations_pk PRIMARY KEY (id,code)
);

-- Table: oil_data_quality
CREATE TABLE oil_data_quality (
    id char(1)  NOT NULL,
    description int  NOT NULL,
    CONSTRAINT oil_data_quality_pk PRIMARY KEY (id)
);

-- Table: oil_yield
CREATE TABLE oil_yield (
    id int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT oil_yield_pk PRIMARY KEY (id)
);

-- Table: operation
CREATE TABLE operation (
    id int  NOT NULL,
    year int  NOT NULL,
    month int  NULL,
    day int  NULL,
    no_land_stations int  NOT NULL,
    num_floating_factories int  NOT NULL,
    num_catcher_boats int  NOT NULL,
    notes_d text  NOT NULL,
    whale_oil int  NOT NULL,
    sperm_oil int  NOT NULL,
    total_oil int  NOT NULL,
    oil_notes text  NOT NULL,
    nations_id int  NOT NULL,
    nations_code char(2)  NOT NULL,
    data_id char(1)  NOT NULL,
    operation_code varchar(2)  NOT NULL,
    data_expeditions_code int  NOT NULL,
    quality_code char(1)  NOT NULL,
    oil_data_quality_id char(1)  NOT NULL,
    oil_yield_id int  NOT NULL,
    areas_code int  NOT NULL,
    expeditions_code int  NOT NULL,
    CONSTRAINT operation_pk PRIMARY KEY (id)
);

-- Table: operations
CREATE TABLE operations (
    code varchar(2)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT operations_pk PRIMARY KEY (code)
);

-- Table: position_accuracy_lat
CREATE TABLE position_accuracy_lat (
    code smallint  NOT NULL,
    description varchar(200)  NOT NULL,
    CONSTRAINT position_accuracy_lat_pk PRIMARY KEY (code)
);

-- Table: position_accuracy_lon
CREATE TABLE position_accuracy_lon (
    code smallint  NOT NULL,
    description varchar(200)  NOT NULL,
    CONSTRAINT position_accuracy_lon_pk PRIMARY KEY (code)
);

-- Table: quality
CREATE TABLE quality (
    code char(1)  NOT NULL,
    description varchar(100)  NOT NULL,
    CONSTRAINT quality_pk PRIMARY KEY (code)
);

-- Table: references
CREATE TABLE "references" (
    id int  NOT NULL,
    abbreviation varchar(10)  NOT NULL,
    author varchar(100)  NOT NULL,
    year int  NOT NULL,
    fullreference text  NOT NULL,
    notes text  NOT NULL,
    CONSTRAINT references_pk PRIMARY KEY (id)
);

-- Table: sample
CREATE TABLE sample (
    code smallint  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT sample_pk PRIMARY KEY (code)
);

-- Table: sex
CREATE TABLE sex (
    code smallint  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT sex_pk PRIMARY KEY (code)
);

-- Table: species
CREATE TABLE species (
    code char(2)  NOT NULL,
    latin_name varchar(60)  NOT NULL,
    common_name_eng varchar(100)  NOT NULL,
    minms int  NOT NULL,
    maxms int  NOT NULL,
    minfs int  NOT NULL,
    maxfs int  NOT NULL,
    foetus int  NOT NULL,
    notes varchar(50)  NOT NULL,
    CONSTRAINT species_pk PRIMARY KEY (code)
);

-- Table: stomach_content_digestion
CREATE TABLE stomach_content_digestion (
    code int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT stomach_content_digestion_pk PRIMARY KEY (code)
);

-- Table: stomach_content_locations
CREATE TABLE stomach_content_locations (
    code varchar(5)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT stomach_content_locations_pk PRIMARY KEY (code)
);

-- Table: stomach_content_quantity
CREATE TABLE stomach_content_quantity (
    code varchar(5)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT stomach_content_quantity_pk PRIMARY KEY (code)
);

-- Table: stomach_content_size
CREATE TABLE stomach_content_size (
    id int  NOT NULL,
    code char(1)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT stomach_content_size_pk PRIMARY KEY (id,code)
);

-- Table: stomach_contents
CREATE TABLE stomach_contents (
    code int  NOT NULL,
    name varchar(50)  NOT NULL,
    description varchar(100)  NOT NULL,
    stomach_content_locations_code varchar(5)  NOT NULL,
    CONSTRAINT stomach_contents_pk PRIMARY KEY (code)
);

-- Table: summary
CREATE TABLE summary (
    id int  NOT NULL,
    areas_code int  NOT NULL,
    expeditions_sum_code int  NOT NULL,
    year int  NOT NULL,
    month int  NULL,
    day int  NULL,
    species_code int  NOT NULL,
    number int  NOT NULL,
    lost int  NOT NULL,
    dauhval int  NOT NULL,
    data_id char(1)  NOT NULL,
    operation_code varchar(2)  NOT NULL,
    data_expeditions_code int  NOT NULL,
    quality_code char(1)  NOT NULL,
    num_land_stations int  NOT NULL,
    num_floating_factories int  NOT NULL,
    num_catcher_boats int  NOT NULL,
    notes_d text  NOT NULL,
    whale_oil int  NOT NULL,
    sperm_oil int  NOT NULL,
    total_oil int  NOT NULL,
    oil_data_quality_id char(1)  NOT NULL,
    oil_yield_id int  NOT NULL,
    oil_notes text  NOT NULL,
    nations_id int  NOT NULL,
    nations_code char(2)  NOT NULL,
    CONSTRAINT summary_pk PRIMARY KEY (id)
);

-- Table: sumreferences
CREATE TABLE sumreferences (
    summary_id int  NOT NULL,
    references_id int  NOT NULL,
    id int  NOT NULL,
    CONSTRAINT sumreferences_pk PRIMARY KEY (id)
);

-- Table: text
CREATE TABLE text (
    code int  NOT NULL,
    description text  NOT NULL,
    CONSTRAINT text_pk PRIMARY KEY (code)
);

-- foreign keys
-- Reference: catch_summmary_operation (table: catch_summmary)
ALTER TABLE catch_summmary ADD CONSTRAINT catch_summmary_operation
    FOREIGN KEY (operation_id)
    REFERENCES operation (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: expeditions_areas (table: expeditions)
ALTER TABLE expeditions ADD CONSTRAINT expeditions_areas
    FOREIGN KEY (areas_code)
    REFERENCES areas (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: expeditions_expedition_type (table: expeditions)
ALTER TABLE expeditions ADD CONSTRAINT expeditions_expedition_type
    FOREIGN KEY (expedition_type_code)
    REFERENCES expedition_type (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: expeditions_nations (table: expeditions)
ALTER TABLE expeditions ADD CONSTRAINT expeditions_nations
    FOREIGN KEY (nations_id, nations_code)
    REFERENCES nations (id, code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: foetuses_individual (table: foetuses)
ALTER TABLE foetuses ADD CONSTRAINT foetuses_individual
    FOREIGN KEY (individual_id)
    REFERENCES individual (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: foetuses_length_unit (table: foetuses)
ALTER TABLE foetuses ADD CONSTRAINT foetuses_length_unit
    FOREIGN KEY (length_unit_code)
    REFERENCES length_unit (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: foetuses_sex (table: foetuses)
ALTER TABLE foetuses ADD CONSTRAINT foetuses_sex
    FOREIGN KEY (sex_code)
    REFERENCES sex (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_catcher_boats (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_catcher_boats
    FOREIGN KEY (catcher_boats_code)
    REFERENCES catcher_boats (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_coding (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_coding
    FOREIGN KEY (coding_code)
    REFERENCES coding (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_expeditions (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_expeditions
    FOREIGN KEY (expeditions_code)
    REFERENCES expeditions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_fem (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_fem
    FOREIGN KEY (fem_code)
    REFERENCES fem (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_infraction_type (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_infraction_type
    FOREIGN KEY (infraction_type_code)
    REFERENCES infraction_type (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_infractions (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_infractions
    FOREIGN KEY (infractions_code)
    REFERENCES infractions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_ld (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_ld
    FOREIGN KEY (ld_code)
    REFERENCES ld (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_length_unit (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_length_unit
    FOREIGN KEY (length_unit_id)
    REFERENCES length_unit (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_mark_recovery (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_mark_recovery
    FOREIGN KEY (mark_recovery_code)
    REFERENCES mark_recovery (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_maturity (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_maturity
    FOREIGN KEY (maturity_code)
    REFERENCES maturity (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_nations (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_nations
    FOREIGN KEY (nations_id, nations_code)
    REFERENCES nations (id, code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_position_accuracy_lat (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_position_accuracy_lat
    FOREIGN KEY (position_accuracy_lat_code)
    REFERENCES position_accuracy_lat (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_position_accuracy_lon (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_position_accuracy_lon
    FOREIGN KEY (position_accuracy_lon_code)
    REFERENCES position_accuracy_lon (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_sample (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_sample
    FOREIGN KEY (sample_code)
    REFERENCES sample (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_sex (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_sex
    FOREIGN KEY (sex_code)
    REFERENCES sex (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_species (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_species
    FOREIGN KEY (species_code)
    REFERENCES species (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_stomach_content_digestion (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_stomach_content_digestion
    FOREIGN KEY (stomach_content_digestion_code)
    REFERENCES stomach_content_digestion (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_stomach_content_quantity (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_stomach_content_quantity
    FOREIGN KEY (stomach_content_quantity_code)
    REFERENCES stomach_content_quantity (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_stomach_content_size (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_stomach_content_size
    FOREIGN KEY (stomach_content_size_id, stomach_content_size_code)
    REFERENCES stomach_content_size (id, code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_stomach_contents (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_stomach_contents
    FOREIGN KEY (stomach_contents_code)
    REFERENCES stomach_contents (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: individual_text (table: individual)
ALTER TABLE individual ADD CONSTRAINT individual_text
    FOREIGN KEY (text_code)
    REFERENCES text (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_areas (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_areas
    FOREIGN KEY (areas_code)
    REFERENCES areas (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_data (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_data
    FOREIGN KEY (data_id)
    REFERENCES data (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_data_expeditions (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_data_expeditions
    FOREIGN KEY (data_expeditions_code)
    REFERENCES data_expeditions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_expeditions (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_expeditions
    FOREIGN KEY (expeditions_code)
    REFERENCES expeditions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_oil_data_quality (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_oil_data_quality
    FOREIGN KEY (oil_data_quality_id)
    REFERENCES oil_data_quality (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_oil_yield (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_oil_yield
    FOREIGN KEY (oil_yield_id)
    REFERENCES oil_yield (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_operation (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_operation
    FOREIGN KEY (operation_code)
    REFERENCES operations (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: operation_quality (table: operation)
ALTER TABLE operation ADD CONSTRAINT operation_quality
    FOREIGN KEY (quality_code)
    REFERENCES quality (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stomach_contents_stomach_content_locations (table: stomach_contents)
ALTER TABLE stomach_contents ADD CONSTRAINT stomach_contents_stomach_content_locations
    FOREIGN KEY (stomach_content_locations_code)
    REFERENCES stomach_content_locations (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_areas (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_areas
    FOREIGN KEY (areas_code)
    REFERENCES areas (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_data (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_data
    FOREIGN KEY (data_id)
    REFERENCES data (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_data_expeditions (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_data_expeditions
    FOREIGN KEY (data_expeditions_code)
    REFERENCES data_expeditions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_expeditions (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_expeditions
    FOREIGN KEY (expeditions_sum_code)
    REFERENCES expeditions (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_nations (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_nations
    FOREIGN KEY (nations_id, nations_code)
    REFERENCES nations (id, code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_oil_data_quality (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_oil_data_quality
    FOREIGN KEY (oil_data_quality_id)
    REFERENCES oil_data_quality (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_oil_yield (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_oil_yield
    FOREIGN KEY (oil_yield_id)
    REFERENCES oil_yield (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_operation (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_operation
    FOREIGN KEY (operation_code)
    REFERENCES operations (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_quality (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_quality
    FOREIGN KEY (quality_code)
    REFERENCES quality (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: summary_species (table: summary)
ALTER TABLE summary ADD CONSTRAINT summary_species
    FOREIGN KEY (species_code)
    REFERENCES species (code)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: sumreferences_references (table: sumreferences)
ALTER TABLE sumreferences ADD CONSTRAINT sumreferences_references
    FOREIGN KEY (references_id)
    REFERENCES "references" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: sumreferences_summary (table: sumreferences)
ALTER TABLE sumreferences ADD CONSTRAINT sumreferences_summary
    FOREIGN KEY (summary_id)
    REFERENCES summary (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.


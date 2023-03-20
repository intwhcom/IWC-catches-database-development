-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-12-19 09:54:42.389

-- foreign keys
ALTER TABLE catch_summmary
    DROP CONSTRAINT catch_summmary_operation;

ALTER TABLE expeditions
    DROP CONSTRAINT expeditions_areas;

ALTER TABLE expeditions
    DROP CONSTRAINT expeditions_expedition_type;

ALTER TABLE expeditions
    DROP CONSTRAINT expeditions_nations;

ALTER TABLE foetuses
    DROP CONSTRAINT foetuses_individual;

ALTER TABLE foetuses
    DROP CONSTRAINT foetuses_length_unit;

ALTER TABLE foetuses
    DROP CONSTRAINT foetuses_sex;

ALTER TABLE individual
    DROP CONSTRAINT individual_catcher_boats;

ALTER TABLE individual
    DROP CONSTRAINT individual_coding;

ALTER TABLE individual
    DROP CONSTRAINT individual_expeditions;

ALTER TABLE individual
    DROP CONSTRAINT individual_fem;

ALTER TABLE individual
    DROP CONSTRAINT individual_infraction_type;

ALTER TABLE individual
    DROP CONSTRAINT individual_infractions;

ALTER TABLE individual
    DROP CONSTRAINT individual_ld;

ALTER TABLE individual
    DROP CONSTRAINT individual_length_unit;

ALTER TABLE individual
    DROP CONSTRAINT individual_mark_recovery;

ALTER TABLE individual
    DROP CONSTRAINT individual_maturity;

ALTER TABLE individual
    DROP CONSTRAINT individual_nations;

ALTER TABLE individual
    DROP CONSTRAINT individual_position_accuracy_lat;

ALTER TABLE individual
    DROP CONSTRAINT individual_position_accuracy_lon;

ALTER TABLE individual
    DROP CONSTRAINT individual_sample;

ALTER TABLE individual
    DROP CONSTRAINT individual_sex;

ALTER TABLE individual
    DROP CONSTRAINT individual_species;

ALTER TABLE individual
    DROP CONSTRAINT individual_stomach_content_digestion;

ALTER TABLE individual
    DROP CONSTRAINT individual_stomach_content_quantity;

ALTER TABLE individual
    DROP CONSTRAINT individual_stomach_content_size;

ALTER TABLE individual
    DROP CONSTRAINT individual_stomach_contents;

ALTER TABLE individual
    DROP CONSTRAINT individual_text;

ALTER TABLE operation
    DROP CONSTRAINT operation_areas;

ALTER TABLE operation
    DROP CONSTRAINT operation_data;

ALTER TABLE operation
    DROP CONSTRAINT operation_data_expeditions;

ALTER TABLE operation
    DROP CONSTRAINT operation_expeditions;

ALTER TABLE operation
    DROP CONSTRAINT operation_oil_data_quality;

ALTER TABLE operation
    DROP CONSTRAINT operation_oil_yield;

ALTER TABLE operation
    DROP CONSTRAINT operation_operation;

ALTER TABLE operation
    DROP CONSTRAINT operation_quality;

ALTER TABLE stomach_contents
    DROP CONSTRAINT stomach_contents_stomach_content_locations;

ALTER TABLE summary
    DROP CONSTRAINT summary_areas;

ALTER TABLE summary
    DROP CONSTRAINT summary_data;

ALTER TABLE summary
    DROP CONSTRAINT summary_data_expeditions;

ALTER TABLE summary
    DROP CONSTRAINT summary_expeditions;

ALTER TABLE summary
    DROP CONSTRAINT summary_nations;

ALTER TABLE summary
    DROP CONSTRAINT summary_oil_data_quality;

ALTER TABLE summary
    DROP CONSTRAINT summary_oil_yield;

ALTER TABLE summary
    DROP CONSTRAINT summary_operation;

ALTER TABLE summary
    DROP CONSTRAINT summary_quality;

ALTER TABLE summary
    DROP CONSTRAINT summary_species;

ALTER TABLE sumreferences
    DROP CONSTRAINT sumreferences_references;

ALTER TABLE sumreferences
    DROP CONSTRAINT sumreferences_summary;

-- tables
DROP TABLE FAOareas;

DROP TABLE RMPareas;

DROP TABLE areas;

DROP TABLE catch_summmary;

DROP TABLE catcher_boats;

DROP TABLE coding;

DROP TABLE data;

DROP TABLE data_expeditions;

DROP TABLE expedition_type;

DROP TABLE expeditions;

DROP TABLE fem;

DROP TABLE foetuses;

DROP TABLE individual;

DROP TABLE infraction_type;

DROP TABLE infractions;

DROP TABLE ld;

DROP TABLE length_unit;

DROP TABLE mark_recovery;

DROP TABLE maturity;

DROP TABLE nations;

DROP TABLE oil_data_quality;

DROP TABLE oil_yield;

DROP TABLE operation;

DROP TABLE operations;

DROP TABLE position_accuracy_lat;

DROP TABLE position_accuracy_lon;

DROP TABLE quality;

DROP TABLE "references";

DROP TABLE sample;

DROP TABLE sex;

DROP TABLE species;

DROP TABLE stomach_content_digestion;

DROP TABLE stomach_content_locations;

DROP TABLE stomach_content_quantity;

DROP TABLE stomach_content_size;

DROP TABLE stomach_contents;

DROP TABLE summary;

DROP TABLE sumreferences;

DROP TABLE text;

-- End of file.


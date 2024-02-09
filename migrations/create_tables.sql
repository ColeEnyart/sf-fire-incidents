DROP TABLE IF EXISTS incidents;
DROP TABLE IF EXISTS locations;

CREATE TABLE IF NOT EXISTS incidents (
    id serial PRIMARY KEY,
    incident_number INTEGER,
    incident_date TIMESTAMP,
    alarm_dttm TIMESTAMP,
    arrival_dttm TIMESTAMP,
    close_dttm TIMESTAMP,
    CONSTRAINT fk_location
        FOREIGN KEY (location_id) 
        REFERENCES locations (id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS locations (
    id serial PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(255),
    zipcode VARCHAR(255),
    latitude DECIMAL,
    longitude DECIMAL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 'incident_number', 'exposure_number', 'id', 'address', 'incident_date',
--        'call_number', 'alarm_dttm', 'arrival_dttm', 'close_dttm', 'city',
--        'zipcode', 'battalion', 'station_area', 'suppression_units',
--        'suppression_personnel', 'ems_units', 'ems_personnel', 'other_units',
--        'other_personnel', 'first_unit_on_scene', 'fire_fatalities',
--        'fire_injuries', 'civilian_fatalities', 'civilian_injuries',
--        'number_of_alarms', 'primary_situation', 'mutual_aid',
--        'action_taken_primary', 'action_taken_secondary', 'action_taken_other',
--        'detector_alerted_occupants', 'property_use', 'supervisor_district',
--        'neighborhood_district', 'point', 'estimated_contents_loss',
--        'area_of_fire_origin', 'ignition_cause', 'ignition_factor_primary',
--        'ignition_factor_secondary', 'heat_source', 'item_first_ignited',
--        'human_factors_associated_with_ignition', 'estimated_property_loss',
--        'structure_type', 'structure_status', 'floor_of_fire_origin',
--        'fire_spread', 'no_flame_spead', 'number_of_floors_with_minimum_damage',
--        'number_of_floors_with_significant_damage',
--        'number_of_floors_with_heavy_damage',
--        'number_of_floors_with_extreme_damage', 'detectors_present',
--        'detector_type', 'detector_operation', 'detector_effectiveness',
--        'detector_failure_reason', 'automatic_extinguishing_system_present',
--        'automatic_extinguishing_sytem_type',
--        'automatic_extinguishing_sytem_perfomance',
--        'automatic_extinguishing_sytem_failure_reason',
--        'number_of_sprinkler_heads_operating', 'box'
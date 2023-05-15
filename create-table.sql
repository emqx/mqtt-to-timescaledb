CREATE TABLE energy_log (
  factory_id VARCHAR(20),
  factory VARCHAR(255),
  air_compressor_1 DECIMAL(10, 2),
  air_compressor_2 DECIMAL(10, 2),
  lighting DECIMAL(10, 2),
  cooling_equipment DECIMAL(10, 2),
  heating_equipment DECIMAL(10, 2),
  conveyor DECIMAL(10, 2),
  coating_equipment DECIMAL(10, 2),
  inspection_equipment DECIMAL(10, 2),
  welding_equipment DECIMAL(10, 2),
  packaging_equipment DECIMAL(10, 2),
  cutting_equipment DECIMAL(10, 2),
  timestamp TIMESTAMPTZ
);

-- Create INDEX
CREATE INDEX idx_factory_id ON energy_log(factory_id);
CREATE INDEX idx_timestamp ON energy_log(timestamp);

-- Create time-based partitioning policy
-- Partitioning the data into four equally sized time ranges allows 
-- for easier querying within specific time ranges and provides improved performance and scalability as the data grows.
SELECT create_hypertable('energy_log', 'timestamp', 'factory_id', 4);

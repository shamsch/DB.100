# Potato Database Schema

## potato
| Column | Type | Constraints |
|--------|------|-------------|
| potato_id | INT | PRIMARY KEY |
| potato_name | VARCHAR(30) | NOT NULL, UNIQUE |
| potato_type | VARCHAR(30) | |
| colour | VARCHAR(30) | |
| introduction_year | INT | |

## agent
| Column | Type | Constraints |
|--------|------|-------------|
| agent_id | INT | PRIMARY KEY |
| agent_name | VARCHAR(30) | NOT NULL, UNIQUE |
| foundation_year | INT | |

## breeder
| Column | Type | Constraints |
|--------|------|-------------|
| breeder_id | INT | PRIMARY KEY |
| breeder_name | VARCHAR(30) | NOT NULL, UNIQUE |
| country | VARCHAR(30) | NOT NULL |
| agent_id | INT | NOT NULL, FOREIGN KEY (references agent) |

## breeds
| Column | Type | Constraints |
|--------|------|-------------|
| breeder_id | INT | PRIMARY KEY, FOREIGN KEY (references breeder) |
| potato_id | INT | PRIMARY KEY, FOREIGN KEY (references potato) |
| tonnes_per_year | NUMERIC(8,1) | |
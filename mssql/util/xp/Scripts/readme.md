# Project Structure
Paths wrapped in square brackets (`${...}`) are variables and it is implied there can be multiple.

Path|Example|Usage
---|---|---
`./mssql`||Root of all SQL database objects
`../``${db_name}`|`util`|Logical Databases
`../../``${schema_name}`|`core`|Database Schemas
`../../../Tables`||Table Objects
`../../../Views`||View Objects
`../../../Programmability`||Programmable Objects
`../../../../Functions`||Function Objects
`../../../../Procedures`||Procedure Objects
`../../../ Scripts`||One-off Scripts
`../../../../Config`||Schemas, users, config, etc.
`../../../../Populate`||Scripts to populate static table data
`../../../../Misc`||Genric helper scripts, typically leftover dev artifacts

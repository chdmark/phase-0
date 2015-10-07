![Alt text](cher.png)

1. Select all data for all states

`SELECT * FROM states`

2. Select all data for all regions

`SELECT * FROM regions`

3. Select the state_name and population for all states

```
SELECT state_name, population
FROM states;
```

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

```
SELECT state_name, population
FROM states
ORDER BY population DESC;
```

5. Select the state_name for the states in region 7.

```
SELECT state_name
FROM states
WHERE region_id=7;
```

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

```
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;
```

7. Select the state_name for states with a population between 1 million and 1.5 million people.

```
SELECT state_name
from states
WHERE population BETWEEN 1000000 AND 1500000;
```


8. Select the state_name and region_id for states ordered by region in ascending order.

```
SELECT state_name, region_id
from states
ORDER BY region_id ASC;
```


9. Select the region_name for the regions with "Central" in the name.

```
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central';
```

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

```
SELECT region_name, state_name
FROM regions
INNER JOIN states
ON regions.id=states.region_id
ORDER BY states.region_id ASC; 
```

- Reflect
- What are databases for?
- What is a one-to-many relationship?
- What is a primary key? What is a foreign key? How can you determine which is which?
- How can you select information out of a SQL database? What are some general guidelines for that?

Databases are used for collecting and storing information. It stores data for easy retrieval and modification. 

A one-to-many relationship is when things in the tables are different but share a relationship. For example, a teacher may teach one class, but that class may be taught by many different teachers. This is an example of a one-to-many relationship.

A primary key uniquiely identifies the table. That column should be the primary key. This is usually identified by an id of some sort. A foreign key is defined in the second table, but refers to the primary key in the first table. 


You can use SELECT, WHERE, ORDER BY, LIKE, ON, FROM, etc. 
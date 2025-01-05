-- Running SELECT statements to confirm the tables were created and contain 
-- the correct columns

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM campaign

-- Verifying each table has the correct data running SELECT statements

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM campaign

-- Query to find the first and last names of everyone who back a project, including 
-- the Company Name and Description. Joined using the contact_id.

SELECT camp.contact_id, 
camp.company_name, camp.description, cont.first_name, cont.last_name
FROM campaign as camp
	LEFT JOIN contacts as cont
	ON (camp.contact_id = cont.contact_id)
ORDER BY camp.contact_id;
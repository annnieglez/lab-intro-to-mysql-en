-- Fix the spelling of Miami for Paige Turner in the Salespersons table
UPDATE saleperson
SET store_name = 'Miami'
WHERE first_name = 'Paige' AND last_name = 'Turner';

-- Update customer email addresses
UPDATE customer
SET email = 'ppicasso@gmail.com'
WHERE first_name = 'Pablo';

UPDATE customer
SET email = 'lincoln@us.gov'
WHERE first_name = 'Abraham';

UPDATE customer
SET email = 'hello@napoleon.me'
WHERE first_name = 'Napoleon';

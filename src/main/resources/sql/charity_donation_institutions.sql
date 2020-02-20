INSERT INTO charity_donation.institutions (id, description, name) VALUES (1, 'Pomoc dzieciom z ubogich rodzin', 'Fundacja "Dbam o Zdrowie"');
INSERT INTO charity_donation.institutions (id, description, name) VALUES (2, 'Pomoc osobom znajdującym się w trudnej sytuacji życiowej', 'Fundacja "Dla dzieci"');
INSERT INTO charity_donation.institutions (id, description, name) VALUES (3, 'Pomoc wybudzaniu dzieci ze śpiączki.', 'Fundacja "A kogo"');
INSERT INTO charity_donation.institutions (id, description, name) VALUES (4, 'Pomoc dla osób nie posiadających miejsca zamieszkania', 'Fundacja “Bez domu”');

INSERT INTO charity_donation.donations (id, city, pick_up_comment, pick_up_date, pick_uptime, quantity, street, zip_code, institution_id) VALUES (1, 'Warsaw', 'none', '2020-01-25', '12:00:00', 5, 'ul. Marszałkowska', '02-746', 1);
INSERT INTO charity_donation.donations (id, city, pick_up_comment, pick_up_date, pick_uptime, quantity, street, zip_code, institution_id) VALUES (2, 'Gdansk', 'sdfkj', '2020-02-03', '15:00:00', 28, 'ul. Długa', '06-400', 3);
INSERT INTO charity_donation.donations (id, city, pick_up_comment, pick_up_date, pick_uptime, quantity, street, zip_code, institution_id) VALUES (3, 'Kraków', 'szybko!', '2020-01-04', '10:30:00', 3, 'ul. Franciszkańska', '01-500', 2);

INSERT INTO charity_donation.categories (id, name) VALUES (1, 'ubrania');
INSERT INTO charity_donation.categories (id, name) VALUES (2, 'zabawki');
INSERT INTO charity_donation.categories (id, name) VALUES (3, 'żywność');
INSERT INTO charity_donation.categories (id, name) VALUES (4, 'meble');
INSERT INTO charity_donation.categories (id, name) VALUES (5, 'chemia gospodarcza');
INSERT INTO charity_donation.categories (id, name) VALUES (6, 'rtv/agd');




SELECT
	DISTINCT NAME
FROM
	INSTITUTIONS INS
WHERE
	INS.NAME NOT IN (
		SELECT DISTINCT
			INSTITUTION_NAME
		FROM
			SPONSORS SPO
			JOIN FILMS ON SPO.SPONSORED_FILM_ID = FILMS.FILM_ID
		WHERE
			LANGUAGE = 'English'
	)
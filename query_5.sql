SELECT
	MAIN_DIRECTOR
FROM
	FILMS
WHERE
	FILMS.FILM_ID IN (
		SELECT
			COMPETING_FILM_ID
		FROM
			PUBLIC.COMPETITIONS
		WHERE
			COMPETITION_CATEGORY_EVENT LIKE 'Movies from the %'
		GROUP BY
			COMPETING_FILM_ID
		ORDER BY
			COUNT(COMPETING_FILM_ID) DESC
		LIMIT
			1
	)
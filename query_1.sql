SELECT
	INS.SSN
FROM
	INSPECTORS INS,
	ORGANIZERS ORG
WHERE
	INS.SSN = ORG.SSN
WITH top_industries AS(
	SELECT industry,
	       COUNT(*) AS count
	FROM industries AS i
	JOIN dates AS d
   	  ON i.company_id = d.company_id
	WHERE EXTRACT(YEAR FROM date_joined) IN ('2019','2020','2021')
	GROUP BY industry
	ORDER BY count DESC
	LIMIT 3
),
yearly_rankings AS(
    SELECT industry,
           EXTRACT(YEAR FROM date_joined) AS year,
           COUNT(i.*) AS num_unicorns,
           AVG(valuation) AS avg_valuation
    FROM dates AS d
    JOIN funding AS f
    USING (company_id)
    JOIN industries AS i
    USING (company_id)
    GROUP BY industry, year
)
SELECT industry,
	   year,
	   num_unicorns,
	   ROUND(AVG(avg_valuation/1000000000),2) AS average_valuation_billions
FROM yearly_rankings
WHERE year IN ('2019', '2020', '2021')
  AND industry IN (SELECT industry FROM top_industries)
GROUP BY industry, num_unicorns, year
ORDER BY industry, year DESC, num_unicorns DESC;
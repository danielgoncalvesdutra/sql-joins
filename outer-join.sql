/*Consider this scenario: 

You have been tasked to provide data for a feature sports article on Michael Jordan’s basketball career. The writer wants to include a funny twist and asks 
you to find out if Michael Jordan played better at schools with animal mascots.

To analyze his early career, you start with the years he played basketball in college. You need to examine National Collegiate Athletic Association (NCAA) 
college basketball stats from 1984.

You’ll need a list of all NCAA Division I colleges and universities; their mascots, if applicable; and their number of wins and losses. You can find this information 
in the public dataset ncaa_basketball on BigQuery.

Next, you will write a query. Your query should join the season statistics from one table with the mascot information from another. You need to use a LEFT JOIN instead
of an INNER JOIN because not all teams have mascots. If you use an INNER JOIN, you would exclude teams with no mascot.*/

SELECT
 seasons.market AS university,
 seasons.name AS team_name,
 seasons.wins,
 seasons.losses,
 seasons.ties,
 mascots.mascot AS team_mascot
FROM
 `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons` AS seasons
LEFT JOIN
 `bigquery-public-data.ncaa_basketball.mascots` AS mascots
ON
 seasons.team_id = mascots.id
WHERE
 seasons.season = 1984
 AND seasons.division = 1
ORDER BY
 seasons.market

 /*This is an example of when a LEFT JOIN is more helpful than an INNER JOIN. With this query, you can look at college basketball statistics to get a better sense of 
 Michael Jordan’s early career, find out more information about which teams had mascots, and answer your business question.*/
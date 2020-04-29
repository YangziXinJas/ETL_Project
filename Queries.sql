SELECT u."State", u."Filed_Week_Ended", u."Initial_Claims", d."Date", d."Death"
FROM unemployment u
JOIN us_death d
ON u."Filed_Week_Ended" = d."Date" AND  u."State" = d."State"
WHERE u."State" = 'Texas'



SELECT * 
FROM merge



SELECT m."State", m."Date", m."Initial_Claims", m."Death", m."Population"
FROM merge m
WHERE m."Date" = '2020-04-11 00:00:00'
ORDER BY m."Death" DESC



SELECT m."State", m."Date", m."Initial_Claims", m."Death", m."Population"
FROM merge m
WHERE m."Date" = '2020-04-11 00:00:00'
ORDER BY m."Initial_Claims" DESC
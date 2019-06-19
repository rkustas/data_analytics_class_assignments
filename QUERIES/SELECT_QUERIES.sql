SELECT *
	FROM da_weather.us_weather_anomalies
	LIMIT 500
SELECT DISTINCT station_name
	FROM da_weather.us_weather_anomalies
SELECT date_ymd,degrees_from_mean,station_name
	FROM da_weather.us_weather_anomalies
	LIMIT 1200
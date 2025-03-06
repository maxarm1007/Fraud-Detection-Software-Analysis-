CREATE TABLE missing_transactions1 (
    total_rows INTEGER,
	blank_browser INTEGER,
    blank_device_id INTEGER,
    blank_os INTEGER,
    blank_time_on_page INTEGER,
    blank_proxy_type INTEGER,
    blank_remote_desktop INTEGER)
    
INSERT INTO missing_transactions1 (total_rows, blank_browser, blank_device_id, blank_os, blank_time_on_page, blank_proxy_type, blank_remote_desktop)
SUM(CASE WHEN device_id IS NULL OR device_id = '' THEN 1 ELSE 0 END) AS blank_device_id,
SUM(CASE WHEN os IS NULL OR os = '' THEN 1 ELSE 0 END) AS blank_os, SUM(CASE WHEN time_on_page IS NULL OR time_on_page = '' THEN 1 ELSE 0 END) AS blank_time_on_page,
SUM(CASE WHEN proxy_type IS NULL OR proxy_type = '' THEN 1 ELSE 0 END) AS blank_proxy_type, SUM(CASE WHEN remote_desktop IS NULL OR remote_desktop = '' THEN 1 ELSE 0 END) AS blank_remote_desktop
FROM bank_data_exercise;

    




SELECT * FROM servers;
SELECT * FROM server_contacts;

SELECT servers.id, servers.hostname, servers.ip_address, servers.operating_system, server_contacts.contact_email
FROM servers
LEFT JOIN server_contacts
ON servers.id=server_contacts.server_id
ORDER BY hostname ASC
LIMIT 1;
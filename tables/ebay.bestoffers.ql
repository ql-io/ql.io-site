-- Uses eBay api and fetches the best offer details for a given bestoffer enabled itemid

create table ebay.bestoffers
  on select post to "https://api.ebay.com/ws/api.dll?appid={^appid}&version=723"
     using headers 'Content-Type'= 'application/xml; charset=UTF-8',
                   'X-EBAY-API-SITEID'= '0',
                   'X-EBAY-API-COMPATIBILITY-LEVEL'= '723',
                   'X-EBAY-API-CALL-NAME'= 'getBestOffers',
                  'X-EBAY-API-APP-NAME'= 'eBayinc2e-d3b4-4a21-a765-47cc6b01cf7',
                  'X-EBAY-API-DEV-NAME'= '101e429b-df77-47ee-80f5-349eabe13c42',
                  'X-EBAY-API-CERT-NAME'= '6c620af8-6fec-418c-bc40-35d7dd89fd8b'
     using defaults format = 'JSON', lang= 'en_US', limit = 10, offset = 0,
                    eBayAuthToken = 'AgAAAA**AQAAAA**aAAAAA**eX/9Sw**nY+sHZ2PrBmdj6wVnY+sEZ2PrA2dj6wJnY+gD5iEqASdj6x9nY+seQ**tgAAAA**AAMAAA**1y/G2q9QpaAO+MhWbz4udpJlXlq1Lebd3g8MAbegBzOfCLV4jsnlGmkUy3YIAQZI9Vvrn4QAzS7FSeaw5rpctIvdJZtiB+ROXb/eP/QCwNIe1AvxmKQNnwQ3L7SxUNP89dYjq+zR/P7kLD562rGJEnrHSarlgV4qnAI2BUID/jZ8wMUGeUU7OS/loeuW9PYfzJF0XsdVXTyqoWhCQQkeREC3P555/dCcWUHLYTSlrG03ti02Y0bQLkD5eB0nptYxg8xrzbcBFhk4ftJoQ/AKBOe1fb2TIG/aeI/qeC5ReE/JindxSTz4+NPptudAYjhX6dEZL/PrRdX2mgwGF0sAcQsdRDffwQwCJrwvZLzUKQt0uwUARlTiEkUpXSzG94/aIs1A3Z2SV5TKqPV39RuiX7sW5kIN8MJtt3rCnPHZ77ubAJo7OqFOisbzh6lAWZi44Ry2H0A9zg8+ZBmjOPOUVx8BAIgQj6XVhN59SRvnk7lH1qHRwJz2uJMJ6CxmKNlLmtoWq5A+4B4SYNOcCKLzLrk3zyxv5ORvq6CL6obgjtuxEFk/AIB2khqwzDX0l/LlUwEtC+GbyV48dlI42DObJp+7PhGLBF9kJVYaFnUdIbl78qqrY8Y293RBKRhrfEa/ZBpCqKG6aIuEQtH930QZqIKETdNSCpXhN1FHQ+UX9iOROvzHHn5QK+PzaFAI3FbwkIGaalA7fmwzDkZqZ6xhYF5R8SANMXFt8hongwE2SsrRKFX/drv1hySw1L4Elexe',
                    appid = 'eBayinc2e-d3b4-4a21-a765-47cc6b01cf7'
     using bodyTemplate 'ebay.bestoffers.xml.mu' type 'application/xml' foreach 'itemId'


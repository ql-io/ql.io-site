-- Echos the path params

return {
  "hw": "{hw}",
  "message": "{message}",
  "text": "{text}"
} via route '/echo/{hw}/{message}' using method get
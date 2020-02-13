module("resty.consul", package.seeall)

_VERSION = '0.1.0'

function service_nodes(service)
  local http = require "resty.http"
  local json = require "cjson"
  local hc = http:new()

  local upstream = ""
  
  local ok, code, headers, status, body = hc:request {
      url = "http://127.0.0.1:8500/v1/catalog/service/" .. service,
      port = 8500,
      method = "GET"
  }
  
  if body then
    local nodes = json.decode(body)
    node = math.random(1, #nodes)
    upstream = nodes[node]["Address"] .. ":" .. nodes[node]["ServicePort"]    
  end
  
  return upstream
end            
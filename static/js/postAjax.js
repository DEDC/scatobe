// Args... url, mehtod, body, callback, headers
function deltaAjax (url, method, body, headers = null, callback) {

  let token = document.querySelector('meta[name="csrfmiddlewaretoken"]').getAttribute('content')
  body.append('csrfmiddlewaretoken', token)
  let headerDefault = {headers: {
    'Content-type': 'application/json'
  }}
  headers = headers || headerDefault
  fetch(url, {
    headers,
    method: method,
    body: body
  }).then(function (response) {
    console.log(response)
    return response.json()
  }).then(function (data) {
    callback(data)
  })
}

function test (msg) {
  console.log('este es tu mensaje je je', msg)
}


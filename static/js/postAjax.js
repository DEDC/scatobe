// Args... url, mehtod, body, callback, headers
function deltaAjax (url, method, body, headers = null, callback) {

  let headerDefault = {headers: {
    'Content-type': 'application/json'
  }}
  headers = headers || headerDefault
  console.log(callback)
   
  // fetch(url, {
  //   headers,
  //   method: method,
  //   body: body
  // }).then(function (data) {
  //   console.log(data)
  //   callback()
  // })
}

function test (msg) {
  console.log('este es tu mensaje je je', msg)
}

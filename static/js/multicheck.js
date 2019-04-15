// self executing function here
(function () {
  let alert = () => {
    alert('alert')
  }
  document.getElementById('btnAlert').addEventListener('click', test)
  document.getElementById('makePdf').addEventListener('click', () => {
    let url = 'alguna url'
    let method = 'POST'
    let body = new FormData()
    let checkDownload = document.getElementsByClassName('checkDownload')
    // let formData = new FormData()
    for (let item of checkDownload) {
      if (item.checked) {
        body.append(item.name, item.value)
      }
    }
    // ORDEN PARAMETROS:
    // METHOD, BODY, HEADERS, CALLBACK
    deltaAjax(url, method, body, null, alert)

  })
})()

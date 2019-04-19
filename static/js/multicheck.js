// self executing function here
(function () {
  let alerts = (data) => {
    alert(data.msg)
  }

  let formSubmit = (path, params, method) => {
    method = method || 'post'
    let form = document.createElement('form')
    form.setAttribute('method', method)
    form.setAttribute('action', path)

    for (let item of checkDownload) {
      if (item.checked) {
        let hiddenField = document.createElement('input')
        hiddenField.setAttribute('type', 'hidden')
        hiddenField.setAttribute('name', item.name)
        hiddenField.setAttribute('value', item.value)
        form.appendChild(hiddenField)
      }
    }
    document.body.appendChild(form)
    form.submit()
  }

  document.getElementById('makePdf').addEventListener('click', (e) => {
    let that = e.target
    let method = 'POST'
    let url = that.dataset.post
    let form = document.createElement('form')
    let checkDownload = document.getElementsByClassName('checkDownload')
    form.setAttribute('method', method)
    form.setAttribute('action', url)
    form.setAttribute('target', '_blank')

    for (let item of checkDownload) {
      if (item.checked) {
        let hiddenField = document.createElement('input')
        hiddenField.setAttribute('type', 'hidden')
        hiddenField.setAttribute('name', item.name)
        hiddenField.setAttribute('value', item.value)
        form.appendChild(hiddenField)
      }
    }
    let token = document.querySelector('meta[name="csrfmiddlewaretoken"]').getAttribute('content')
    let hiddenField = document.createElement('input')
    hiddenField.setAttribute('type', 'hidden')
    hiddenField.setAttribute('name', 'csrfmiddlewaretoken')
    hiddenField.setAttribute('value', token)
    form.appendChild(hiddenField)
    document.body.appendChild(form)
    form.submit()
    // let that = e.target
    // let url = that.dataset.post
    // let method = 'POST'
    // let body = new FormData()
    // let checkDownload = document.getElementsByClassName('checkDownload')
    // // let formData = new FormData()
    // for (let item of checkDownload) {
    //   if (item.checked) {
    //     body.append(item.name, item.value)
    //   }
    // }
    // // ORDEN PARAMETROS:
    // // METHOD, BODY, HEADERS, CALLBACK
    // deltaAjax(url, method, body, null, alerts)
  })
  document.getElementById('checkAll').addEventListener('click', (e) => {
    let table = $('#admin').DataTable()
    table.rows('.important').select()
    console.log(table);
    
    
  })
})()

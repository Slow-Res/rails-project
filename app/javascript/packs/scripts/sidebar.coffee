
console.log "Loading sidebar.coffee"

$('#Courses-link').on 'click', (e) ->
    e.preventDefault()  

    console.log  "LOADING"

    url = '/student-courses'
    updateMainContainer(url)


$('#Enrollments-link').on 'click', (e) ->
    e.preventDefault()  

    console.log  "LOADING"

    url = '/student-Enrollments'
    updateMainContainer(url)
  


$('#Assignments-link').on 'click', (e) ->
    e.preventDefault()  

    console.log  "LOADING"

    url = '/student-assignments'
    updateMainContainer(url)



$('#Sechudle-link').on 'click', (e) ->
    e.preventDefault()  

    console.log  "LOADING"

    url = '/student-courses'
    updateMainContainer(url)



$('#Profile-link').on 'click', (e) ->
    e.preventDefault()  

    console.log  "LOADING"

    url = '/student-courses'
    updateMainContainer(url)
  
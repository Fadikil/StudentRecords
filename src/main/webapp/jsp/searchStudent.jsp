<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f9fc;
        padding: 20px;
        text-align: center;
    }
form {
    background-color: white;
    padding: 20px;
    max-width: 400px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 0 auto;
}
a {
    background:#CD5C5C;
    color:#FAF9F6;
    font-size:15px;
    padding:8px 12px;
    border-radius:3px;
    text-decoration:none;
    display: block;
    width: fit-content;  /* shrink to content */
    margin: 15px auto 0;


}
</style>

<body>
<h1>Search student by ID</h1>
<form id="searchForm">
    <label for = "id">Student ID:</label>
    <input type = "number" name = "id" id = "id" required/>
    <button type = "submit">Search</button>
</form>
<div id = "result"></div>
<a href="<%= request.getContextPath() %>/index.jsp">Back to Home</a>

<script>
    document.getElementById("searchForm").addEventListener("submit", function(e){
        e.preventDefault();
        let formData = new URLSearchParams(new FormData(this));

        fetch("<%= request.getContextPath() %>/searchStudent?id=" + formData.get("id"))
            .then(r => r.text())
            .then(data =>{
                document.getElementById("result").innerHTML = data;

    })
            .catch(error => {
                document.getElementById("result").innerHTML = "Error occurred.";
            });
    });



</script>
</body>
</html>

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>

    <!-- Bootstrap (optional but recommended) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="p-4">

<h2 class="mb-4">User List</h2>

<table class="table table-bordered table-hover">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
        <th>Role</th>
    </tr>

<%
List<String[]> users = (List<String[]>) request.getAttribute("users");

if (users != null && !users.isEmpty()) {
    for (String[] u : users) {
%>

    <tr>
        <td><%= u[0] %></td>
        <td><%= u[1] %></td>
        <td><%= u[2] %></td>
        <td><%= u[3] %></td>
    </tr>

<%
    }
} else {
%>

    <tr>
        <td colspan="4" class="text-center">No users found</td>
    </tr>

<%
}
%>

</table>

</body>
</html>
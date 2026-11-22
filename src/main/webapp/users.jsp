
<%@ page import="java.util.*" %>

<%!
    public String escapeHTML(String value) {
        if (value == null) return "";

        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>

<%
String role = (String) session.getAttribute("role");

if (session.getAttribute("name") == null ||
    !"admin".equalsIgnoreCase(role)) {

    response.sendRedirect("Login.jsp");
    return;
}

List<String[]> users =
    (List<String[]>) request.getAttribute("users");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Manage Users - Gavran Khajina</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body {
    background: #fff8f0;
    font-family: Arial, sans-serif;
}

.header {
    background: #7B3F00;
    color: white;
    padding: 25px;
    border-radius: 12px;
    margin-bottom: 30px;
}

.user-container {
    background: white;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.08);
}

.table th {
    background: #7B3F00;
    color: white;
    padding: 15px;
}

.table td {
    padding: 14px;
    vertical-align: middle;
}

.btn-back {
    background: #7B3F00;
    color: white;
    border: none;
}

.btn-back:hover {
    background: #542b00;
    color: white;
}

.badge-admin {
    background: #198754;
}

.badge-user {
    background: #0d6efd;
}

</style>

</head>

<body>

<div class="container mt-4">

    <!-- Header -->

    <div class="header">

        <h2>👥 Manage Registered Users</h2>

        <p class="mb-0">
            Gavran Khajina - Admin Panel
        </p>

    </div>

    <!-- User Table -->

    <div class="user-container">

        <div class="d-flex justify-content-between
                    align-items-center flex-wrap mb-4">

            <h4>Registered Users</h4>

            <a href="admin-dashboard.jsp"
               class="btn btn-back">
                ← Back to Dashboard
            </a>

        </div>

        <div class="table-responsive">

            <table class="table table-bordered table-hover">

                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                    </tr>

                </thead>

                <tbody>

                <%
                if (users != null && !users.isEmpty()) {

                    for (String[] u : users) {
                %>

                    <tr>

                        <td><%= escapeHTML(u[0]) %></td>

                        <td><%= escapeHTML(u[1]) %></td>

                        <td><%= escapeHTML(u[2]) %></td>

                        <td>

                            <% if ("admin".equalsIgnoreCase(u[3])) { %>

                                <span class="badge badge-admin">
                                    Admin
                                </span>

                            <% } else { %>

                                <span class="badge badge-user">
                                    User
                                </span>

                            <% } %>

                        </td>

                    </tr>

                <%
                    }

                } else {
                %>

                    <tr>

                        <td colspan="4"
                            class="text-center text-muted p-4">

                            No registered users found.

                        </td>

                    </tr>

                <%
                }
                %>

                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</html>

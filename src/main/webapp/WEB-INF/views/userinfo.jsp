<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>User Info</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            .container, .container-layout {
                max-width: 600px;
                margin: 100px auto;
                background-color: #fff;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .container-layout {
                max-width: 500px;
            }

            h1 {
                color: navy;
            }

            form {
                margin-top: 20px;
            }

            input[type="submit"] {
                background-color: red;
                color: white;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: darkred;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="container-layout">
                <h1>Інформація про користувача</h1>
                <p><%=request.getAttribute("greeting")%>, <%=request.getAttribute("username")%>!</p>
                <form method="post" action="<%=request.getContextPath()%>/userinfo">
                    <input type="submit" value="Вийти">
                </form>
            </div>
        </div>
    </body>
</html>

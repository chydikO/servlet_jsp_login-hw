<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            .container, .form-layout {
                max-width: 600px;
                margin: 100px auto;
                background-color: #fff;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .form-layout {
                max-width: 500px;
                padding: 20px 20px;
            }

            .form-layout p {
                font-size: 22px;
            }

            h1 {
                color: navy;
                text-align: center;
            }

            form {
                margin: 20px auto;
                width: 300px;
                border: 1px solid #ccc;
                padding: 20px;
            }

            label {
                display: block;
                margin-bottom: 10px;
            }

            input {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
            }

            input[type="submit"] {
                background-color: navy;
                color: white;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: blue;
            }

            .error {
                color: red;
                margin-top: 10px;
            }
        </style>
    </head>
        <body>
            <div class="container">
                <div class="form-layout">
                    <h1>Вхід</h1>
                    <% String message = (String) request.getAttribute("message"); %>
                    <% if (message != null) { %>
                    <p><%= message %></p>
                    <% } %>
                    <form method="post" action="<%=request.getContextPath()%>/">
                        <label>
                            Ім'я користувача: <input name="username" required
                        ></label><br>
                        <label>
                            Пароль: <input type="password" name="password" required>
                        </label><br>
                        <input type="submit" value="Увійти">
                    </form>
                </div>
            </div>
        </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Home</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            .container .form-layout {
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
                text-align: center;
            }

            h1 {
                color: navy;
            }

            nav {
                margin-bottom: 20px;
            }

            nav a {
                margin-right: 20px;
                text-decoration: none;
                color: navy;
                font-weight: bold;
            }

            nav a:hover {
                color: blue;
            }

            section {
                border: 1px solid #ccc;
                padding: 10px;
            }

            form {
                margin-bottom: 10px;
            }

            ul {
                list-style-type: none;
                padding: 0;
            }

            li {
                list-style: none;
                margin-bottom: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="form-layout">
                <h1>Home page</h1>
                <nav>
                    <menu>
                        <li><a href="<%=request.getContextPath()%>/login">Вхід</a></li>
                        <li><a href="<%=request.getContextPath()%>/userinfo">Переглянути інформацію</a></li>
                    </menu>
                </nav>
            </div>
        </div>
    </body>
</html>

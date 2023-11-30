<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/css/start.css" rel="stylesheet">
    <link href="/public/css/tab.css" rel="stylesheet">
    <title>D&D Character Creator</title>
    <link rel="icon" type="image/x-icon" href="/public/img/favicon.ico">
</head>
<body>
    <div class="container">
        <div class="main">
            <p1 class="header">Character Creator</p1>
            <div class="logo">
                <img src="/public/img/logo.svg">
            </div>
            <div class="nav-tab">
                <button class="nav-button" id="nav-button-login" onclick="openTab('login')">Login</button>
                <button class="nav-button" id="nav-button-register" onclick="openTab('register')">Register</button>
            </div>
            <div class="tab-container">
                <div class="tab" id="tab-login">
                    <?php
                    if(isset($loginMessage)) {
                        echo '<div class="message">';
                        echo $loginMessage;
                        echo '</div>';
                    }
                    ?>
                    <form name="login" action="/login" method="post">
                        <input name="username" type="text" placeholder="Username" required>
                        <input name="password" type="password" placeholder="Password" required>
                        <button type="submit">Sign in</button>
                    </form>
                </div>
                <div class="tab" id="tab-register">
                    <?php
                    if(isset($registerMessage)) {
                        echo '<div class="message">';
                        echo $registerMessage;
                        echo '</div>';
                    }
                    ?>
                    <form name="register" action="/register" onsubmit="return validateRegister()" method="post">
                        <input name="username" type="text" placeholder="Username" required>
                        <input name="email" type="email" placeholder="Email" required>
                        <input name="password" type="password" placeholder="Password" required>
                        <input name="confirmPassword" type="password" placeholder="Repeat Password" required>
                        <button type="submit">Sign in</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="/public/js/tab.js"></script>
    <script src="/public/js/start-validation.js"></script>

    <?php
        if(isset($registerMessage)) {
            echo '<script>openTab("register")</script>';
        } else {
            echo '<script>openTab("login")</script>';
        }
    ?>
</body>
</html>
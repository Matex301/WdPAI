<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/css/start.css" rel="stylesheet">
    <title>D&D Character Creator</title>
    <link rel="icon" type="image/x-icon" href="/public/img/favicon.ico">
</head>
<body>
    <div class="container">
        <div class="main">
            <p1 class="header">Admin Panel</p1>
            <div class="logo">
                <img src="/public/img/logo.svg">
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
                    <form name="login" action="/admin" method="post">
                        <input name="username" type="text" placeholder="Username" required>
                        <input name="password" type="password" placeholder="Password" required>
                        <button type="submit">Sign in</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="/public/js/start-validation.js"></script>

</body>
</html>
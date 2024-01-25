<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/css/panel.css" rel="stylesheet">
    <title>DnD Character Creator</title>
    <link rel="icon" type="image/x-icon" href="/public/img/favicon.ico">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="title">
                User Panel
            </div>
            <div class="under-title">
                <button class="logout-button" onclick="location.href='/logout'" >Logout</button>
            </div>
        </div>

        <div class="body">
            <div class="panel-container" id="panel-container">

            </div>
        </div>
    </div>
    <script src="/public/js/panel.js"></script>
</body>
</html>
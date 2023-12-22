<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/css/main.css" rel="stylesheet">
    <link href="/public/css/tab.css" rel="stylesheet">
    <title>DnD Character Creator</title>
    <link rel="icon" type="image/x-icon" href="/public/img/favicon.ico">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="title">
                D&D Character Creator
            </div>
            <div class="nav-tab">
                <button class="nav-button active" id="nav-button-race" onclick="openTab('race')">Race</button>
                <button class="nav-button" id="nav-button-class" onclick="openTab('class')">Class</button>
                <button class="nav-button" id="nav-button-ability-score" onclick="openTab('ability-score')">Ability Score</button>
                <button class="nav-button" id="nav-button-background" onclick="openTab('background')">Background</button>
            </div>
        </div>
        <div class="body tab active" id="tab-race">
            <div class="body-selector">
                    
                <div class="selector" data-type="races">
                    <div class="selector-header">
                        Race
                    </div>
                    <div class="selector-body">

                    </div>
                </div>

                <div class="selector" data-type="subraces">
                    <div class="selector-header">
                        Subrace
                    </div>
                    <div class="selector-body">

                    </div>
                </div>

            </div>
            <div class="body-information">

            </div>
        </div>

        <div class="body tab" id="tab-class">
            <div class="body-selector">
                    
                <div class="selector" data-type="classes">
                    <div class="selector-header">
                        Class
                    </div>
                    <div class="selector-body">

                    </div>
                </div>

            </div>
            <div class="body-information">

            </div>
        </div>

        <div class="body tab" id="tab-ability-score">
            <div class="body-selector score-container">
                <div class="score">
                    <label>Strength</label>
                    <input placeholder="10">
                </div>
                <div class="score">
                    <label>Dexterity</label>
                    <input placeholder="10">
                </div>
                <div class="score">
                    <label>Constitution</label>
                    <input placeholder="10">
                </div>
                <div class="score">
                    <label>Wisdom</label>
                    <input placeholder="10">
                </div>
                <div class="score">
                    <label>Intelligence</label>
                    <input placeholder="10">
                </div>
                <div class="score">
                    <label>Charisma</label>
                    <input placeholder="10">
                </div>
            </div>
            <div class="body-information">
                <?php readfile(__DIR__ . '/embed/ability-scores.html'); ?>
            </div>
        </div>

        <div class="body tab" id="tab-background">
            <div class="body-selector">

                <div class="selector" data-type="backgrounds">
                    <div class="selector-header">
                        Background
                    </div>
                    <div class="selector-body">

                    </div>
                </div>

            </div>
            <div class="body-information">

            </div>
        </div>

    </div>
    <script src="/public/js/tab.js"></script>
    <script src="/public/js/selector.js"></script>
    <script src="/public/js/selector-race.js"></script>
    <script src="/public/js/selector-class.js"></script>
    <script src="/public/js/selector-background.js"></script>
</body>
</html>
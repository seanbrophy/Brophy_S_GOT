<!DOCTYPE html>
<html>
    <head>
        <title>Game of Thrones</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0 auto;
                padding: 10px;
                width: 90%;
                display: table;
                font-weight: 100;
                font-family: 'arial';
            }
            img{
                margin-right: 20px; 
            }

        </style>
    </head>
    <body>
        <div id="container">
            <h2>Game of Thrones - Characters</h2>
            <ul id="charList">
            </ul>
            <div id="info">
            </div>
        </div>

        <script type="text/javascript" src="{{ asset('js/utils.js') }}"></script>    
    <script type="text/javascript" src="{{ asset('js/main.js') }}"></script>
    </body>
</html>

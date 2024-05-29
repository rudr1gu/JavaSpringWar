<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Calculadora</title>
   	<style>
   	*, *::before, *::after{
    box-sizing: inherit;
    margin: 0;
    padding: 0;
}

body ,html{
    box-sizing: border-box;
    width: 100vw;
    height: 100vh;
}

:root{
    --cor1: #262626;
    --cor2: #595959;
    --cor3: #F2F2F2;
    --cor4: #D0E2F2;
    --cor5: #8D9AA6;
}

body{
    align-items: center;
    background: linear-gradient(45deg, var(--cor3), var(--cor4), var(--cor5));
    display: flex;
    font-family:  "Josefin Sans",sans-serif;
    font-display: swap;
    height: inherit;
    justify-content: center;
}

nav {
    display: block;
    position: absolute;
    top:0;
    background-color: var(--cor1);
    width: 100vw;
    min-height: 70px;
    max-height: 90px;
    color: white;
    text-align: center;
    justify-content: center;
    z-index: 1000;
}

.rede-sociais{
    display: flex;
    list-style: none;
    justify-content: center;
}

li>a{
    color: white;
    text-decoration: none;
    margin: 5px 10px 0;
    font-size: 1.2em;
}

.github:hover{
    font-style: italic;
    background: purple;
    border-radius: 10px;
}

.insta:hover{
    font-style: italic;
    background: linear-gradient(90deg, #F20530, #D90452, #D90479, #BF048D, #BF04B3 );
    border-radius: 10px;
}

.yt:hover{
    font-style: italic;
    background: red;
    border-radius: 10px;
}

.link:hover{
    font-style: italic;
    background: blue;
    border-radius: 10px;
}

span {
    color: var(--cor4);
}

header{
    display: block;
    position: absolute;
    top: 90px;
    color: var(--cor1);
    text-shadow: 0 3px var(--cor5);
}

.wrapper {
    border-radius: 16px;
    color: #232323;
    backdrop-filter: blur(4px);
    -webkit-backdrop-filter: blur(4px);
    background: rgba(255, 255, 255, 0.3);
    border: 1px solid rgba(255, 255, 255, 0.3);
    flex-basis: 400px;
    padding: 20px 35px;
}

.screen{
    backdrop-filter: blur(5.5px);
    -webkit-backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(0, 0, 0, 0.1);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(40, 40, 40, 0.1);
    color: #232323;
    font-size: 35px;
    overflow: auto ;
    padding: 15px;
    text-align: right;
    width: 100%;
}
 
.cal-button-row{
    display: flex;
    justify-content:space-between;
    margin: 5% 0;
}

.calc-button {
    backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 16px;
    box-shadow: 0 4px 30px  rgba(0, 0, 0, 0.1);
    color: #232323;
    flex-basis: 20%;
    font-family: inherit;
    font-size: 1.2em;
    height: 7vh;
}

.calc-button:last-child{
    backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 16px;
    box-shadow: 0 4px 30px  rgba(0, 0, 0, 0.1);
    color: white;
    background: var(--cor1);
}

.calc-button:last-child:hover{
    background-color: inherit;
    color:inherit;
}


.calc-button:hover {
    background-color: inherit;
}

.calc-button:active{
    background-color: var(--cor4);
}

.double{
    flex-basis: 47% ;
}

.triple{
    flex-basis: 73%;
}



@media screen and (max-width:450px){

    li>a{
        font-size: 0.95em;
    }

    header{
        font-size: 0.8em;
    }
    .screen{
        padding: 10px;
        text-align: right;
    }   
    .calc-button {    
        font-size: 20px;
        height: 7vh;
     }
}
   	</style>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAKNJREFUSEvdldENgzAMRB+bwCbtZIhJWKWblE1aWQJEkKlxquMD/1hREj/nkugaxNGI6+MBHkAPWM7ECxgAy2t4gDfQZipv1lrxZwT4zAuy8rn7vCL3AVReQ/lwfkl0CWBpYH8vR2Nrqmg6OoEcUCNT6gRygFwiOSCSaN9A+hXJAXKJ5IBIIm8+/Af/GM4EdJHhmFWOFa522jJrZDnck7XFNPwLcY4xGSASQBAAAAAASUVORK5CYII=" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
</head>
<body>
    <nav>
        <h2> <i class='bx bx-code-alt' ></i> Rudr<span>1</span>gu</h2>
        <ul class="rede-sociais">
            <li class="github"><a href="https://github.com/rudr1gu" target="_blank"><i class='bx bxl-github'></i>GitHub</a></li>
            <li class="insta"><a href="https://instagram.com/rudr1gu" target="_blank"><i class='bx bxl-instagram' ></i>Instagram</a></li>
            <li class="yt"><a href="https://youtube.com/@rudr1gu" target="_blank"><i class='bx bxl-youtube' ></i>YouTube</a></li>
            <li class="link"><a href="https://linkedin.com/in/rudr1gu" target="_blank"><i class='bx bxl-linkedin-square' ></i>Linkdin</a></li>
        </ul>
    </nav>
    <header>
        <h1>Calculadora</h1>
    </header>

    <div class="wrapper">
        <section class="screen" id="tela">
            0
        </section>

        <section class="calc-buttons">
            <div class="cal-button-row">
                <button class="calc-button double">C</button>
                <button class="calc-button">←</button>
                <button class="calc-button"> &divide;</button>
            </div>

            <div class="cal-button-row">
                <button class="calc-button">7</button>
                <button class="calc-button">8</button>
                <button class="calc-button"> 9</button>
                <button class="calc-button">x</button>
            </div>

            <div class="cal-button-row">
                <button class="calc-button">4</button>
                <button class="calc-button">5</button>
                <button class="calc-button">6</button>
                <button class="calc-button">-</button>
            </div>

            <div class="cal-button-row">
                <button class="calc-button">1</button>
                <button class="calc-button">2</button>
                <button class="calc-button">3</button>
                <button class="calc-button">&plus;</button>
            </div>
            <div class="cal-button-row">
                <button class="calc-button double">0</button>
                <button class="calc-button">.</button>
                <button class="calc-button">&equals;</button>
            </div>
        </section>
    </div>

    <script src="./controllers/App.js" type="module"></script>
    
</body>
</html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tao yêu mày Hiền ơiiii</title>
    <link rel="icon" href="imgs/hienrin.jpg" type="image/x-icon" />
  <link rel="image" href="imgs/hienrin.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="{{asset('/css/canvas.css')}}" />
    <link rel="stylesheet" href="{{asset('/css/present.css')}}" />
    <link rel="stylesheet" href="{{asset('/css/card.css')}}" />
    <link rel="stylesheet" href="{{asset('/css/index.css')}}" />
    <script src="{{asset('/css/jquery123.js')}}"></script>
  </head>
  <body>
    <div class="parent">
      <canvas id="canvas"></canvas>
      <section class="above-fold">
        <div class="wrap-present">
          <div class="present-box" id="present">
            <div class="present">
              <div class="img-wrap" id="present-image"></div>
            </div>
            <div class="side front"></div>
            <div class="side back"></div>
            <div class="side left"></div>
            <div class="side right"></div>
            <div class="side top">
              <span class="to">
                <span class="name" id="nametag"> </span>
              </span>
            </div>
            <div class="side bottom"></div>
          </div>
        </div>
        <p class="info-text">Click to Open</p>
      </section>

      <div id="card">
        <h4 class="title-card">💘little coder💘</h4>

        <img
          src="hot-girl.png"
          class="honey"
        />

        <h4 class="content-card">
          Happy Birthday Make A Wish. Dear brother, hope you receive everything
          you wish for this year. You deserve the best! Thanks for being such a
          great brother.💘
        </h4>
      </div>
    </div>
    <audio autoplay loop  id="playAudio">
      <source src="{{asset('/css/nhacnen.mp3')}}">
    </audio>
  </body>
  <script src="{{asset('/css/config.js')}}"></script>
  <script src="{{asset('/css/canvas.js')}}"></script>
  <script src="{{asset('/css/present.js')}}"></script>
  <script>
    
  </script>
</html>

[#ftl]
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/html">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet"
        type="text/css"
        media="screen"
        href="http://cdn.savant.pro/css/themes/cx.css"/>
  <link rel="shortcut icon"
        href="/img/favicon.png"
        type="image/x-icon">

  <script type="text/javascript"
          src="http://cdn.savant.pro/js/ea.ui.js">
  </script>
  <script type="text/javascript"
          src="http://cdn.savant.pro/js/jquery.js">
  </script>

  <script type="text/javascript">
    $(function() {
      eaui.init();
    });
  </script>

  <title>Simple Circumflex Application</title>
</head>
<body>
<div id="header">
</div>
<div id="outer">
  <div id="content">
    <div class="letterbox">
      <div class="wrap pad content-output">
      ${content}
      </div>
    </div>
  </div>
  <div id="footer">
    <span class="copyright">2008-${currentDate?string("yyyy")}</span> ©
    <a class="home" href="http://${request.headers['Host']!"localhost"}">
    ${request.headers['Host']!"localhost"}
    </a>
  </div>
</div>
</body>
</html>
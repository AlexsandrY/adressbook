[#ftl]
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/html">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="shortcut icon"
        href="/img/favicon.png"
        type="image/x-icon">
  <!-- Bootstrap -->
  <link href="/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <title>Simple Circumflex Application</title>
</head>
<body>
[#assign notices = flash['notices']![]]
<div id="notices">
[#list notices as n]
    <div class="notice ${n.kind}">
    ${n.msg}
    </div>
[/#list]
</div>
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
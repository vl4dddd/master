<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Площадь трапеции</title>
</head>
<body>

<!-- Yandex.Metrika informer -->
<a href="https://metrika.yandex.ru/stat/?id=46812447&amp;from=informer"
   target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/46812447/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
                                       style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" class="ym-advanced-informer" data-cid="46812447" data-lang="ru" /></a>
<!-- /Yandex.Metrika informer -->

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter46812447 = new Ya.Metrika({
                    id:46812447,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/46812447" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<CENTER>
    <br>
    <!-- Ссылка на изображение трапеции, которая отображается на самом верху страницы -->
    <img src="https://pp.userapi.com/c841230/v841230048/42ba8/SVacz6Z2Uxw.jpg"/>
    <br>
    <!-- Объявляем форму в которой есть кнопка, при нажатии на которую будет
    отправлен запрос на урл / тип запроса - POST-->
    <form action="" method="post">
        <br>
        <br>

        <label>Основание трапеции (a):</label>
        <br>

        <input type="number" step="any" max="100" min="1" value="${a}" name="a" style="height: 30px; width: 200px; font-size: 14pt" required/>
        <br>
        <br>
        <!--
        br - переход на новую строку
        font-size - размер шрифта
        <input type="number" - поле для ввода типа Число
        required - указание, что поле должно быть непустое
        -->
        <label>Основание трапеции (b):</label>
        <br>
        <input type="number" step="any" max="100" min="1" value="${b}" name="b" style="height: 30px; width: 200px; font-size: 14pt" required/>
        <br>
        <br>

        <label>Высота трапеции (h):</label>
        <br>
        <input type="number" step="any" max="100" min="1" value="${h}" name="h" style="height: 30px; width: 200px; font-size: 14pt" required/>
        <br>
        <br>
        <!-- Кнопка Вычислить-->
        <input type="submit" style="height: 25px; width: 140px; font-size: 12pt" value="Вычислить"/>
        <br>
        <br>

        <label>Площадь трапеции:</label>
        <br>
        <input type="text" value="${result}" name="result" style="height: 30px; width: 200px; font-size: 14pt"/>
    </form>
</CENTER>
</body>
</html>

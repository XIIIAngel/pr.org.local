<!--
  Module Name: Price Slider
  Description:Price Slider plugin is one of the best product filter plugin for opencart. It has feature to filter products by
  price range.
  Author: Softech Planet
  Author Email:info@softechplanet.com
  Author URI: http://softechplanet.com
  Version: 1.0
  Tags: product filter, price filter, price slider
-->

<div data-role="page" <?php if(isset($price_filter_status) && $price_filter_status == "0") {  echo 'style="display: none"';  }?>>




<div class="diam">

    <p class="bord">Диаметр проволоки (мм):
        <a href="/prugina-rastyageniya.html" class="tutdiag"> Все</a>

        <a href="<?php echo $action; ?>?d=1.0;1.0&D1=0;60&L=10;500">1,0</a>
        <a href="<?php echo $action; ?>?d=1.2;1.2&D1=0;60&L=10;500">1,2</a>
        <a href="<?php echo $action; ?>?d=1.3;1.3&D1=0;60&L=10;500">1,3</a>
        <a href="<?php echo $action; ?>?d=1.4;1.4&D1=0;60&L=10;500">1,4</a>
        <a href="<?php echo $action; ?>?d=1.5;1.5&D1=0;60&L=10;500">1,5</a>
        <a href="<?php echo $action; ?>?d=1.6;1.6&D1=0;60&L=10;500">1,6</a>
        <a href="<?php echo $action; ?>?d=1.8;1.8&D1=0;60&L=10;500">1,8</a>
        <a href="<?php echo $action; ?>?d=2.0;2.0&D1=0;60&L=10;500">2,0</a>
        <a href="<?php echo $action; ?>?d=2.2;2.2&D1=0;60&L=10;500">2,2</a>
        <a href="<?php echo $action; ?>?d=2.5;2.5&D1=0;60&L=10;500">2,5</a>
        <a href="<?php echo $action; ?>?d=3.0;3.0&D1=0;60&L=10;500">3,0</a>
        <a href="<?php echo $action; ?>?d=3.5;3.5&D1=0;60&L=10;500">3,5</a>
        <a href="<?php echo $action; ?>?d=4.0;4.0&D1=0;60&L=10;500">4,0</a>
        <a href="<?php echo $action; ?>?d=4.5;4.5&D1=0;60&L=10;500">4,5</a>
        <a href="<?php echo $action; ?>?d=5.0;5.0&D1=0;60&L=10;500">5,0</a>
        <a href="<?php echo $action; ?>?d=6.0;6.0&D1=0;60&L=10;500">6,0</a>
    </p>

    <p class="bord">Диаметр пружины (мм):
        <a href="<?php echo $action; ?>" class="tutdiag">Все</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=5;10&L=10;500">5-10</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=11;15&L=10;500">11-15</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=16;20&L=10;500">16-20</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=21;25&L=10;500">21-25</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=26;30&L=10;500">26-30</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=31;35&L=10;500">31-35</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=36;40&L=10;500">36-40</a>
    </p>

    <p class="bord">Длина пружины (мм):
        <a href="/prugina-rastyageniya.html" class="tutdiag">Все</a>

        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=26;50">26-50</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=51;75">51-75</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=76;100">76-100</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=101;150">101-150</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=151;200">151-200</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=201;250">201-250</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=251;300">251-300</a>
        <a href="<?php echo $action; ?>?d=0.5;8.0&D1=0;60&L=301;400">301-400</a>
    </p>

</div>





    <div data-role="header">
        <h1>Фильт по всем параметрам пружин</h1>
    </div>

    <div data-role="main" class="ui-content">
        <form id="filter-form" method="get" action="/<?php echo $action; ?>">
            <!-- Ползунок для диаметр проволки -->
            <label for="d">Диаметр проволоки (мм):</label>
            <input type="text" id="d" name="d" value="<?php if(isset($d)) { echo $d[0] . ';' . $d[1]; } ?>" />

            <!-- Ползунок для Диаметра пружины -->
            <label for="D1">Диаметр пружины (мм):</label>
            <input type="text" id="D1" name="D1" value="<?php if(isset($D1)) { echo $D1[0] . ';' . $D1[1]; } ?>"/>

            <!-- Ползунок для Длинны пружины -->
            <label for="L">Длина пружины (мм):</label>
            <input type="text" id="L" name="L" value="<?php if(isset($L)) { echo $L[0] . ';' . $L[1]; } ?>"/>

            <div class="row"><input style="display: block;" class="buy mx-auto" id="button-filter" type="submit" value="Показать результаты"></div>
        </form>
    </div>
</div>
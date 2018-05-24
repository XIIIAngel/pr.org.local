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
        <a href="<?php echo $action; ?>"> Все</a>
        <a href="<?php echo $action; ?>/s-provoloka-0.5">0.5</a>
        <a href="<?php echo $action; ?>/s-provoloka-0.6">0.6</a>
        <a href="<?php echo $action; ?>/s-provoloka-0.7">0.7</a>
        <a href="<?php echo $action; ?>/s-provoloka-0.8">0.8</a>
        <a href="<?php echo $action; ?>/s-provoloka-0.9">0.9</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.0">1.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.2">1.2</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.3">1.3</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.4">1.4</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.5">1.5</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.6">1.6</a>
        <a href="<?php echo $action; ?>/s-provoloka-1.8">1.8</a>
        <a href="<?php echo $action; ?>/s-provoloka-2.0">2.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-2.2">2.2</a>
        <a href="<?php echo $action; ?>/s-provoloka-2.3">2.3</a>
        <a href="<?php echo $action; ?>/s-provoloka-2.5">2.5</a>
        <a href="<?php echo $action; ?>/s-provoloka-2.8">2.8</a>
        <a href="<?php echo $action; ?>/s-provoloka-3.0">3.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-3.5">3.5</a>
        <a href="<?php echo $action; ?>/s-provoloka-4.0">4.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-4.5">4.5</a>
        <a href="<?php echo $action; ?>/s-provoloka-5.0">5.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-6.0">6.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-7.0">7.0</a>
        <a href="<?php echo $action; ?>/s-provoloka-8.0">8.0</a>
    </p>

    <p class="bord">Диаметр пружины (мм):
        <a href="<?php echo $action; ?>">Все</a>
        <a href="<?php echo $action; ?>/s-diametr-5-10">5-10</a>
        <a href="<?php echo $action; ?>/s-diametr-11-15">11-15</a>
        <a href="<?php echo $action; ?>/s-diametr-16-20">16-20</a>
        <a href="<?php echo $action; ?>/s-diametr-21-25">21-25</a>
        <a href="<?php echo $action; ?>/s-diametr-26-30">26-30</a>
        <a href="<?php echo $action; ?>/s-diametr-31-35">31-35</a>
        <a href="<?php echo $action; ?>/s-diametr-36-40">36-40</a>
        <a href="<?php echo $action; ?>/s-diametr-41-45">41-45</a>
        <a href="<?php echo $action; ?>/s-diametr-46-50">46-50</a>
        <a href="<?php echo $action; ?>/s-diametr-51-60">51-60</a>
    </p>

    <p class="bord">Длина пружины (мм):
        <a href="<?php echo $action; ?>">Все</a>
        <a href="<?php echo $action; ?>/s-dlina-10-25">10-25</a>
        <a href="<?php echo $action; ?>/s-dlina-26-50">26-50</a>
        <a href="<?php echo $action; ?>/s-dlina-51-75">51-75</a>
        <a href="<?php echo $action; ?>/s-dlina-76-100">76-100</a>
        <a href="<?php echo $action; ?>/s-dlina-101-150">101-150</a>
        <a href="<?php echo $action; ?>/s-dlina-151-200">151-200</a>
        <a href="<?php echo $action; ?>/s-dlina-201-250">201-250</a>
        <a href="<?php echo $action; ?>/s-dlina-251-300">251-300</a>
        <a href="<?php echo $action; ?>/s-dlina-301-400">301-400</a>
    </p>

</div>


<div data-role="header">
    <h1>Фильт по всем параметрам пружин</h1>
</div>

<div data-role="main" class="ui-content">
    <form id="filter-form" method="get" action="/<?php echo $action; ?>">
        <!-- Ползунок для диаметр проволки -->
        <label for="d">Диаметр проволоки (мм):</label>
        <input type="text" id="d" name="d" value="<?php if(isset($d)) { echo $d[0] . ';' . $d[1]; } ?>"/>

        <!-- Ползунок для Диаметра пружины -->
        <label for="D1">Диаметр пружины (мм):</label>
        <input type="text" id="D1" name="D1" value="<?php if(isset($D1)) { echo $D1[0] . ';' . $D1[1]; } ?>"/>

        <!-- Ползунок для Длинны пружины -->
        <label for="L">Длина пружины (мм):</label>
        <input type="text" id="L" name="L" value="<?php if(isset($L)) { echo $L[0] . ';' . $L[1]; } ?>"/>

        <div class="row"><input style="display: block;" class="buy mx-auto" id="button-filter" type="submit"
                                value="Показать результаты"></div>
    </form>
</div>
</div>
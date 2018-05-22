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
<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>

            <div class="panel panel-default">
                <div class="panel-collapse" id="collapse-checkout-confirm">
                    <div class="panel-body">


                        <form id="cartform" action="index.php?route=checkout/payment_method/save" method="post" enctype="multipart/form-data">
                            <div class="center-block" style="width: 500px">
                                <input placeholder="ФИО получателя" class="dolgiy" name="username" type="text">
                                <br>
                                <br>
                                <select class="dolgiy" name="logist">
                                    <option disabled="" selected="">Выберите перевозчика</option>
                                    <option value="Новая почта">Новая почта</option>
                                    <option value="Интайм">Интайм</option>
                                </select>
                                <br>
                                <br>
                                <select class="dolgiy" name="oblast">
                                    <option disabled="" selected="">Выберите область</option>
                                    <option value="Винницая область">Винницая область</option>
                                    <option value="Волынская область">Волынская область</option>
                                    <option value="Днепровская область">Днепровская область</option>
                                    <option value="Донецкая область">Донецкая область</option>
                                    <option value="Житомирская область">Житомирская область</option>
                                    <option value="Закарпатская область">Закарпатская область</option>
                                    <option value="Запорожская область">Запорожская область</option>
                                    <option value="Ивано-Франковская область">Ивано-Франковская область</option>
                                    <option value="Киевская область">Киевская область</option>
                                    <option value="Кропивницкая область">Кропивницкая область</option>
                                    <option value="Луганская область">Луганская область</option>
                                    <option value="Львовская область">Львовская область</option>
                                    <option value="Николаевская область">Николаевская область</option>
                                    <option value="Одесская область">Одесская область</option>
                                    <option value="Полтавская область">Полтавская область</option>
                                    <option value="Ровненская область">Ровненская область</option>
                                    <option value="Сумская область">Сумская область</option>
                                    <option value="Тернопольская область">Тернопольская область</option>
                                    <option value="Харьковская область">Харьковская область</option>
                                    <option value="Херсонская область">Херсонская область</option>
                                    <option value="Хмельницкая область">Хмельницкая область</option>
                                    <option value="Черкасская область">Черкасская область</option>
                                    <option value="Черниговская область">Черниговская область</option>
                                    <option value="Черновицкая область">Черновицкая область</option>
                                </select>
                                <br>
                                <br>
                                <input placeholder="Город" class="dolgiy" name="town" type="text">
                                <br>
                                <br>
                                <input placeholder="№ склада или адрес отделения" class="dolgiy" name="sklad"
                                       type="text">
                                <br>
                                <br>
                                <input placeholder="Номер телефона" class="dolgiy" name="phone" type="text">
                                <br>
                                <br>
                                <select class="dolgiy" name="money">
                                    <option disabled="" selected="">Выберите способ оплаты</option>
                                    <option value="Наложенный платеж">Наложенный платеж</option>
                                    <option value="Карточка ПриватБанка">Карточка ПриватБанка</option>
                                    <option value="Безналичный расчет">Безналичный расчет</option>
                                    <option value="WebMoney">WebMoney</option>
                                </select>
                                <br>
                                <br>
                                <textarea name="comments" placeholder="Комментарий к заказу"
                                          class="textarea"></textarea>
                                <br>
                                <input id="form_submit" class="center-block knopkasubmit" value="Оформить заказ"
                                       type="button">
                            </div>
                        </form>


                    </div>
                </div>
            </div>

            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<script type="text/javascript">
    $(document).delegate('#form_submit', 'click', function () {
        $.ajax({
            url: 'index.php?route=checkout/confirm',
            type: 'post',
            data: $('#cartform').serialize(),
            dataType: 'json',
            success: function (json) {
                if (json['redirect']) {
                    location = json['redirect'];
                } else {
                    $('#collapse-checkout-confirm .panel-body').html('<div id="thanks" style="font-size:25px; padding:20px; color:#0c0; text-align:center;">Ваш заказ оформлен, в ближайшее время с Вами свяжется менеджер.</div>');
                }
            }
        });


        // $.ajax({
        //     url: 'index.php?route=checkout/payment_address',
        //     dataType: 'html',
        //     complete: function () {
        //         $('#button-payment-method').button('reset');
        //     },
        //     success: function (html) {
        //         $('#collapse-checkout-confirm .panel-body').html(html);
        //
        //         $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');
        //
        //         $('a[href=\'#collapse-checkout-confirm\']').trigger('click');
        //     },
        //     error: function (xhr, ajaxOptions, thrownError) {
        //         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        //     }
        // });
    });
    //--></script>
<?php echo $footer; ?>

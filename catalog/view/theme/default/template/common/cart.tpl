<div id="cart">
  <li>
    <a href="<?php echo $cart; ?>" class="cart">
      <span id="cart-total">Корзина (<?php if(empty($text_items)) { echo 0; } else { echo $text_items; } ?>)</span>
    </a>
  </li>
</div>
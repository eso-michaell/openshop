<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <div id="content" class="col-sm-12">
      <h1><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="ticket-form">
        <div class="table-responsive">
          <table class="table table-striped" id="choose-table">
            <thead>
              <tr>
                <th class="text-center"><?php echo $column_name; ?></th>
                <th class="text-center"><?php echo $column_price; ?></th>
                <th class="text-center"><?php echo $column_zone; ?></th>
                <th class="text-center"><?php echo $column_quantity; ?></th>
                  <th class="text-center">Subtotal</th>
              </tr>
            </thead>
            <tbody>
                <?php foreach ($tickets as $row => $ticket) { ?>
              <tr id="<?php echo $row ?>">
                <td class="text-center col-xs-2 input-name"><?php echo $ticket['name'] ?></td>
                <td class="text-center col-xs-2 input-price">$<?php echo $ticket['price'] ?></td>
                <td class="text-center col-xs-3">
                    <div class=" col-md-8 col-md-offset-2">
                        <select name="<?php echo $row ?>['zone']" class="form-control zone-input tickets-input" >
                            <option selected="selected" value="0">Choose Zone</option>
                            <?php foreach ($ticket['zone'] as $k=>$v) { ?>
                            <option value="<?php echo $k ?>" remain="<?php echo $v ?>"><?php echo $k ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </td>
                <td class="text-center col-xs-2">
                    <div class="col-md-8 col-md-offset-2">
                        <input type="number" name="<?php echo $row ?>['quantity']" class='form-control quantity-input tickets-input' min="0" value="0" step="1" >
                        <input type="hidden" name="<?php echo $row ?>['name']" value="<?php echo $ticket['name'] ?>">
                        <input type="hidden" name="<?php echo $row ?>['price']" value="<?php echo $ticket['price'] ?>">
                        <input type="hidden" name="<?php echo $row ?>['subtotal']" value="0" class="subtotal-post">
                    </div>
                </td>
                <td class="text-center col-xs-2 input-subtotal">
                    0.00
                </td>
              </tr>
                <?php } ?>
            </tbody>
          </table>

          <table class="table-striped col-sm-4 col-sm-offset-8">
              <td>Total (incl. GST)</td>
              <td id="total">$0.00</td>
              <input type="hidden" value="" name="total">
            </tr>
          </table>
        </div>
        <div class="buttons">
          <input type="submit" class="pull-right btn btn-primary" value="<?php echo $button_checkout; ?>" id="submit">
        </div>
      </form>


    <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript" src="./js/checkout.js"></script>
<?php echo $footer; ?>
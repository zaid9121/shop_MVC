<?php include __DIR__ . '/inc/header.php'; ?>

<div class="row column text-center">
  <h2 style="margin:30px 0 0 0">Unsere neuesten Produkte</h2>
  <hr>
</div>

<div class="row small-up-2 large-up-4">
  <?php foreach ($products as $product) : ?>
    <div class="column">
      <a href="/<?php echo $product['category_slug']; ?>/<?php echo $product['slug']; ?>">
        <img src="<?php echo $product['image_url']; ?>" alt="Books" class="thumbnail" width="208" height="312" style="width:208px; height:312px"></a>
      <h5 class="card-title" style="height:56px"><?php echo $product['title']; ?></h5>
      <span><?php echo htmlspecialchars($product['author']); ?></span>
      <p class="item-price"><?php echo $product['price']; ?> €</p>
      <a href="/<?php echo $product['category_slug']; ?>/<?php echo $product['slug']; ?>" class="button expanded">Mehr erfahren</a>
    </div>
  <?php endforeach; ?>
</div>
<hr>

<?php include __DIR__ . '/inc/footer.php'; ?>
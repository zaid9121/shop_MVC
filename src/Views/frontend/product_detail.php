<?php include __DIR__ . '/inc/header.php'; ?>

<div class="row columns">
  <nav style="margin:30px 0 20px 0;">
    <ul class="breadcrumbs">
      <?php foreach ($breadcrumbs as $index => $crumb) : ?>
        <li>
          <?php if ($index === count($breadcrumbs) - 1) : ?>
            <?php echo htmlspecialchars($crumb['name']); ?>
          <?php else : ?>
            <a href="/<?php echo $crumb['slug']; ?>"><?php echo htmlspecialchars($crumb['name']); ?></a>
          <?php endif; ?>
        </li>
      <?php endforeach; ?>
    </ul>
  </nav>
</div>

<?php if ($product) : ?>
  <div class="row">
    <div class="medium-6 columns">
      <img class="thumbnail" src="<?php echo htmlspecialchars($product['image_url']); ?>" alt="<?php echo htmlspecialchars($product['title']); ?>" style="width:100%">
    </div>
    <div class="medium-6 large-5 columns">
      <h3><?php echo htmlspecialchars($product['title']); ?></h3>
      <p><?php echo htmlspecialchars($product['description']); ?></p>
      <p>Autor: <?php echo htmlspecialchars($product['author']); ?></p>
      <p>Verlag: <?php echo htmlspecialchars($product['publisher']); ?></p>
      <p>ISBN: <?php echo htmlspecialchars($product['isbn']); ?></p>
      <p>Preis: <?php echo htmlspecialchars($product['price']); ?> €</p>
      <p>Zustand: <?php echo htmlspecialchars($product['condition_name']); ?></p>
      <div class="row">
        <div class="small-3 columns">
          <label for="middle-label" class="middle">Quantity</label>
        </div>
        <div class="small-9 columns">
          <input type="text" id="middle-label" placeholder="One fish two fish">
        </div>
      </div>
      <a href="/" class="button large expanded">zurück</a>
    </div>
  </div>
<?php else : ?>
  <p>Produkt nicht gefunden.</p>
<?php endif; ?>
<?php include __DIR__ . '/inc/footer.php'; ?>
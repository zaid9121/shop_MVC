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

<div class="row">
    <div class="columns medium-6 large-4">
        <ul class="vertical menu">
            <?php foreach ($categories as $category) : ?>
                <li class="has-submenu">
                    <a href="/<?php echo $category['slug']; ?>">
                        <?php echo $category['category_name']; ?>
                    </a>
                    <?php if (!empty($category['subcategories'])) : ?>
                        <ul class="nested vertical menu">
                            <?php foreach ($category['subcategories'] as $subcategory) : ?>
                                <li>
                                    <a href="/<?php echo $subcategory['slug']; ?>">
                                        <?php echo $subcategory['category_name']; ?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="columns medium-6 large-8">
        <h2>Produkte in Kategorie</h2>
        <?php if ($category_products) : ?>
            <ul>
                <?php foreach ($category_products as $product) : ?>
                    <li>
                        <a href="/<?php echo $product['category_slug']; ?>/<?php echo $product['slug']; ?>">
                            <?php echo $product['title']; ?>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php else : ?>
            <p>Keine Produkte in dieser Kategorie gefunden.</p>
        <?php endif; ?>
    </div>
</div>

<?php include __DIR__ . '/inc/footer.php'; ?>
<!doctype html>
<html class="no-js" lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Foundation | Welcome</title>
  <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>

<body>

  <!-- Start Top Bar -->
  <div class="top-bar">
    <div class="top-bar-left">
      <!-- 
      <ul class="menu vertical medium-horizontal medium-text-center" data-responsive-menu="drilldown medium-dropdown">
        <li class="menu-text"><a href="/">Bücher</a></li>
        <li class="has-submenu"><a href="#">Tech</a>
          <ul class="submenu menu vertical" data-submenu>
            <li><a href="#">One</a></li>
            <li><a href="#">Two</a></li>
            <li><a href="#">Three</a></li>
          </ul>
        </li>
        <li class="has-submenu"><a href="#">Energy</a>
          <ul class="submenu menu vertical" data-submenu>
            <li><a href="#">One</a></li>
            <li><a href="#">Two</a></li>
            <li><a href="#">Three</a></li>
          </ul>
        </li>

      </ul>
-->



      <ul class="menu vertical medium-horizontal medium-text-center" data-responsive-menu="drilldown medium-dropdown">

        <li class="menu-text"><a href="/">Bücher</a></li>
        <?php foreach ($categories as $category) : ?>
          <li class="has-submenu">
            <a href="/<?php echo $category['slug']; ?>">
              <?php echo $category['category_name']; ?>
            </a>
            <?php if (!empty($category['subcategories'])) : ?>
              <ul class="submenu menu vertical" data-submenu>
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
    <div class="top-bar-right">

    </div>
  </div>
  <!-- End Top Bar -->

  </header>
  <main>
    <!-- Buch Grid -->
<?php

namespace Src\Controllers\Frontend;

use Src\Models\ProductModel;
use Src\Models\CategoryModel;

class ProductController
{
  private $productModel; // Model für Produktdaten
  private $categoryModel; // Model für Kategoriedaten


  public function __construct()
  {
    $this->productModel = new ProductModel();
    $this->categoryModel = new CategoryModel();
  }


  public function execute($categorySlug = null, $productSlug = null)
  {
    $categories = $this->categoryModel->getAllCategories(); // Alle Kategorien abrufen

    if ($categorySlug && $productSlug) {
      $this->showProductDetail($categorySlug, $productSlug, $categories); // Produktdetails anzeigen
    } elseif ($categorySlug) {
      $this->showCategoryProducts($categorySlug, $categories); // Produkte einer Kategorie anzeigen
    } else {
      $this->showProductList($categories); // Alle Produkte anzeigen
    }
  }


  public function showProductList($categories)
  {
    $products = $this->productModel->getAllProducts(); // Alle Produkte abrufen
    include BASE_DIR . '/src/Views/frontend/product_list.php'; // Produktliste anzeigen
  }


  public function showProductDetail($categorySlug, $productSlug, $categories)
  {
    $product = $this->productModel->getProductBySlug($categorySlug, $productSlug); // Produktdetails abrufen
    if ($product) {
      $breadcrumbs = $this->generateBreadcrumbs($categorySlug, $productSlug); // Breadcrumbs generieren
      include BASE_DIR . '/src/Views/frontend/product_detail.php'; // Produktdetailseite anzeigen
    } else {
      echo 'Produkt nicht gefunden. showProductDetail';
    }
  }


  public function showCategoryProducts($categorySlug, $categories)
  {
    $category_products = $this->productModel->getProductsByCategorySlug($categorySlug); // Produkte der Kategorie abrufen
    if ($category_products) {
      $breadcrumbs = $this->generateBreadcrumbs($categorySlug); // Breadcrumbs generieren
      include BASE_DIR . '/src/Views/frontend/category_products.php'; // Kategorieseite anzeigen
    } else {
      echo 'Produkt nicht gefunden in showCategoryProducts';
    }
  }


  private function generateBreadcrumbs($categorySlug, $productSlug = null)
  {
    $breadcrumbs = [];
    $category = $this->categoryModel->getCategoryBySlug($categorySlug); // Kategorie nach Slug abrufen

    if ($category) {
      $breadcrumbs[] = ['name' => $category['category_name'], 'slug' => $category['slug']];
      while ($category['parent_category_id']) {
        $category = $this->categoryModel->getCategoryById($category['parent_category_id']); // Übergeordnete Kategorien abrufen
        array_unshift($breadcrumbs, ['name' => $category['category_name'], 'slug' => $category['slug']]);
      }
    }

    if ($productSlug) {
      $product = $this->productModel->getProductBySlug($categorySlug, $productSlug); // Produkt nach Slug abrufen
      $breadcrumbs[] = ['name' => $product['title'], 'slug' => $productSlug];
    }

    return $breadcrumbs; // Breadcrumbs zurückgeben
  }
}

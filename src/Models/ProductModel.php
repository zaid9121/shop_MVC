<?php

namespace Src\Models;

use Src\Config\Database;

class ProductModel
{
  private $db; // Datenbankverbindung


  public function __construct()
  {
    $this->db = Database::getInstance()->getConnection(); // Datenbankverbindung herstellen
  }


  public function getAllProducts()
  {
    // Alle Produkte und ihre zugehörigen Kategorien abrufen
    $stmt = $this->db->query("SELECT books.*, categories.slug as category_slug FROM books JOIN book_categories ON books.book_id = book_categories.book_id JOIN categories ON book_categories.category_id = categories.category_id");
    return $stmt->fetchAll(\PDO::FETCH_ASSOC); // Ergebnisse als assoziatives Array zurückgeben
  }


  public function getProductBySlug($categorySlug, $productSlug)
  {
    // Produkt nach Kategorie-Slug und Produkt-Slug abrufen, einschließlich des Zustands des Buches
    $stmt = $this->db->prepare("SELECT books.*, categories.slug as category_slug, book_conditions.condition_name FROM books JOIN book_categories ON books.book_id = book_categories.book_id JOIN categories ON book_categories.category_id = categories.category_id LEFT JOIN book_conditions ON books.condition_id = book_conditions.condition_id WHERE categories.slug = :category_slug AND books.slug = :product_slug");
    $stmt->execute(['category_slug' => $categorySlug, 'product_slug' => $productSlug]);
    return $stmt->fetch(\PDO::FETCH_ASSOC); // Ergebnis als assoziatives Array zurückgeben
  }


  public function getProductsByCategorySlug($categorySlug)
  {
    // Produkte nach Kategorie-Slug abrufen
    $stmt = $this->db->prepare("SELECT books.*, categories.slug as category_slug FROM books JOIN book_categories ON books.book_id = book_categories.book_id JOIN categories ON book_categories.category_id = categories.category_id WHERE categories.slug = :category_slug");
    $stmt->execute(['category_slug' => $categorySlug]);
    return $stmt->fetchAll(\PDO::FETCH_ASSOC); // Ergebnisse als assoziatives Array zurückgeben
  }
}

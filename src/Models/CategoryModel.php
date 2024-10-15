<?php

namespace Src\Models;

use Src\Config\Database;

class CategoryModel
{
    private $db; // Datenbankverbindung


    public function __construct()
    {
        $this->db = Database::getInstance()->getConnection(); // Datenbankverbindung herstellen
    }


    public function getAllCategories()
    {
        // Alle Kategorien abrufen und nach parent_category_id und category_id sortieren
        $stmt = $this->db->query("SELECT * FROM categories ORDER BY parent_category_id ASC, category_id ASC");
        $categories = $stmt->fetchAll(\PDO::FETCH_ASSOC); // Ergebnisse als assoziatives Array zurückgeben

        // Hierarchische Kategorienstruktur erstellen
        $categoryTree = [];
        foreach ($categories as $category) {
            if ($category['parent_category_id'] == null) {
                // Hauptkategorie hinzufügen
                $category['subcategories'] = [];
                $categoryTree[$category['category_id']] = $category;
            } else {
                // Unterkategorie zur entsprechenden Hauptkategorie hinzufügen
                $categoryTree[$category['parent_category_id']]['subcategories'][] = $category;
            }
        }

        return $categoryTree; // Hierarchische Kategorienstruktur zurückgeben
    }


    public function getCategoryBySlug($slug)
    {
        // Kategorie nach Slug abrufen
        $stmt = $this->db->prepare("SELECT * FROM categories WHERE slug = :slug");
        $stmt->execute(['slug' => $slug]);
        return $stmt->fetch(\PDO::FETCH_ASSOC); // Ergebnis als assoziatives Array zurückgeben
    }


    public function getCategoryById($id)
    {
        // Kategorie nach ID abrufen
        $stmt = $this->db->prepare("SELECT * FROM categories WHERE category_id = :id");
        $stmt->execute(['id' => $id]);
        return $stmt->fetch(\PDO::FETCH_ASSOC); // Ergebnis als assoziatives Array zurückgeben
    }


    public function getCategoryTree()
    {
        // Alle Kategorien abrufen und nach parent_category_id und category_id sortieren
        $stmt = $this->db->query("SELECT * FROM categories ORDER BY parent_category_id ASC, category_id ASC");
        return $stmt->fetchAll(\PDO::FETCH_ASSOC); // Ergebnisse als assoziatives Array zurückgeben
    }
}

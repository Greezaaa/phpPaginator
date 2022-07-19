<?php 
try {
    $con = new PDO('mysql:host=localhost;dbname=paginator', 'root', '');
    // echo 'ON AIR!';

} catch (PDOException $e) {
    echo "ERROR: " .$e->getMessage();
    die();
}

$page = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
$postOnPage = 4;

$start = ($page > 1 ) ? ($page * $postOnPage - $postOnPage) : 0;

$posts = $con->prepare(" SELECT SQL_CALC_FOUND_ROWS * FROM articulos LIMIT  $start, $postOnPage");

$posts->execute();
$posts = $posts->fetchAll();

if(!$posts){

    echo "No hay articulos publicados";
    
}

$totalPosts = $con->query('SELECT FOUND_ROWS() as total');
$totalPosts = $totalPosts->fetch()['total'];


// echo '<pre>';
// print_r($posts);
// echo '</pre>';

// echo $totalPosts;

$pages = ceil($totalPosts / $postOnPage);

// echo $pages;

require 'index.view.php';

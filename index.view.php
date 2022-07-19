<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Paginacion</title>
</head>
<body>
        <div class="wrapper">
            <h2>Articulos</h2>
            <section class="post">
                <ul>
                    <?php foreach($posts as $articulo ): ?>
                        <li><?php echo '<h3>' .$articulo['titulo'] .'</h3><p>'. $articulo['contenido'] . '</p>' ?></li>
                    <?php endforeach; ?>
                </ul>
            </section>
            <section class="paginator">
                <ul>

                        <?php 
                        //tecla "pagina anterior"
                        if($page == 1) :  ?>
                            <li class="disabled">&laquo;</li>

                            <?php else: ?>
                                <li class=""><a href="?pagina=<?php echo $page-1 ?>">&laquo;</a></li>
                        <?php endif; ?>
                        
                        <?php  
                        //paginas
                        for ($i=1;$i <= $pages; $i++) {
                            if($page == $i){
                                //pagina "activa"
                                echo "<li class='active'><a href='?pagina=$i'>$i</a></li>";
                            } else {
                                //paginas inactivas
                                echo "<li><a href='?pagina=$i'>$i</a></li>";
                            }
                        }; ?>
                        
                        <?php
                        // tecla "siguente pagina" 
                        if($page == $pages) :  ?>
                            <li class="disabled">&raquo;</li>

                            <?php else: ?>
                                <li class=""><a href="?pagina=<?php echo $page+1 ?>">&raquo;</a></li>
                        <?php endif; ?>
                </ul>
            </section>
        </div>
</body>
</html>
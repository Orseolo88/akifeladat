<?php

$footer = new Template("footer");

if(isset($content)):
    $layout -> set("content", $content -> output());
endif;

echo $layout -> output();

$db -> close();
?>
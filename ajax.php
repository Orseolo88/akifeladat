<?php
require_once 'header.php';

switch ($action):
    case 'ajaxvalasz':
        $output = array("data","plum");
        echo json_encode($output);
        break;
endswitch;

?>
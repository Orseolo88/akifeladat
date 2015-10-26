<?php
require_once 'header.php';

$layout = "";

$csv_data = "";
$q_varosok = $db->query("SELECT varos_id, varos_nev FROM varosok");
if($q_varosok->num_rows > 0):
    while($r_varosok = $q_varosok->fetch_assoc()):
        $varos_id = $r_varosok['varos_id'];
        $q_idojaras = $db->query("SELECT idopont, homerseklet FROM idojaras_adatok WHERE varos_id = $varos_id ORDER BY idopont DESC");
        if($q_idojaras->num_rows > 0):
            while($r_idojaras = $q_idojaras->fetch_assoc()):
                $csv_data .= $r_varosok['varos_nev'] . ";";
                $csv_data .= implode(";", $r_idojaras);
                $csv_data .= "\n";
            endwhile;
        endif;
    endwhile;
endif;

header("Content-type: text/csv");
header("Content-Disposition: attachment; filename=report.csv");
header("Pragma: no-cache");
header("Expires: 0");

echo $csv_data;

?>
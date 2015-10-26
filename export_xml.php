<?php
require_once 'header.php';

$layout = "";

$xmlstring = "<news></news>";
$xml_idojaras = new SimpleXMLElement("<xml></xml>");
$idojaras_adatok = $xml_idojaras->addChild('idojaras_adatok');


$q_varosok = $db->query("SELECT varos_id, varos_nev FROM varosok");
if($q_varosok->num_rows > 0):
    while($r_varosok = $q_varosok->fetch_assoc()):
        $varos_id = $r_varosok['varos_id'];
        $q_idojaras = $db->query("SELECT idopont, homerseklet FROM idojaras_adatok WHERE varos_id = $varos_id ORDER BY idopont DESC");
        if($q_idojaras->num_rows > 0):
            while($r_idojaras = $q_idojaras->fetch_assoc()):
                $idojaras_adat = $idojaras_adatok->addChild('idojaras_adat');
                $varos_neve = $idojaras_adat->addChild('varos_neve', $r_varosok['varos_nev']);
                $idopont = $idojaras_adat->addChild('idopont', $r_idojaras['idopont']);
                $homerseklet = $idojaras_adat->addChild('homerseklet', $r_idojaras['homerseklet']);
            endwhile;
        endif;
    endwhile;
endif;

header("Content-type: text/xml");
header("Content-Disposition: attachment; filename=idojaras.xml");
header("Pragma: no-cache");
header("Expires: 0");

echo $xml_idojaras->asXML();

?>
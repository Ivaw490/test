<?php
/**
 * Created by PhpStorm.
 * User: Ivan
 * Date: 09.08.2019
 * Time: 15:04
 */

include "Highlight/Highlight.php";

$str = file_get_contents("Highlight/text");

$a = new Highlight();

echo "Было: <br>" . $str;

echo "<br><br>Стало: <br>" . $a->highlightNicknames($str);
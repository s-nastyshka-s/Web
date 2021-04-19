<?php
 header("Content-Type: text/plain");
$text = isset($_GET['text']) ? $_GET['text'] : null;


if (is_string($text) && $text !== '')
{
    // убираем лишние пробелы в начале и в конце строки
    $text = trim($text);
    $provisional = '';
    while ($text !== $provisional)
    {
        $provisional = $text;
        // замена 2х пробелов на 1
        $text = str_replace('  ', ' ', $text);
    }

    echo $text;
}

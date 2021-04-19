<?php
header("Content-Type: text/plain");
$identifier = isset($_GET['identifier']) ? $_GET['identifier'] : null;

if (is_string($identifier) && $identifier !== '')
{
    if (ctype_alpha(substr($identifier, 0, 1)))
    {
        if (ctype_alnum($identifier))
        {
            echo 'Yes';
        }
        else
        {
            echo 'No' . PHP_EOL. 'Идентификатор содержит не только цифры и буквы.';
        }
    }
    else
    {
        echo 'No ' . ' PHP_EOL ' . ' Первый символ идентификатора не является буквой.' . PHP_EOL;
        if (ctype_alnum($identifier))
        {
            null;
        }
        else
        {
           echo 'Идентификатор содержит не только цифры и буквы.';
        }

    }
}

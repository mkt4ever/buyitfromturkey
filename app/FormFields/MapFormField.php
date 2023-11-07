<?php

namespace App\FormFields;

use TCG\Voyager\FormFields\AbstractHandler;

class MapFormField extends AbstractHandler
{
    protected $codename = 'map';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('formfields.map', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}
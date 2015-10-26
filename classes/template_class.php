<?php

class Template
{
    protected $file;
    protected $values = array ();

    public function __construct ( $file )
    {
        $this->file = 'templates/' . $file . ".html";
    }

    public function set ( $key , $value )
    {
        $this->values[ $key ] = $value;
    }

    public function output ()
    {
        if ( ! file_exists ( $this->file ) ) :
            return "Hiba a fájl betöltése közben ($this->file).";
        endif;
        $output = file_get_contents ( $this->file );

        foreach ( $this->values as $key => $value ) :
            $tagToReplace = "[@$key]";
            $output       = str_replace ( $tagToReplace , $value , $output );
        endforeach;

        return $output;
    }

}

?>
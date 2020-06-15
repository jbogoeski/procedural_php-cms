<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite48dbbc9b0e159dc90ff34114d576f03
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Config' => __DIR__ . '/../..' . '/classes/Config.php',
        'Example' => __DIR__ . '/../..' . '/classes/Example.php',
        'PHPMailer\\PHPMailer\\Exception' => __DIR__ . '/..' . '/phpmailer/phpmailer/src/Exception.php',
        'PHPMailer\\PHPMailer\\OAuth' => __DIR__ . '/..' . '/phpmailer/phpmailer/src/OAuth.php',
        'PHPMailer\\PHPMailer\\PHPMailer' => __DIR__ . '/..' . '/phpmailer/phpmailer/src/PHPMailer.php',
        'PHPMailer\\PHPMailer\\POP3' => __DIR__ . '/..' . '/phpmailer/phpmailer/src/POP3.php',
        'PHPMailer\\PHPMailer\\SMTP' => __DIR__ . '/..' . '/phpmailer/phpmailer/src/SMTP.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInite48dbbc9b0e159dc90ff34114d576f03::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInite48dbbc9b0e159dc90ff34114d576f03::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInite48dbbc9b0e159dc90ff34114d576f03::$classMap;

        }, null, ClassLoader::class);
    }
}

<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Default Filesystem Disk
    |--------------------------------------------------------------------------
    |
    | Here you may specify the default filesystem disk that should be used
    | by the framework. The "local" disk, as well as a variety of cloud
    | based disks are available to your application. Just store away!
    |
    */

    'default' => env('FILESYSTEM_DRIVER', 'local'),

    /*
    |--------------------------------------------------------------------------
    | Filesystem Disks
    |--------------------------------------------------------------------------
    |
    | Here you may configure as many filesystem "disks" as you wish, and you
    | may even configure multiple disks of the same driver. Defaults have
    | been setup for each driver as an example of the required options.
    |
    | Supported Drivers: "local", "ftp", "sftp", "s3"
    |
    */

    'disks' => [

        'local' => [
            'driver' => 'local',
            'root' => storage_path('app'),
        ],

        'public' => [
            'driver' => 'local',
            'root' => storage_path('app/public'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',
        ],
         'posts' => [
            'driver' => 'local',
            'root' => storage_path('app/posts/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'banners' => [
            'driver' => 'local',
            'root' => storage_path('app/banners/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],

        'movil' => [
            'driver' => 'local',
            'root' => storage_path('app/banners/movil/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'cursos' => [
            'driver' => 'local',
            'root' => storage_path('app/cursos/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'cronologiacursos' => [
            'driver' => 'local',
            'root' => storage_path('app/cronologiacursos/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'profiles' => [
            'driver' => 'local',
            'root' => storage_path('app/profiles/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],

        'publicacions' => [
            'driver' => 'local',
            'root' => storage_path('app/publicacions/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'pulseras' => [
            'driver' => 'local',
            'root' => storage_path('app/pulseras/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'joyas' => [
            'driver' => 'local',
            'root' => storage_path('app/joyas/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'expocafs' => [
            'driver' => 'local',
            'root' => storage_path('app/expocafs/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'dijes' => [
            'driver' => 'local',
            'root' => storage_path('app/dijes/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'aretes' => [
            'driver' => 'local',
            'root' => storage_path('app/aretes/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'anillos' => [
            'driver' => 'local',
            'root' => storage_path('app/anillos/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'servicios' => [
            'driver' => 'local',
            'root' => storage_path('app/servicios/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'galleryschools' => [
            'driver' => 'local',
            'root' => storage_path('app/galleryschools/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],
        'herramientas' => [
            'driver' => 'local',
            'root' => storage_path('app/herramientas/'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',

        ],


        's3' => [
            'driver' => 's3',
            'key' => env('AWS_ACCESS_KEY_ID'),
            'secret' => env('AWS_SECRET_ACCESS_KEY'),
            'region' => env('AWS_DEFAULT_REGION'),
            'bucket' => env('AWS_BUCKET'),
            'url' => env('AWS_URL'),
            'endpoint' => env('AWS_ENDPOINT'),
            'use_path_style_endpoint' => env('AWS_USE_PATH_STYLE_ENDPOINT', false),
        ],

    ],

    /*
    |--------------------------------------------------------------------------
    | Symbolic Links
    |--------------------------------------------------------------------------
    |
    | Here you may configure the symbolic links that will be created when the
    | `storage:link` Artisan command is executed. The array keys should be
    | the locations of the links and the values should be their targets.
    |
    */

    'links' => [
        public_path('storage') => storage_path('app/public'),
    ],

];

<?php

namespace Isutar\Web;

use PDO;
use PDOWrapper;
use Slim\Http\Request;
use Slim\Http\Response;

$container = new class extends \Slim\Container
{
    public function __construct()
    {
        parent::__construct();
    }
};
$app = new \Slim\App($container);

$app->run();

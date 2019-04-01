<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type");
header("Access-Control-Allow-Methods", "POST, GET, PUT, DELETE, OPTIONS");
header('Content-Type: application/json');
/*
 * Clase para los registros de los clientes de nuestro newsletter
 */
require_once '../models/config.php';
require_once '../models/connection.php';
if ($_GET['operationType']) {
    $newsletter = new Newsletter();
    switch($_GET['operationType']) {
        case 'newsletter':
              echo $newsletter->CreateNewsletter();
        break;
    }
}
class Newsletter {
        public function __construct() {
        $this->BBDD = new \dbDriver;
        $this->driver = $this->BBDD->setPDO();
        $this->BBDD->setPDOConfig($this->driver);
    }
    public function CreateNewsletter() {
        // Debemos verificar que la misma persona no se registre varias veces con el mismo email
        if (!$this->VerifyDriver($_POST['email'])) {
            // Si es falso entonces lo registramos
            $sql = '?';
            $fields = 'cli_email';
            $afiliation = $this->BBDD->insertDriver($sql, PREFIX.'clients', $this->driver, $fields);
            $this->BBDD->runDriver(array(
                $this->BBDD->scapeCharts($_POST['email'])
            ), $afiliation);
            $object = array();
            $object['status'] = true;
            $object['data'] = $_POST;
            return json_encode($object);
        } else {
            $object = array();
            $object['status'] = false;
            $object['message'] = 'Email exists';
            return json_encode($object);
        }
    }
    public function VerifyDriver($email) {
        $customer = $this->BBDD->selectDriver('cli_email = ?', PREFIX.'clients', $this->driver);
        $this->BBDD->runDriver(array(
            $this->BBDD->scapeCharts($email)
        ), $customer);
        if ($this->BBDD->verifyDriver($customer)) {
            return true;
        } else {
            return false;
        }
    }
    protected $BBDD;
    protected $driver;
}
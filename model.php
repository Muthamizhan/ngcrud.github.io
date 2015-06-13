<?php
	
	class Model{
		
		public $db;
			
		public function __construct() {
			$this -> db = new PDO("mysql:host=localhost;dbname=ngcrud", "root", "",array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		}
		public function getData(){
			/*$sth = $this->db->prepare("SELECT * FROM mytable");
			$result = $sth->setFetchMode(PDO::FETCH_ASSOC);
			return $result;*/
			$sql = "SELECT * FROM mytable";
			$data = $this -> db -> prepare($sql);
			$list = $data -> execute();
			$result = $data -> fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}
	}
?>
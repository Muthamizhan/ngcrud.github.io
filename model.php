<?php
	
	class Model{
		
		public $db;
			
		public function __construct() {
			$this -> db = new PDO("mysql:host=localhost;dbname=ngcrud", "root", "",array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		}
		public function getData(){
			$sql = "SELECT * FROM mytable";
			$data = $this -> db -> prepare($sql);
			$list = $data -> execute();
			$result = $data -> fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}
		public function delData($id){
			$query = "DELETE FROM mytable WHERE id=:id";
			$list = $this -> db -> prepare($query);
			$list -> bindParam(':id', $id);
			$exe_query = $list -> execute();
			return $exe_query ;
		}
	}
?>
<?php
	
	class Model{
		
		public $db;
			
		public function __construct() {
			$this -> db = new PDO("mysql:host=localhost;dbname=ngcrud", "root", "",array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
		}
		public function getData(){
			$query = "SELECT * FROM mytable";
			$data = $this -> db -> prepare($query);
			$list = $data -> execute();
			$result = $data -> fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}
		public function editData($id){
			$query = "SELECT * FROM mytable WHERE id=:id";
			$list = $this -> db -> prepare($query);
			$list -> bindParam(':id', $id);
			$exe_query = $list -> execute();
			$result = $list -> fetchAll(PDO::FETCH_ASSOC);
			return $result ;
		}
		public function updateVal($id,$name,$phone){
			$query = "UPDATE mytable SET name=:name , Phone=:phone where id=:id";
			$update = $this -> db -> prepare($query);
			$update -> bindParam(':id', $id);
			$update -> bindParam(':name', $name);
			$update -> bindParam(':phone', $phone);
			$exe_query = $update -> execute();
			return $exe_query ;
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
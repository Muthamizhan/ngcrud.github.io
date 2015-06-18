<?php
	require('model.php');
	$model = new Model();
	try{
		
		if ($_SERVER['REQUEST_METHOD'] === 'POST') {
				$data = file_get_contents("php://input");
				$objData = json_decode($data);
				$id=$objData->id;
				$mode = $objData->edit;
				
				if ($mode == 2) {
					
					$id = $objData->id;
					$name = $objData->name;
					$phone = $objData->Phone;
					$data = $model -> updateVal($id,$name,$phone);
					if(!$data) {
						throw new Exception("Value Not Found");
					} else {
						echo json_encode("Data Update successfully ");
					}
				}else
				if ($mode == 1) {
					$data = $model ->editData($id);
					if(!$data) {
						throw new Exception("Value Not Found");
					} else {
					
					
					echo json_encode($data);
					}
				}else
				if ($mode == 0){
					$data = $model ->delData($id);
					if(!$data) {
						throw new Exception("Value Not Found");
					} else {
					
					
					echo json_encode($result);
					}
				}else{
					throw new Exception("Value Not Found");
				}			
		}else if($_SERVER['REQUEST_METHOD'] === 'GET') {
				$data = file_get_contents("php://input");
				$objData = json_decode($data);
				
				$data = $model ->getData();
				if(!$data) {
					throw new Exception("Unable to process the request");
				} else {
		 			echo json_encode($data);
				}
			} 
		else {
			echo "Error Processing your request";
		}
				
	}catch(Exception $ex) {
		$result = array(
				'status' => "fail",
				'response' => array(
							'msg' => $ex -> getMessage()
						)
			);
		echo json_encode($result);
	}
?>
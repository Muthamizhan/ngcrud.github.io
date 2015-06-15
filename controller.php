<?php
	require('model.php');
	$model = new Model();
	try{
		
		if ($_SERVER['REQUEST_METHOD'] === 'POST') {
				$data = file_get_contents("php://input");
				$objData = json_decode($data);
				$id=$objData->id;
				$data = $model ->delData($id);
				if(!$data) {
					throw new Exception("Value Not Found");
				} else {
				
				$result = array(
								'success' => "Data deleted successfully"
							);
				echo json_encode($result);
				}				
		} else {
			$data = $model ->getData();
			if(!$data) {
				throw new Exception("Unable to process the request");
			} else {
	 			echo json_encode($data);
			}
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
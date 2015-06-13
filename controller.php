<?php
	require('model.php');
	$model = new Model();
	try{
		if(isset($_POST)) {
			if(isset($_POST['id'])) {
				echo ('del');
			} else {
				$data = $model ->getData();

				if(!$data) {
				throw new Exception("Unable to process the request");
			} else {
				
				$result = array(
								'status' => "success",
								'data' => $data
							);
				echo json_encode($result);
			}
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
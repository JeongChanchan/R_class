<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>
<div class="container">
	<form action="form032_process.jsp" name="form" method="post">
	  <div class="row mb-3">
    	<label class="col-sm-3 col-form-label">좋아하는과일</label>
    	<div class="col-sm-8">
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="checkbox" name="FruitGroup" value="오렌지">
  				<label class="form-check-label" for="inlineCheckbox1">오렌지</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="checkbox" name="FruitGroup" value="사과">
  				<label class="form-check-label" for="inlineCheckbox2">사과</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="checkbox" name="FruitGroup" value="바나나">
  				<label class="form-check-label" for="inlineCheckbox3">바나나</label>
			</div>	
    	</div>
     </div>	
  	  <div class="row mb-3">
    	<label class="col-sm-3 col-form-label">연락처</label>
    	<div class="col-auto">
    		<select class="form-select" name="phone1">
  				<option value="010">010</option>
 		 		<option value="011">011</option>
  				<option value="016">016</option>
  				<option value="019">019</option>
			</select>
  		</div>
  		<div class="col-auto"><span class="form-text">-</span></div>
  		<div class="col-auto">
    		<input type="text" class="form-control" maxlength="4" size="4" name="phone2">
  		</div>
  		<div class="col-auto"><span class="form-text">-</span></div>
  		<div class="col-auto">
    		<input type="text" class="form-control" maxlength="4" size="4" name="phone3">
  		</div>
  	  </div>
  	  <div class="form-group row">
    	<div class="col-sm-8">
      		<input type="submit" class="btn btn-primary" value="전송">
    	</div>
  	  </div>
  	</form>
 </div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

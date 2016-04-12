<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Paradise</title>
</head>
<body>

<form action="search" method="GET">
			
					<div class="section_room">
					<select name="testing" id="country" >
							<option value="null">Select a type of room</option>
				            <option value="suite">Suite room</option>         
				            <option value="single">Single room</option>
							<option value="double">Double room</option>
		        		</select>
					</div>	
				</li>
				<li >
					<h5>check-in-date:</h5>
					<div class="book_date">
						
							<input class="date"
                                                               id="datepicker" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						

					</div>					
				</li>
				<li >
					<h5>check-out-date:</h5>
					<div class="book_date">
						
							<input class="date" id="datepicker1" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						
					</div>		
				</li>
				<li >
					<h5>Adults:</h5>
					<!----------start section_room----------->
					<div>
						<select id="country" >
							<option value="null">1</option>
				            <option value="null">2</option>         
				            <option value="AX">3</option>
							<option value="AX">4</option>
		        		</select>
					</div>					
				</li>
				<li >
					<div >
                                           
							<input type="submit" value="Book now" />
						
					</div>
				</li>
				<div class=></div>
			</ul>
			</form>


</body>
</html>
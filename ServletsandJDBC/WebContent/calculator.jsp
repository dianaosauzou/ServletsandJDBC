
<!DOCTYPE html>
<%=request.getParameter("username")%>
<html>
<head>
 <style> 
         .title{ 
         margin-bottom: 10px; 
         text-align:center; 
         width: 210px; 
         color:black; 
         border: solid black 2px; 
         } 
  
         input[type="button"] 
         { 
         background-color:pink; 
         color: black; 
         border: solid black 2px; 
         width:100% 
         } 
  
         input[type="text"] 
         { 
         background-color:pink; 
         border: solid black 2px; 
         width:100% 
         } 
      <</style> 
          
         
</head>
   <body>
        <form>
             <div>
                                     
             <h2>Welcome to your Compound Interest Calculator!</h2>
                        <P>Enter your Principal Amount :<input type="text" id="getPrincipal" name="prncipal" ></P>
                        <P>Enter the interest Rate :<input type="text" id="getInterestRate" name="interest" ></P>
                        <P>Number of time periods elapsed? :<input type="text" id="getYear" name="year" ></P>
                        <P>Number of Times interest applied per year? :<input type="text" id="getTime" name="time" ></P>
                        <P> <input type="button" value="Calculate Rate" id="" onclick="compoundInterest(this.principal , this.interest , this.year , this.time);"/></P>
            </div>
        </form>

       
         <p id="compoundinterest"> </p>
         
         
         <script type="text/javascript">
         
                   function compoundInterest(principal, interest, year, time) {
                 
                            principal = document.getElementById("getPrincipal").value;
                            interest = document.getElementById("getInterestRate").value;
                            year = document.getElementById("getYear").value;
                            time = document.getElementById("getTime").value;               
                             
 
                          var compound_Interest  = ( principal* Math.pow((1 + (interest/(time*100))), (time*year)));
                          
                            document.getElementById("compoundinterest").innerHTML = "Compound Interest is " + compound_Interest;
                   }
                   
                   
           </script>

    </body>
    
  
</html>
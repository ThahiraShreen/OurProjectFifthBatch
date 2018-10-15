<!DOCTYPE html>
<html>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
}

/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 10px;
}

.column img {
    margin-top: 12px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
</style>
<body>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="https://www.countrywidepropertyauctions.co.uk/images/auction_venues/crowne-plaza-liverpool.jpg" style="width:100%">
    <b>The Traders----</b><a href="book.jsp"><b>Book Now</b></a><img src="https://mattanu.com/wp-content/uploads/2017/10/Mattanu-Conferences-002.jpg" style="width:100%">
    <b>The Ralph----</b><a href="book.jsp"><b>Book Now</b></a><img src="https://www.bizbash.com/content/editorial/StoryPhoto/big/e21218Gallery-3-low-res.jpg" style="width:100%">
   <b>The Company----</b><a href="book.jsp"><b>Book Now</b></a>
  </div>
  <div class="column">
    <img src="https://i.pinimg.com/236x/0c/22/44/0c22449b466eba9a1dd7628ad7d5c0bd.jpg" style="width:100%">
    <b>The Dictator----</b><a href="book.jsp"><b>Book Now</b></a><img src="https://mattanu.com/wp-content/uploads/2017/10/Mattanu-Conferences-001.jpg" style="width:100%">
    <b>The Aura----</b><a href="book.jsp"><b>Book Now</b></a><img src="https://static1.squarespace.com/static/54146f6be4b014031cfdef71/t/54afb7e3e4b0b7b2a6ac40cc/1536274289244/trianonhall.jpg" style="width:100%">
   <b>The Ambience----</b><a href="book.jsp"><b>Book Now</b></a>
    
  </div>  
  
  </div>

</body>
</html>

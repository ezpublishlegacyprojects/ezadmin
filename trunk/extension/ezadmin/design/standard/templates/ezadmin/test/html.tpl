<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>

<hgroup title="The hgroup element represents the heading of a section. The element is used to group a set of h1–h6 elements when the heading has multiple levels, such as subheadings, alternative titles, or taglines.">
 <h2>The reality dysfunction</h2>
 <h3>Space is not the only void</h3>
</hgroup>

<p>This is a paragraph. <img src="w3schools.jpg" width="200" height="150" /> This is a paragraph. </p>
<p>This is another paragraph. <a href="http://www.w3schools.com">This is a link</a>  </p>


<figure title="The figure element represents some flow content, optionally with a caption, that is self-contained and is typically referenced as a single unit from the main flow of the document.">
 <img src="bubbles-work.jpeg"
      alt="Bubbles, sitting in his office chair, works on his
           latest project intently.">
 <figcaption>Bubbles at work</figcaption>
</figure>

<p>
<b>This text is bold</b>.
<big>This text is big</big>.
<i>This text is italic</i>.
<em>Emphasized text</em>.
<strong>Strong text</strong>.
<small>Small text</small>.
<dfn>Definition term</dfn>.
<code>A piece of computer code</code>
<samp>Sample output from a computer program</samp>.
<kbd>Keyboard input</kbd>.
<var>Variable</var>.
<cite>Citation</cite>.
<time>2011-11-12 14:54:39+0000</time>.
Can I get this <acronym title="as soon as possible">ASAP</acronym>?
The <abbr title="World Health Organization">WHO</abbr> was founded in 1948. 
</p>
<p>This is<sub> subscript</sub> and <sup>superscript</sup></p>

<table summary="The Summary of the table: 2 rows and 2 cells">
<caption>Table Caption</caption>
<tr>
<th>Header 1</th>
<th>Header 2</th>
</tr>
<tr>
<td>row 1, cell 1</td>
<td>row 1, cell 2</td>
</tr>
<tr>
<td>row 2, cell 1</td>
<td>row 2, cell 2</td>
</tr>
</table> 
<blockquote>
Here is a long quotation here is a long quotation here is a long quotation here is a long quotation here is a long quotation here is a long quotation here is a long quotation here is a long quotation here is a long quotation.
</blockquote>
<pre>
Text in a pre element
is displayed in a fixed-width
font, and it preserves
both      spaces and
line breaks
</pre> 
<video width="320" height="240" controls="controls">
  <source src="movie.mp4" type="video/mp4" />
  <source src="movie.ogg" type="video/ogg" />
  Your browser does not support the video tag.
</video>
<audio controls="controls">
  <source src="song.ogg" type="audio/ogg" />
  <source src="song.mp3" type="audio/mp3" />
  Your browser does not support the audio tag.
</audio>
<canvas id="myCanvas"></canvas>
<script type="text/javascript">
var canvas=document.getElementById('myCanvas');
var ctx=canvas.getContext('2d');
ctx.fillStyle='#FF0000';
ctx.fillRect(0,0,80,100);
</script> 
<iframe src="http://www.w3schools.com"></iframe> 
<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
    <li>Black tea</li>
    <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ul>

<ol>
  <li>Coffee</li>
  <li>Tea
    <ol>
    <li>Black tea</li>
    <li>Green tea</li>
    </ol>
  </li>
  <li>Milk</li>
</ol>

<form name="input" action="" method="get">

<label for="male">Male</label>
<input type="radio" name="sex" id="male" /><br />

<label for="female">Female</label>
<input type="checkbox" name="sex" id="female" />

<label for="password">Password</label>
<input type="password" name="password" />

<label for="user">User</label>
<input type="text" name="user" />

<label for="cars">Cars</label>
<select name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="mercedes">Mercedes</option>
  <option value="audi">Audi</option>
</select>
<label for="morecars">Cars</label>
<select name="morecars">
  <optgroup label="Swedish Cars">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
  </optgroup>
  <optgroup label="German Cars">
    <option value="mercedes">Mercedes</option>
    <option value="audi">Audi</option>
  </optgroup>
</select> 
<label for="message">Message</label>
<textarea name="Message" rows="2" cols="20">
At W3Schools you will find all the Web-building tutorials you need, from basic HTML to advanced XML, SQL, ASP, and PHP.
</textarea> 

<input type="submit" value="Submit" />

<fieldset>
    <legend>Personalia:</legend>
    <label for="morecars">Cars</label>
    <input type="text" />
    <label for="morecars">Cars</label>
    <input type="text" />
    <label for="morecars">Cars</label>
    <input type="text" />
  </fieldset>
</form> 
<button>Button</button>


<dl>
<dt>Coffee</dt>
<dd>- black hot drink</dd>
<dt>Milk</dt>
<dd>- white cold drink</dd>
</dl>

<p>This is some text.</p>
<hr />
<p>This is some text.</p> 

<address>
Written by W3Schools.com<br />
<a href="mailto:us@example.org">Email us</a><br />
Address: Box 564, Disneyland<br />
Phone: +12 34 56 78
</address>

<img src={"planets.gif"|ezimage} width="145" height="126" alt="Planets" title="Planets" usemap="#planetmap" />

<map name="planetmap">
  <area shape="rect" coords="0,0,82,126" href="sun.htm" alt="Sun" />
  <area shape="circle" coords="90,58,3" href="mercur.htm" alt="Mercury" />
  <area shape="circle" coords="124,58,8" href="venus.htm" alt="Venus" />
</map>
//header define
class MyHeader extends HTMLElement{
	connectedCallback(){
		this.innerHTML=`
    <header>
        <a href="/img/logo.png" class="logo"><img src="img/logo.png"></a>
        <ul class="navigation">
            <li><a href="userHome.jsp">Home</a></li>
            <li><a href="#">TV Shows</a></li>
            <li><a href="#">Movies</a></li>
            <li><a href="#">Latest</a></li>
            <li><a href="userAccount.jsp">My list</a></li>
        </ul>
        <div class="search">
            <input type="text" placeholder="Search">
            <i class="fa fa-search" aria-hidden="true"></i>
        </div>
    </header>
	`
	}
}

customElements.define('my-header',MyHeader)
class MyFooter extends HTMLElement{
    connectedCallback() {
        this.innerHTML =`
			<footer class="footer footer-black">
      <div class="footer-container margin-inline">
        <p class="text-gray">
          Questions? <br />
          Call 007-803-321-2130
        </p>
        <div class="links">
          <ul class="">
            <li><a class="text-terms text-underline" href="">FAQ</a></li>
            <li><a class="text-terms text-underline" href="">Cookie Preferences</a></li>
          </ul>

          <ul>
            <li><a class="text-terms text-underline" href="">Help Center</a></li>
            <li><a class="text-terms text-underline" href="">Corporate Information</a></li>
          </ul>

          <a class="text-terms text-underline" href="">Terms of Use</a>

          <a class="text-terms text-underline" href="">Privacy</a>
        </div>

        <div class="language">
          <select class="language-select" onchange="location=this.value;">
            <option value="login_en.html" selected>English</option>
            <option >German</option>
            <option >Spanish</option>
            <option >Italian</option>
            <option >Japanease</option>
          </select>
          <div class="language-icon">
            <i class="fas fa-globe globe"></i>
            <i class="fas fa-chevron-down chevron"></i>
          </div>
        </div>
      </div>
    </footer>
        `
        }
        }
        
        customElements.define('my-footer',MyFooter)

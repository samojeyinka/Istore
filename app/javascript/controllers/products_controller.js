import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="products"
export default class extends Controller {
    static values = {size: String, product: Object}

    addToCart(){
      console.log("producct: ",this.productValue)
    }

    selectSize(e) {
      this.sizeValue = e.target.value;
      const selectedSizeElmt = document.getElementById('selectedSize');
      const youSelected = document.getElementById('indicator');
      youSelected.innerText = 'You picked';
      selectedSizeElmt.style.padding = '.3rem';
      selectedSizeElmt.innerText = `${this.sizeValue}`;

    }
}

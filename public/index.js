/* global axios */
axios.get("api/products").then(function(response) {
  var products = response.data;
  console.log("the products are", products);

  var productTemplate = document.querySelector("#product-card");
  var productContainer = document.querySelector(".row");

  products.forEach(function(product) {
    var copiedContent = productTemplate.content.cloneNode(true);
    copiedContent.querySelector(".card-name").innerText = product.name;
    copiedContent.querySelector(".card-supplier").innerText = product.supplier["name"];
    copiedContent.querySelector(".card-price").innerText = product.price;
    copiedContent.querySelector(".card-img-top").src = product.images[0];
    productContainer.appendChild(copiedContent);
  });
});
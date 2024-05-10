document.addEventListener('DOMContentLoaded', function () {
    const menuItems = document.querySelectorAll('.item');
    const cartList = document.getElementById('cart-list');
    const totalElement = document.getElementById('total');
    let cartItems = [];

    menuItems.forEach(item => {
        const addToCartButton = item.querySelector('.add-to-cart');
        addToCartButton.addEventListener('click', function () {
            addToCart(item);
            updateCart();
        });
    });

    function addToCart(item) {
        const itemName = item.dataset.name;
        const itemPrice = parseFloat(item.dataset.price);
        cartItems.push({ name: itemName, price: itemPrice });
    }

    function updateCart() {
        cartList.innerHTML = '';
        let total = 0;

        cartItems.forEach(item => {
            const li = document.createElement('li');
            li.textContent = `${item.name} - $${item.price.toFixed(2)}`;
            cartList.appendChild(li);
            total += item.price;
        });

        totalElement.textContent = total.toFixed(2);
    }
});

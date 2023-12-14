 
  import { defineStore } from 'pinia'
  import { useProductsStore } from './products'
  export const useBasketStore = defineStore({
  id: 'basket',
  state: () => ( {
    products: [
    //  {
    //    id: 1,
    //    quantity: 5
    //  },
    //  {
    //   id: 2,        
    //    quantity: 2
    //  },
    //  {
    //    id: 3,        
    //    quantity: 3
    //  }
    ]
  }),
  getters: {
    getProducts (state) {
      return state.products;
    },
    productsInBasket(state) {
      let products = []
      const productsStore = useProductsStore()
      let getProducts = productsStore.products
      let productsInBasket = state.products    
      for (let i = 0; i < productsInBasket.length; i++) {
              for (let j = 0; j < getProducts.length; j++) {
                  let product = {}
                  if (productsInBasket[i].id == getProducts[j].id) {
                      product.id = getProducts[j].id
                      product.name = getProducts[j].name 
                      product.price = getProducts[j].price
                      product.quantity = productsInBasket[i].quantity
                      products.push(product);
                  }
              }               
      }
      return products
    },
    totalAmount() {    
      let total = 0     
      for (let i = 0; i < this.productsInBasket.length; i++) {
          total += this.productsInBasket[i].quantity * this.productsInBasket[i].price
      }
      return total    
    },   
  }, 
  actions: {
    clearBasket () {
        this.products = []
    },
    incrementProduct (idToIncrement) {
        // check if item exists in basket


        // item does not exist; create item

        // increment item

      },    
      decrementProduct (idToDecrement) {

          // remove item if quantity is 0
      },
	},


})

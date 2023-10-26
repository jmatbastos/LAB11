 
  import { defineStore } from 'pinia'
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
  }, 
  actions: {
    clearBasket () {
        this.products = []
    },
    incrementProduct (idToIncrement) {
        // check if item exists in basket
        let itemExists = this.products.some(function(product) {
            return product.id == idToIncrement;
        })

        // item does not exist; create item
        if (!itemExists) {
            this.products.push({
                id: idToIncrement,
                quantity: 0
            })
        }
        // increment item
        this.products.forEach( function (product) {     
            if (product.id == idToIncrement)  
                product.quantity++
        })
      },    
      decrementProduct (idToDecrement) {
        this.products.forEach( function (product, index) {       
            if (product.id == idToDecrement && product.quantity >= 1)        
                product.quantity--
            // remove item if quantity is 0
            if (product.quantity == 0)
                this.products.splice(index,1)
        })
      },
	},

})

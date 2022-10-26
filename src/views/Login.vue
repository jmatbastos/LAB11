<template>
<div>


  
<Header />






<Footer />

</div>
</template>
<script>
import Footer from '@/components/Footer.vue'
import Header from '@/components/Header.vue'

export default {
	components: {
		Footer,
        Header
	},   
	data() {
      return {	
        user: {
			email: '',
			password: '',
        },
		submitting: false,
		error: false,
      }
    },
	
	methods: {

	},
	
	computed: {

	},
	directives: {

	},
	created: function () {

	}
}
</script>
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
    showModal: true,
    components: {
		Footer,
        Header
	},
	data() {
		return {
		products: [],
		}
	},
	mounted() {

	},
	methods: {
	
	},
    computed: {

    },
}



</script>

<style scoped>
</style>
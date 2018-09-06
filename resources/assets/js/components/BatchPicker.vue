<script>
    import Axios from "axios";

    export default {

        name: "batch-picker",

        data() {
            return {
                farmer: "",
                batches: []
            }
        },

        computed: {
            hasBatchNumber(){
                return Boolean(this.batches.length);
            }
        },

        watch: {
            farmer(id) {
                this.fetchBatchesByFarmerId(id);
            }
        },

        methods:{
            fetchBatchesByFarmerId(id){
                Axios
                    .get(`/api/farmers/${id}/batches`)
                    .then(({data}) => { this.batches = data; })
                    .catch(({data}) => {})
            }
        }
    }
</script>
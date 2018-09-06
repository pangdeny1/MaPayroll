<script>
    import _        from "lodash";
    import Axios    from "axios";

    export default {

        name: "farmers-picker",

        data() {
            return {
                farmers: [],
                selectedFarmers: [],
                newFarmer: ""
            };
        },

        mounted() {
            Axios.get("/api/farmers")
                .then(({data})  => { this.farmers = data; })
                .catch(({data}) => {})
        },

        methods: {
            addFarmer() {
                let farmer = _.find(this.farmers, (o) => {
                    return o.id === this.newFarmer;
                });

                if (!_.includes(this.selectedFarmers, this.newFarmer)) {
                    if (this.selectedFarmers.length < 10) {
                        this.selectedFarmers.push(farmer);
                    }
                }

                this.newFarmer = "";
            },
            removeFarmer(farmerId) {
                let index = _.findIndex(this.selectedFarmers, (o) => {
                    return o.id === farmerId
                });

                this.selectedFarmers.splice(index, 1);
            }
        }
    };
</script>

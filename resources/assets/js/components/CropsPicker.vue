<script>
    import _        from "lodash";
    import Axios    from "axios";

    export default {

        name: "crops-picker",

        data() {
            return {
                crops: [],
                selectedCrops: [],
                newCrop: ""
            };
        },

        mounted() {
            Axios.get("/api/crops")
                .then(({data})  => { this.crops = data; })
                .catch(({data}) => {})
        },

        methods: {
            addCrop() {
                let crop = _.find(this.crops, (o) => {
                    return o.id === this.newCrop;
                });

                if (!_.includes(this.selectedCrops, this.newCrop)) {
                    this.selectedCrops.push(crop);
                }

                this.newCrop = "";
            },
            removeCrop(cropId) {
                let index = _.findIndex(this.selectedCrops, (o) => {
                    return o.id === cropId
                });

                this.selectedCrops.splice(index, 1);
            }
        }
    };
</script>

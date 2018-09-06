<script>
import Axios from "axios";

export default {
  name: "block-picker",

  data() {
    return {
      farm: "",
      products: [],
      blocks: [],
      errors: []
    };
  },

  watch: {
    farm(id) {
      this.fetchBlocksByFarmId(id);

      this.fetchProductsByFarmId(id);
    }
  },

  computed: {
    hasProducts() {
      return Boolean(this.products.length);
    },
    hasBlocks() {
      return Boolean(this.blocks.length);
    }
  },

  methods: {
    fetchBlocksByFarmId(id) {
      Axios.get(`/api/farms/${id}/blocks`)
        .then(({ data }) => {
          this.blocks = data;
        })
        .catch(({ data }) => {
          this.errors = data;
        });
    },
    fetchProductsByFarmId(id) {
      Axios.get(`/api/farms/${id}/crops`)
        .then(({ data }) => {
          this.products = data;
        })
        .catch(({ data }) => {
          this.errors = data;
        });
    }
  }
};
</script>
<script>
import Axios from "axios";

export default {
  props: {
    groupId: {
      type: Number,
      required: true
    }
  },
  data() {
    return {
      farmer: "",
      blocks: [],
      errors: [],
      blockId: null,
      product: null,
      productPrice: null
    };
  },
  computed: {
    hasBlock() {
      return Boolean(this.blocks.length);
    },
    productName() {
      if (this.product) {
        return this.product.name;
      }

      return null;
    },
    price() {
      if (this.productPrice) {
        return (
          "Tsh. " + this.productPrice.amount + "/" + this.productPrice.unit
        );
      }

      return null;
    }
  },
  watch: {
    farmer(id) {
      this.fetchBlocksByFarmerId(id);
    },
    blockId(id) {
      this.getProductByBlockId(id);
    },
    product(product) {
      this.getPriceByProduct(product.id, this.groupId);
    }
  },
  methods: {
    fetchBlocksByFarmerId(id) {
      Axios.get(`/api/farmers/${id}/blocks`)
        .then(({ data }) => {
          this.blocks = data;
        })
        .catch(({ data }) => {
          this.errors = data;
        });
    },
    getProductByBlockId(id) {
      Axios.get(`/api/blocks/${id}/products`)
        .then(({ data }) => {
          this.product = data;
        })
        .catch(({ data }) => {
          this.errors = data;
        });
    },
    getPriceByProduct(productId, groupId) {
      Axios.get(`/api/products/${productId}/prices?group_id=${groupId}`)
        .then(({ data }) => {
          this.productPrice = data;
        })
        .catch(({ data }) => {
          this.errors = data;
        });
    }
  }
};
</script>

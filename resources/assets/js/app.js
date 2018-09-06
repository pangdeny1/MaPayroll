import vue from "vue";
import "./bootstrap";

import RolesPicker from "./components/RolesPicker";
import CropsPicker from "./components/CropsPicker";
import FarmersPicker from "./components/FarmersPicker";
import BlockPicker from "./components/BlockPicker";
import BatchPicker from "./components/BatchPicker";
import FarmerBlockPicker from "./components/FarmerBlockPicker";

window.Vue = vue;

Vue.component("block-picker", BlockPicker);
Vue.component('roles-picker', RolesPicker);
Vue.component('crops-picker', CropsPicker);
Vue.component('farmers-picker', FarmersPicker);
Vue.component('batch-picker', BatchPicker);
Vue.component('farmer-block-picker', FarmerBlockPicker);

const app = new Vue({
    el: '#app'
});

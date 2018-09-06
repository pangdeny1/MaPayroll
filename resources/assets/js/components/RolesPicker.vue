<script>
    import _        from "lodash";
    import Axios    from "axios";

    export default {

        name: "role-assignment-form",

        data() {
            return {
                roles: [],
                selectedRoles: [],
                newRole: ""
            };
        },
        mounted() {
            Axios.get("/api/roles")
                .then(({data})  => { this.roles = data; })
                .catch(({data}) => {})
        },
        methods: {
            addRole() {
                let newRole = _.find(this.roles, (o) => { return o.id === this.newRole; });

                if (!_.includes(this.selectedRoles, this.newRole)) {
                    this.selectedRoles.push(newRole);
                }

                this.newRole = "";
            },
            removeRole(roleId) {
                let index = _.findIndex(this.selectedRoles, (o) => { return o.id === roleId });

                this.selectedRoles.splice(index, 1);
            }
        }
    };
</script>

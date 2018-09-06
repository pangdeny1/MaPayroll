@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <!-- .empty-state -->
        <section id="notfound-state" class="empty-state">
            <!-- .empty-state-container -->
            <div class="empty-state-container">
                <div class="state-figure">
                    <img class="img-fluid"
                         src="{{ asset("themes/looper/assets/images/illustration/img-7.png") }}"
                         alt=""
                         style="max-width: 300px"
                    >
                </div>
                <h3 class="state-header">
                    Forbidden
                </h3>
                <p class="state-description lead text-muted">
                    The user might not have the necessary permissions for a resource, or may need an account of some sort.
                </p>
            </div>
            <!-- /.empty-state-container -->
        </section>
        <!-- /.empty-state -->
    </div>
@endsection
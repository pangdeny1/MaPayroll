@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <div class="sidebar-backdrop"></div>
            <!-- .page-cover -->
            <header class="page-cover">
                <div class="text-center">
                    <a href="#" class="user-avatar user-avatar-xl">
                        <img src="{{ asset("themes/looper/assets/images/avatars/profile.jpg") }}" alt="User Avatar">
                    </a>
                    <h2 class="h4 mt-3 mb-0">{{ $user->full_name }}</h2>
                    <div class="my-1">
                        <i class="fa fa-star text-yellow"></i>
                        <i class="fa fa-star text-yellow"></i>
                        <i class="fa fa-star text-yellow"></i>
                        <i class="fa fa-star text-yellow"></i>
                        <i class="far fa-star text-yellow"></i>
                    </div>
                    <p class="text-muted"> Project Manager @CreativeDivision </p>
                    <p> Huge fan of HTML, CSS and Javascript. Web design and open source lover. </p>
                </div>
                <!-- .cover-controls -->
                <div class="cover-controls cover-controls-bottom">
                    <a href="#" class="btn btn-light" data-toggle="modal" data-target="#followersModal">2,159 Followers</a>
                    <a href="#" class="btn btn-light" data-toggle="modal" data-target="#followingModal">136 Following</a>
                </div>
                <!-- /.cover-controls -->
            </header>

            <!-- Followers Modal -->
            <div class="modal fade"
                 id="followersModal"
                 tabindex="-1"
                 role="dialog"
                 aria-labelledby="followersModalLabel"
                 aria-hidden="true"
            >
                <!-- .modal-dialog -->
                <div class="modal-dialog modal-dialog-overflow" role="document">
                    <!-- .modal-content -->
                    <div class="modal-content">
                        <!-- .modal-header -->
                        <div class="modal-header">
                            <h6 class="modal-title"> Followers </h6>
                        </div>
                        <!-- /.modal-header -->
                        <!-- .modal-body -->
                        <div class="modal-body px-0">
                            <!-- .list-group -->
                            <div class="list-group list-group-flush list-group-divider border">
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces2.jpg" alt="Sarah Bishop">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Sarah Bishop</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces3.jpg" alt="Johnny Day">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Johnny Day</a>
                                        </h4>
                                        <p class="list-group-item-text"> Computer Hardware Engineer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces4.jpg" alt="Jane Barnes">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Jane Barnes</a>
                                        </h4>
                                        <p class="list-group-item-text"> Social Worker </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces5.jpg" alt="Nicole Barnett">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Nicole Barnett</a>
                                        </h4>
                                        <p class="list-group-item-text"> Marketing Manager </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces6.jpg" alt="Michael Ward">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Michael Ward</a>
                                        </h4>
                                        <p class="list-group-item-text"> Lawyer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces7.jpg" alt="Craig Hansen">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Craig Hansen</a>
                                        </h4>
                                        <p class="list-group-item-text"> Software Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces8.jpg" alt="Juan Fuller">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Juan Fuller</a>
                                        </h4>
                                        <p class="list-group-item-text"> Budget analyst </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces9.jpg" alt="Julia Silva">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Julia Silva</a>
                                        </h4>
                                        <p class="list-group-item-text"> Photographer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces10.jpg" alt="Joe Hanson">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Joe Hanson</a>
                                        </h4>
                                        <p class="list-group-item-text"> Logistician </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces11.jpg" alt="Brenda Griffin">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Brenda Griffin</a>
                                        </h4>
                                        <p class="list-group-item-text"> Medical Assistant </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces12.jpg" alt="Ryan Jimenez">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Ryan Jimenez</a>
                                        </h4>
                                        <p class="list-group-item-text"> Photographer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces13.jpg" alt="Cynthia Clark">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Cynthia Clark</a>
                                        </h4>
                                        <p class="list-group-item-text"> Computer Systems Analyst </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces14.jpg" alt="Bryan Hayes">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Bryan Hayes</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces15.jpg" alt="Martha Myers">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Martha Myers</a>
                                        </h4>
                                        <p class="list-group-item-text"> Writer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces16.jpg" alt="Tammy Beck">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Tammy Beck</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces17.jpg" alt="Susan Kelley">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Susan Kelley</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces18.jpg" alt="Albert Newman">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Albert Newman</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces19.jpg" alt="Kyle Grant">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Kyle Grant</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button type="button" class="btn btn-sm btn-primary">Follow</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                            </div>
                            <!-- /.list-group -->
                            <!-- .loading -->
                            <div class="loading border-bottom">
                                <div class="loader loader-sm"></div>
                                <div class="sr-only"> Loading more content </div>
                            </div>
                            <!-- /.loading -->
                        </div>
                        <!-- /.modal-body -->
                        <!-- .modal-footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                        </div>
                        <!-- /.modal-footer -->
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>

            <!-- Following Modal -->
            <div class="modal fade"
                 id="followingModal"
                 tabindex="-1"
                 role="dialog"
                 aria-labelledby="followingModalLabel"
                 aria-hidden="true"
            >
                <!-- .modal-dialog -->
                <div class="modal-dialog modal-dialog-overflow" role="document">
                    <!-- .modal-content -->
                    <div class="modal-content">
                        <!-- .modal-header -->
                        <div class="modal-header">
                            <h6 class="modal-title"> Following </h6>
                        </div>
                        <!-- /.modal-header -->
                        <!-- .modal-body -->
                        <div class="modal-body px-0">
                            <!-- .list-group -->
                            <div class="list-group list-group-flush list-group-divider border">
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces2.jpg" alt="Sarah Bishop">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Sarah Bishop</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces3.jpg" alt="Johnny Day">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Johnny Day</a>
                                        </h4>
                                        <p class="list-group-item-text"> Computer Hardware Engineer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces4.jpg" alt="Jane Barnes">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Jane Barnes</a>
                                        </h4>
                                        <p class="list-group-item-text"> Social Worker </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces5.jpg" alt="Nicole Barnett">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Nicole Barnett</a>
                                        </h4>
                                        <p class="list-group-item-text"> Marketing Manager </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces6.jpg" alt="Michael Ward">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Michael Ward</a>
                                        </h4>
                                        <p class="list-group-item-text"> Lawyer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces7.jpg" alt="Craig Hansen">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Craig Hansen</a>
                                        </h4>
                                        <p class="list-group-item-text"> Software Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces8.jpg" alt="Juan Fuller">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Juan Fuller</a>
                                        </h4>
                                        <p class="list-group-item-text"> Budget analyst </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces9.jpg" alt="Julia Silva">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Julia Silva</a>
                                        </h4>
                                        <p class="list-group-item-text"> Photographer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces10.jpg" alt="Joe Hanson">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Joe Hanson</a>
                                        </h4>
                                        <p class="list-group-item-text"> Logistician </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces11.jpg" alt="Brenda Griffin">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Brenda Griffin</a>
                                        </h4>
                                        <p class="list-group-item-text"> Medical Assistant </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces12.jpg" alt="Ryan Jimenez">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Ryan Jimenez</a>
                                        </h4>
                                        <p class="list-group-item-text"> Photographer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces13.jpg" alt="Cynthia Clark">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Cynthia Clark</a>
                                        </h4>
                                        <p class="list-group-item-text"> Computer Systems Analyst </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces14.jpg" alt="Bryan Hayes">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Bryan Hayes</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces15.jpg" alt="Martha Myers">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Martha Myers</a>
                                        </h4>
                                        <p class="list-group-item-text"> Writer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces16.jpg" alt="Tammy Beck">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Tammy Beck</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces17.jpg" alt="Susan Kelley">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Susan Kelley</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces18.jpg" alt="Albert Newman">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Albert Newman</a>
                                        </h4>
                                        <p class="list-group-item-text"> Web Developer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                                <!-- .list-group-item -->
                                <div class="list-group-item">
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <a href="#" class="user-avatar">
                                            <img src="assets/images/avatars/uifaces19.jpg" alt="Kyle Grant">
                                        </a>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                    <!-- .list-group-item-body -->
                                    <div class="list-group-item-body">
                                        <h4 class="list-group-item-title">
                                            <a href="#">Kyle Grant</a>
                                        </h4>
                                        <p class="list-group-item-text"> Designer </p>
                                    </div>
                                    <!-- /.list-group-item-body -->
                                    <!-- .list-group-item-figure -->
                                    <div class="list-group-item-figure">
                                        <button class="btn btn-sm btn-secondary">Following</button>
                                    </div>
                                    <!-- /.list-group-item-figure -->
                                </div>
                                <!-- /.list-group-item -->
                            </div>
                            <!-- /.list-group -->
                            <!-- .loading -->
                            <div class="loading border-bottom">
                                <div class="loader loader-sm"></div>
                                <div class="sr-only"> Loading more content </div>
                            </div>
                            <!-- /.loading -->
                        </div>
                        <!-- /.modal-body -->
                        <!-- .modal-footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                        </div>
                        <!-- /.modal-footer -->
                    </div>
                    <!-- /.modal-content -->
                </div>
            </div>

            <!-- .page-navs -->
            <nav class="page-navs">
                <!-- .nav-scroller -->
                <div class="nav-scroller">
                    <!-- .nav -->
                    <div class="nav nav-center nav-tabs">
                        <a class="nav-link" href="user-activities.html">Activities
                            <span class="badge">16</span>
                        </a>
                        <a class="nav-link" href="user-teams.html">Teams</a>
                        <a class="nav-link" href="user-projects.html">Projects</a>
                        <a class="nav-link" href="user-tasks.html">Tasks</a>
                        <a class="nav-link" href="user-profile-settings.html">Settings</a>
                    </div>
                    <!-- /.nav -->
                </div>
            </nav>

            <!-- .page-inner -->
            <div class="page-inner">
                <!-- .page-section -->
                <div class="page-section">
                    <!-- .section-block -->
                    <div class="section-block">
                        <!-- <h1 class="section-title">Overview</h1> -->
                        <!-- metric row -->
                        <div class="metric-row">
                            <!-- metric column -->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <!-- .metric -->
                                <div class="card-metric">
                                    <div class="metric">
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="oi oi-fork"></i>
                                            </sub>
                                            <span class="value">12</span>
                                        </p>
                                        <h2 class="metric-label"> Teams </h2>
                                    </div>
                                </div>
                                <!-- /.metric -->
                            </div>
                            <!-- /metric column -->
                            <!-- metric column -->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <!-- .metric -->
                                <div class="card-metric">
                                    <div class="metric">
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="oi oi-people"></i>
                                            </sub>
                                            <span class="value">47</span>
                                        </p>
                                        <h2 class="metric-label"> Projects </h2>
                                    </div>
                                </div>
                                <!-- /.metric -->
                            </div>
                            <!-- /metric column -->
                            <!-- metric column -->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <!-- .metric -->
                                <div class="card-metric">
                                    <div class="metric">
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="fa fa-tasks"></i>
                                            </sub>
                                            <span class="value">64</span>
                                        </p>
                                        <h2 class="metric-label"> Active Tasks </h2>
                                    </div>
                                </div>
                                <!-- /.metric -->
                            </div>
                            <!-- /metric column -->
                            <!-- metric column -->
                            <div class="col-12 col-sm-6 col-lg-3">
                                <!-- .metric -->
                                <div class="card-metric">
                                    <div class="metric">
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="oi oi-timer"></i>
                                            </sub>
                                            <span class="value">8</span>
                                        </p>
                                        <h2 class="metric-label"> Ongoing Tasks </h2>
                                    </div>
                                </div>
                                <!-- /.metric -->
                            </div>
                            <!-- /metric column -->
                        </div>
                        <!-- /metric row -->
                    </div>

                    <!-- .card -->
                    <div class="card card-fluid">
                        <header class="card-header d-flex align-items-center">
                            <span class="mr-auto">Achievement</span>
                            <!-- .card-header-control -->
                            <div class="card-header-control font-weight-normal">
                                <!-- .dropdown -->
                                <div class="dropdown">
                                    <button class="btn btn-secondary" data-toggle="dropdown">
                                        <span>This Week</span>
                                        <i class="fa fa-fw fa-caret-down"></i>
                                    </button>
                                    <div class="dropdown-arrow dropdown-arrow-right"></div>
                                    <!-- .dropdown-menu -->
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- .list-group -->
                                        <div class="list-group list-group-flush">
                                            <!-- .list-group-item -->
                                            <a href="#" class="list-group-item justify-content-between">
                                                <span>Today</span>
                                                <span class="text-muted">Mar 27</span>
                                            </a>
                                            <!-- /.list-group-item -->
                                            <!-- .list-group-item -->
                                            <a href="#" class="list-group-item justify-content-between">
                                                <span>Yesterday</span>
                                                <span class="text-muted">Mar 26</span>
                                            </a>
                                            <!-- /.list-group-item -->
                                            <!-- .list-group-item -->
                                            <a href="#" class="list-group-item justify-content-between">
                                                <span>This Week</span>
                                                <span class="text-muted">Mar 21-27</span>
                                            </a>
                                            <!-- /.list-group-item -->
                                            <!-- .list-group-item -->
                                            <a href="#" class="list-group-item justify-content-between">
                                                <span>This Month</span>
                                                <span class="text-muted">Mar 1-31</span>
                                            </a>
                                            <!-- /.list-group-item -->
                                            <!-- .list-group-item -->
                                            <a href="#" class="list-group-item justify-content-between">
                                                <span>This Year</span>
                                                <span class="text-muted">2018</span>
                                            </a>
                                            <!-- /.list-group-item -->
                                            <!-- datepicker:range -->
                                            <input id="flatpickr" type="text" class="form-control d-none flatpickr-input" readonly="readonly"><div class="flatpickr-calendar rangeMode animate inline" tabindex="-1" style="width: 1px;"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><span class="cur-month" title="Scroll to increment">May </span><div class="numInputWrapper"><input class="numInput cur-year" type="text" pattern="\d*" tabindex="-1" title="Scroll to increment" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
                                                            </div></div><div class="flatpickr-days" tabindex="-1" style="width: 1px;"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="April 29, 2018" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="April 30, 2018" tabindex="-1">30</span><span class="flatpickr-day " aria-label="May 1, 2018" tabindex="-1">1</span><span class="flatpickr-day " aria-label="May 2, 2018" tabindex="-1">2</span><span class="flatpickr-day " aria-label="May 3, 2018" tabindex="-1">3</span><span class="flatpickr-day " aria-label="May 4, 2018" tabindex="-1">4</span><span class="flatpickr-day " aria-label="May 5, 2018" tabindex="-1">5</span><span class="flatpickr-day " aria-label="May 6, 2018" tabindex="-1">6</span><span class="flatpickr-day " aria-label="May 7, 2018" tabindex="-1">7</span><span class="flatpickr-day " aria-label="May 8, 2018" tabindex="-1">8</span><span class="flatpickr-day " aria-label="May 9, 2018" tabindex="-1">9</span><span class="flatpickr-day " aria-label="May 10, 2018" tabindex="-1">10</span><span class="flatpickr-day " aria-label="May 11, 2018" tabindex="-1">11</span><span class="flatpickr-day " aria-label="May 12, 2018" tabindex="-1">12</span><span class="flatpickr-day " aria-label="May 13, 2018" tabindex="-1">13</span><span class="flatpickr-day " aria-label="May 14, 2018" tabindex="-1">14</span><span class="flatpickr-day " aria-label="May 15, 2018" tabindex="-1">15</span><span class="flatpickr-day " aria-label="May 16, 2018" tabindex="-1">16</span><span class="flatpickr-day " aria-label="May 17, 2018" tabindex="-1">17</span><span class="flatpickr-day " aria-label="May 18, 2018" tabindex="-1">18</span><span class="flatpickr-day " aria-label="May 19, 2018" tabindex="-1">19</span><span class="flatpickr-day " aria-label="May 20, 2018" tabindex="-1">20</span><span class="flatpickr-day " aria-label="May 21, 2018" tabindex="-1">21</span><span class="flatpickr-day " aria-label="May 22, 2018" tabindex="-1">22</span><span class="flatpickr-day " aria-label="May 23, 2018" tabindex="-1">23</span><span class="flatpickr-day " aria-label="May 24, 2018" tabindex="-1">24</span><span class="flatpickr-day " aria-label="May 25, 2018" tabindex="-1">25</span><span class="flatpickr-day " aria-label="May 26, 2018" tabindex="-1">26</span><span class="flatpickr-day " aria-label="May 27, 2018" tabindex="-1">27</span><span class="flatpickr-day " aria-label="May 28, 2018" tabindex="-1">28</span><span class="flatpickr-day " aria-label="May 29, 2018" tabindex="-1">29</span><span class="flatpickr-day today" aria-label="May 30, 2018" aria-current="date" tabindex="-1">30</span><span class="flatpickr-day " aria-label="May 31, 2018" tabindex="-1">31</span><span class="flatpickr-day nextMonthDay" aria-label="June 1, 2018" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="June 2, 2018" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="June 3, 2018" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="June 4, 2018" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="June 5, 2018" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="June 6, 2018" tabindex="-1">6</span><span class="flatpickr-day nextMonthDay" aria-label="June 7, 2018" tabindex="-1">7</span><span class="flatpickr-day nextMonthDay" aria-label="June 8, 2018" tabindex="-1">8</span><span class="flatpickr-day nextMonthDay" aria-label="June 9, 2018" tabindex="-1">9</span></div></div></div></div></div>
                                            <!-- /datepicker:range -->
                                        </div>
                                        <!-- /.list-group -->
                                    </div>
                                    <!-- /.dropdown-menu -->
                                </div>
                                <!-- /.dropdown -->
                            </div>
                            <!-- /.card-header-control -->
                        </header>
                        <!-- grid row -->
                        <div class="row no-gutters">
                            <!-- grid column -->
                            <div class="col-lg-8 order-lg-4">
                                <!-- .card-body -->
                                <div class="card-body border-left"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                    <canvas id="canvas-achievement" class="chartjs chartjs-render-monitor" width="600" height="250" style="display: block; width: 600px; height: 250px;"></canvas>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /grid column -->
                            <!-- grid column -->
                            <div class="col-lg-4 order-lg-1">
                                <div class="list-group list-group-flush list-group-bordered">
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Revenue</span>
                                        <strong>$ 17,254</strong>
                                    </div>
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Profit</span>
                                        <strong>$ 15,794</strong>
                                    </div>
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Teams</span>
                                        <strong>8</strong>
                                    </div>
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Projects</span>
                                        <strong>52</strong>
                                    </div>
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Completion Rate</span>
                                        <strong>89%</strong>
                                    </div>
                                    <div class="list-group-item justify-content-between">
                                        <span class="text-muted">Clients</span>
                                        <strong>42</strong>
                                    </div>
                                </div>
                            </div>
                            <!-- /grid column -->
                        </div>
                        <!-- /grid row -->
                    </div>

                    <!-- grid row -->
                    <div class="row">
                        <!-- grid column -->
                        <div class="col-lg-6">
                            <!-- .card -->
                            <section class="card card-fluid">
                                <!-- .card-header -->
                                <header class="card-header border-0">
                                    <!-- .d-flex -->
                                    <div class="d-flex align-items-center">
                                        <span class="mr-auto">Time Spent: Projects</span>
                                        <!-- .card-header-control -->
                                        <div class="card-header-control">
                                            <!-- .dropdown -->
                                            <div class="dropdown">
                                                <button type="button" class="btn btn-sm btn-light" data-toggle="dropdown">
                                                    <i class="fa fa-fw fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-arrow"></div>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a href="#" class="dropdown-item">Actions</a>
                                                    <a href="#" class="dropdown-item">Goes here</a>
                                                    <a href="#" class="dropdown-item">Remove</a>
                                                </div>
                                            </div>
                                            <!-- /.dropdown -->
                                        </div>
                                        <!-- /.card-header-control -->
                                    </div>
                                    <!-- /.d-flex -->
                                </header>
                                <!-- /.card-header -->
                                <!-- .table-responsive -->
                                <div class="table-responsive">
                                    <!-- .table -->
                                    <table class="table">
                                        <!-- thead -->
                                        <thead>
                                        <tr>
                                            <th style="min-width:260px"> Project </th>
                                            <th class="text-center"> Progress </th>
                                            <th class="text-right" style="min-width:142px"> Hours Spent </th>
                                        </tr>
                                        </thead>
                                        <!-- /thead -->
                                        <!-- tbody -->
                                        <tbody>
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#" class="tile bg-purple text-white mr-1">BA</a>
                                                <a href="#">Booking App</a>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span class="badge bg-purple text-white">35%</span>
                                            </td>
                                            <td class="align-middle text-center"> 35:28 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#" class="tile bg-teal text-white mr-1">SB</a>
                                                <a href="#">SVG Icon Bundle</a>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span class="badge bg-teal text-white">32%</span>
                                            </td>
                                            <td class="align-middle text-center"> 20:39 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#" class="tile bg-pink text-white mr-1">SP</a>
                                                <a href="#">Syrena Project</a>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span class="badge bg-pink text-white">93%</span>
                                            </td>
                                            <td class="align-middle text-center"> 35:28 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#" class="tile bg-green text-white mr-1">MG</a>
                                                <a href="#">Mobile App Gex</a>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span class="badge bg-green text-white">100%</span>
                                            </td>
                                            <td class="align-middle text-center"> 35:10 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#" class="tile bg-red text-white mr-1">LB</a>
                                                <a href="#">Landing Page Booster</a>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span class="badge bg-red text-white">100%</span>
                                            </td>
                                            <td class="align-middle text-center"> 21:21 </td>
                                        </tr>
                                        <!-- /tr -->
                                        </tbody>
                                        <!-- /tbody -->
                                    </table>
                                    <!-- /.table -->
                                </div>
                                <!-- /.table-responsive -->
                                <!-- .card-footer -->
                                <footer class="card-footer">
                                    <a href="#" class="card-footer-item">View report
                                        <i class="fa fa-fw fa-angle-right"></i>
                                    </a>
                                </footer>
                                <!-- /.card-footer -->
                            </section>
                        </div>

                        <!-- grid column -->
                        <div class="col-lg-6">
                            <!-- .card -->
                            <section class="card card-fluid">
                                <!-- .card-header -->
                                <header class="card-header border-0">
                                    <!-- .d-flex -->
                                    <div class="d-flex align-items-center">
                                        <span class="mr-auto">Time Spent: Tasks</span>
                                        <!-- .card-header-control -->
                                        <div class="card-header-control">
                                            <!-- .dropdown -->
                                            <div class="dropdown">
                                                <button type="button" class="btn btn-sm btn-light" data-toggle="dropdown">
                                                    <i class="fa fa-fw fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-arrow"></div>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a href="#" class="dropdown-item">Actions</a>
                                                    <a href="#" class="dropdown-item">Goes here</a>
                                                    <a href="#" class="dropdown-item">Remove</a>
                                                </div>
                                            </div>
                                            <!-- /.dropdown -->
                                        </div>
                                        <!-- /.card-header-control -->
                                    </div>
                                    <!-- /.d-flex -->
                                </header>
                                <!-- /.card-header -->
                                <!-- .table-responsive -->
                                <div class="table-responsive">
                                    <!-- .table -->
                                    <table class="table">
                                        <!-- thead -->
                                        <thead>
                                        <tr>
                                            <th style="min-width:260px"> Task </th>
                                            <th> Due Date </th>
                                            <th> Estimate </th>
                                            <th> Worked </th>
                                        </tr>
                                        </thead>
                                        <!-- /thead -->
                                        <!-- tbody -->
                                        <tbody>
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#project" class="tile tile-circle bg-indigo text-white mr-1">SP</a>
                                                <a href="#task">Make lemonade from scratch</a>
                                            </td>
                                            <td class="align-middle"> Apr 02 </td>
                                            <td class="align-middle"> 24:00 </td>
                                            <td class="align-middle"> 16:36 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#project" class="tile tile-circle bg-blue text-white mr-1">LT</a>
                                                <a href="#task">Mix up a pitcher of sangria</a>
                                            </td>
                                            <td class="align-middle"> In 3 days </td>
                                            <td class="align-middle"> 04:00 </td>
                                            <td class="align-middle"> 03:36 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#project" class="tile tile-circle bg-yellow text-white mr-1">OS</a>
                                                <a href="#task">Ride a roller coaster</a>
                                            </td>
                                            <td class="align-middle"> Tomorrow </td>
                                            <td class="align-middle"> 48:00 </td>
                                            <td class="align-middle"> 50:02 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#project" class="tile tile-circle bg-yellow text-white mr-1">OS</a>
                                                <a href="#task">Have a picnic in the park</a>
                                            </td>
                                            <td class="align-middle"> In 2 days </td>
                                            <td class="align-middle"> 12:00 </td>
                                            <td class="align-middle"> 08:36 </td>
                                        </tr>
                                        <!-- /tr -->
                                        <!-- tr -->
                                        <tr>
                                            <td class="align-middle text-truncate">
                                                <a href="#project" class="tile tile-circle bg-pink text-white mr-1">SP</a>
                                                <a href="#task">Dangle your feet off a dock</a>
                                            </td>
                                            <td class="align-middle"> Apr 07 </td>
                                            <td class="align-middle"> 6:00 </td>
                                            <td class="align-middle"> 03:11 </td>
                                        </tr>
                                        <!-- /tr -->
                                        </tbody>
                                        <!-- /tbody -->
                                    </table>
                                    <!-- /.table -->
                                </div>
                                <!-- /.table-responsive -->
                                <!-- .card-footer -->
                                <footer class="card-footer">
                                    <a href="#" class="card-footer-item">View report
                                        <i class="fa fa-fw fa-angle-right"></i>
                                    </a>
                                </footer>
                                <!-- /.card-footer -->
                            </section>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
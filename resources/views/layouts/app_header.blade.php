<header class="app-header">
    <div class="top-bar">
        <div class="top-bar-brand">
            <a href="{{ route("home") }}">
                <img src="{{ asset("themes/looper/assets/images/brand-inverse.png") }}" height="32" alt="">
            </a>
        </div>
        <div class="top-bar-list">
            <div class="top-bar-item px-2 d-md-none d-lg-none d-xl-none">
                <button class="hamburger hamburger-squeeze"
                        type="button"
                        data-toggle="aside"
                        aria-label="Menu"
                        aria-controls="navigation"
                >
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>

            <div class="top-bar-item top-bar-item-full"></div>

            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
                <ul class="header-nav nav">
                    <li class="nav-item dropdown header-nav-dropdown has-notified">
                        <a class="nav-link"
                           href="#"
                           data-toggle="dropdown"
                           aria-haspopup="true"
                           aria-expanded="false"
                        >
                            <span class="oi oi-envelope-open"></span>
                        </a>
                        <div class="dropdown-arrow"></div>
                        <div class="dropdown-menu dropdown-menu-rich dropdown-menu-right">
                            <h6 class="dropdown-header stop-propagation">
                                <span>Messages</span>
                                <a href="#">Mark all as read</a>
                            </h6>
                            <div class="dropdown-scroll has-scrollable">
                                <a href="#" class="dropdown-item unread">
                                    <div class="user-avatar">
                                        <img src="{{ asset("themes/looper/assets/images/avatars/team1.jpg") }}" alt="">
                                    </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Stilearning </p>
                                        <p class="text text-truncate"> Invitation: Joe's Dinner @ Fri Aug 22 </p>
                                        <span class="date">2 hours ago</span>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="user-avatar">
                                        <img src="{{ asset("themes/looper/assets/images/avatars/team3.png") }}" alt=""> </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Openlane </p>
                                        <p class="text text-truncate"> Final reminder: Upgrade to Pro </p>
                                        <span class="date">23 hours ago</span>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="tile tile-circle bg-green"> GZ </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Gogo Zoom </p>
                                        <p class="text text-truncate"> Live healthy with this wireless sensor. </p>
                                        <span class="date">1 day ago</span>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="tile tile-circle bg-teal"> GD </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Gold Dex </p>
                                        <p class="text text-truncate"> Invitation: Design Review @ Mon Jul 7 </p>
                                        <span class="date">1 day ago</span>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="user-avatar">
                                        <img src="{{ asset("themes/looper/assets/images/avatars/team2.png") }}" alt=""> </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Creative Division </p>
                                        <p class="text text-truncate"> Need some feedback on this please </p>
                                        <span class="date">2 days ago</span>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="tile tile-circle bg-pink"> LD </div>
                                    <div class="dropdown-item-body">
                                        <p class="subject"> Lab Drill </p>
                                        <p class="text text-truncate"> Our UX exercise is ready </p>
                                        <span class="date">6 days ago</span>
                                    </div>
                                </a>
                            </div>
                            <a href="#" class="dropdown-footer">All messages
                                <i class="fa fa-fw fa-long-arrow-alt-right"></i>
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown header-nav-dropdown">
                        <a class="nav-link"
                           href="#"
                           data-toggle="dropdown"
                           aria-haspopup="true"
                           aria-expanded="false"
                        >
                            <i class="fas fa-cog"></i>
                        </a>
                        <div class="dropdown-arrow"></div>
                        <div class="dropdown-menu">
                            @can("view", \App\Product::class)
                            <a href="{{ route("products.index") }}" class="dropdown-item ">
                                <i class="fas fa-tree"></i> Products
                            </a>
                            @endcan

                            @can("view", \App\ProductCategory::class)
                            <a href="{{ route("product_categories.index") }}" class="dropdown-item ">
                                <i class="far fa-folder-open"></i> Categories
                            </a>
                            @endcan

                            <div class="dropdown-divider"></div>

                            <a href="{{ route("blocks.index") }}" class="dropdown-item ">
                                <i class="fas fa-th"></i> Blocks
                            </a>

                            <a href="{{ route("groups.index") }}" class="dropdown-item ">
                                <i class="fas fa-hands-helping"></i> Groups
                            </a>

                            <a href="{{ route("group_products.index") }}" class="dropdown-item ">
                                <i class="fas fa-box"></i> Groups product prices
                            </a>

                            <div class="dropdown-divider"></div>

                            @can("view", \App\Block::class)
                            <a href="{{ route("batches.index") }}" class="dropdown-item ">
                                <i class="fas fa-database"></i> Batches
                            </a>
                            @endcan

                            <div class="dropdown-divider"></div>

                            @can("view", \App\User::class)
                            <a href="{{ route("users.index") }}" class="dropdown-item ">
                                <i class="fas fa-users"></i> Users
                            </a>
                            @endcan

                            @can("view", \App\Role::class)
                            <a href="{{ route("roles.index") }}" class="dropdown-item ">
                                <i class="fas fa-user-lock"></i> Roles
                            </a>
                            @endcan
                        </div>
                    </li>
                </ul>
                <div class="dropdown">
                    <button class="btn-account d-none d-md-flex"
                            type="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        <span class="user-avatar">
                            <img src="{{ Avatar::create(auth()->user()->full_name)->toBase64() }}" />
                        </span>
                        <span class="account-summary pr-lg-4 d-none d-lg-block">
                            <span class="account-name">{{ auth()->user()->full_name }}</span>
                            <span class="account-description">
                                {{ auth()->user()->role() }}
                            </span>
                        </span>
                    </button>
                    <div class="dropdown-arrow dropdown-arrow-left"></div>
                    <div class="dropdown-menu">
                        <h6 class="dropdown-header d-none d-md-block d-lg-none">
                            {{ auth()->user()->full_name }}
                        </h6>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user text-muted mr-2"></i> Profile
                        </a>


                        <a href="{{ route("changepassword.index") }}" class="dropdown-item ">
                                <i class="fas fa-lock-open text-muted mr-2"></i> Change Password
                            </a>

                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item"
                           href="{{ route('logout') }}"
                           onclick="event.preventDefault();document.getElementById('logout-form').submit();"
                        >
                            <i class="fas fa-sign-out-alt text-muted mr-2"></i>
                            {{ __('Logout') }}
                            <form id="logout-form"
                                  action="{{ route('logout') }}"
                                  method="POST"
                                  class="d-none"
                            >
                                @csrf
                            </form>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
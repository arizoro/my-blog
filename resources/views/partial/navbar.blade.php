
<nav class="navbar navbar-expand-lg  bg-dark border-bottom border-bottom-dark" data-bs-theme="dark">
        <div class="container ">
        <a class="navbar-brand" href="/">Arie.Blog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ">
            <li class="nav-item ">
                <a class="nav-link {{ ($active == 'Home') ? 'active' : '' }}"  href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ ($active == 'About') ? 'active' : '' }}" href="/about">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ ($active == 'All Posts' ) ? 'active' : '' }}" href="/posts">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ ($active == 'categories' ) ? 'active' : '' }}" href="/categories">Categories</a>
            </li>
            </ul>

            <ul class="navbar-nav ms-auto">
                @auth
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Welcome {{ ucwords(auth()->user()->name) }}
                    </a>
                    <ul class="dropdown-menu">
                    <li>
                        <a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar me-2"></i> My Dashboard</a>
                    </li>
                    <li><hr class="dropdown-divider"></li>
                    <li>
                        <form action="/logout" method="post">
                            @csrf
                            <button type="submit" class="dropdown-item" ><i class="bi bi-arrow-right-square me-2"></i> Sign up</button>
                        </form>
                    </li>
                @else
                <li class="nav-item">
                    <a class="nav-link {{ ($active == 'Login' ) ? 'active' : '' }}" href="/login"> <i class="bi bi-arrow-left-square me-2"></i> Sign in</a>
                </li>
                @endauth
            </ul>
        </div>
        </div>
    </nav>
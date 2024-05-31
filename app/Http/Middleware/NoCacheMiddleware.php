<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


class NoCacheMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // return $next($request);
        $response = $next($request);
    if (Route::currentRouteName() === 'logout' && !Auth::check()) {
      $response->headers->set('Cache-Control', 'nocache, no-store, must-revalidate');
      $response->headers->set('Pragma', 'no-cache');
      $response->headers->set('Expires', '0');
      return redirect('/'); // Redirect to homepage after logout
    }
    return $response;
    }
}

class RedirectAfterLogout
{

    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);
        if (Route::currentRouteName() === 'logout' && !Auth::check()) {
            $response->headers->set('Cache-Control', 'nocache, no-store, must-revalidate');
            $response->headers->set('Pragma', 'no-cache');
            $response->headers->set('Expires', '0');
            return redirect('/'); // Redirect to homepage after logout
        }
        return $response;
    }
}
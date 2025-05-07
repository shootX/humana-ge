<?php

namespace Workdo\ProductService\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class PlanModuleCheck
{
    public function handle(Request $request, Closure $next)
    {
        // აქ შეგიძლია დაამატო ლოგიკა საჭიროებისამებრ
        return $next($request);
    }
} 
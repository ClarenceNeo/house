<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UploadController extends Controller
{
    public function upload(Request $request)
    {
        $disk = Storage::disk('qiniu');
        return response()->json($disk->getUploadToken());
    }
}

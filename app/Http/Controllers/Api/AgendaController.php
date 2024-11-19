<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Agenda;
use App\Models\Setting;

class AgendaController extends Controller
{
    public function index(Request $request)
    {   

        $Agenda = Agenda::latest();
        if ($request->wantsJson()) {
            return response()->json($Agenda->get(), 200);
        } 

        return view('dashboard.agenda.index', [
            'agendas' => Agenda::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Agenda $agenda)
    {
        //
    }


}

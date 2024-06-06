<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use App\Models\Setting;
use Illuminate\Http\Request;

class AgendaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.agenda.index', [
            'agendas' => Agenda::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.agenda.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_agenda' => 'required|max:255',
            'tgl_agenda' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
        ]);

        Agenda::create($validateData);

        return redirect('/dashboard/agenda')->with('success', 'Agenda berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Agenda $agenda)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $agenda = Agenda::findOrFail($id);
        return view('dashboard.agenda.edit',[
            'agenda' => $agenda,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $agenda = Agenda::findOrFail($id);
        $validateData = $request->validate([
            'nama_agenda' => 'required|max:255',
            'tgl_agenda' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
        ]);

        $agenda->update($validateData);
        return redirect('/dashboard/agenda')->with('success', 'Agenda berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $agenda = Agenda::findOrFail($id);

        $agenda->delete();

        return redirect('/dashboard/agenda')->with('success', 'Agenda berhasil dihapus!');
    }
}

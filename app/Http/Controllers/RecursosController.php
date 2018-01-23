<?php

namespace App\Http\Controllers;

use App\Recurso;
use Illuminate\Http\Request;
use App\Http\Requests\StoreRecursosRequest;
use App\Http\Requests\UpdateRecursosRequest;

class RecursosController extends Controller
{

    /**
     * Display a listing of recursos.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $recursos = Recurso::all();

        return view('recursos.index', compact('recursos'));
    }

    /**
     * Show the form for creating new recurso.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        

        return view('recursos.create');
    }

    /**
     * Store a newly created recurso in storage.
     *
     * @param  \App\Http\Requests\StoreRecursosRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRecursosRequest $request)
    {
        Recurso::create($request->all());

        return redirect()->route('recursos.index');
    }

    /**
     * Show the form for editing recurso.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         

        $recurso = Recurso::findOrFail($id);

        return view('recursos.edit', compact('recurso'));
    }

    /**
     * Update recurso in storage.
     *
     * @param  \App\Http\Requests\UpdateRecursosRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateRecursosRequest $request, $id)
    {
        $recurso = Recurso::findOrFail($id);
        $recurso->update($request->all());

        return redirect()->route('recursos.index');
    }

     
    /**
     * Remove recurso from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $recurso = Recurso::findOrFail($id);
        $recurso->delete();

        return redirect()->route('recursos.index');
    }

    /**
     * Delete all selected recursos at once.
     *
     * @param Request $request
     */
    public function massDestroy(Request $request)
    {
        if ($request->input('ids')) {
            $entries = Recurso::whereIn('id', $request->input('ids'))->get();

            foreach ($entries as $entry) {
                $entry->delete();
            }
        }
    }

}

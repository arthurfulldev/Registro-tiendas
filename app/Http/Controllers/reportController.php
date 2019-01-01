<?php

namespace TiendaBNN\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use PDF;

class reportController extends Controller
{
    public function pdf ()
    {
        $stores = DB::table("stores as s")
            ->select(
                's.id as ID ',
                's.logo as LOGO',
                's.name as NOMBRE_TIENDA',
                'a.street as CALLE',
                'a.number as NUMERO',
                'c.name as PAIS',
                'st.name as ENTIDAD',
                't.name as ALCALDIA',
                't.zip as CODIGO_POSTAL'
            )
            ->join('addresses as a',  's.address_id',   'a.id' )
            ->join('countries as c',  'a.country_id',   'c.id' )
            ->join('states as st',    'a.state_id',     'st.id')
            ->join('thownships as t', 'a.thownship_id', 't.id' )
            ->get();

            $pdf = PDF::loadView('pdf.gral-report', compact('stores'));
            $pdf->setPaper('a4', 'landscape');
            return $pdf->download('listado.pdf');

        //return view('pdf.gral-report', compact('stores'));
    }
}

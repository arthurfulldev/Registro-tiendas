<?php

namespace TiendaBNN\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use TiendaBNN\Store;
use TiendaBNN\Country;
use TiendaBNN\State;
use TiendaBNN\Thownship;
use TiendaBNN\Address;
use Mockery\CountValidator\Exception;

class StoreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    
    public function index()
    {
        $stores = $this->queryIndex();
        return response()->json($stores, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $country = Country::create([
            'name' => $request->pais
        ]);
        $state = State::create([
            'name' => $request->entidad
        ]);
        $thownship =Thownship::create([
            'name' => $request->alcaldia,
            'zip'  => $request->cp
        ]);
        $address = Address::create([
            'street' => $request->calle,
            'number' => $request->numero,
            'country_id' => $country->id,
            'state_id' => $state->id,
            'thownship_id' => $thownship->id
        ]);
        $store = Store::create([
            'name' => $request->nombre_tienda,
            'logo' => $request->logo,
            'address_id' => $address->id
        ]);
        
        return response()->json($this->queryShow($store->id), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try{
            $store = $this->queryShow($id);
            return response()->json($store, 200);
        }catch( Exception $e ){
            return response()->json( 'Elemntos no validos', 500 );
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try{
            $store = $this->queryShow($id);
            return response()->json($store, 200);
        }catch( Exception $e ){
            return response()->json( 'Elemntos no validos', 500 );
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $elemento = $this->queryShow($id);
        $store = Store::find($id)->address;

        $country = Country::find($store->country_id);
        $country->name = $request->pais;

        $state = State::find($store->state_id);
        $state->name = $request->entidad;

        $thownship = Thownship::find($store->thownship_id);
        $thownship->name = $request->alcaldia;
        $thownship->zip = $request->cp;

        $address =  Address::find($store->id);
        $address->street = $request->calle;
        $address->number = $request->numero;

        $store = Store::find($id);
        $store->name = $request->nombre_tienda;        
        $store->logo = $request->logo;        

        $country->save();
        $state->save();
        $thownship->save();
        $address->save();
        $store->save();
        
        return response()->json($this->queryShow($id), 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if( Store::find($id)->count() > 0 ){
            try{
                $elemento = $this->queryShow($id);
                $store = Store::find($id)->address;
    
                Store::find($id)->delete();
                Address::find($store->id)->delete();
                Country::find($store->country_id)->delete();
                State::find($store->state_id)->delete();
                Thownship::find($store->thownship_id)->delete();
    
                return response()->json($elemento , 200);
            } catch(Exception $e){
                
            }
        }else{
            return response()->json( 'Este objeto no exite', 400 );
        }
    }

    private function queryIndex()
    {
        $res = DB::table("stores as s")
            ->select( 
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
        return $res;
    }

    private function queryShow ( $id )
    {
        $res = DB::table("stores as s")
        ->select( 
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
        ->where( 's.id', $id )
        ->get();

        return $res;
    }


}

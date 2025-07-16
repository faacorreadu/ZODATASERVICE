CLASS zcl_connections2 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_connections2 IMPLEMENTATION.

   METHOD if_oo_adt_classrun~main.


  DATA lt_create TYPE TABLE FOR CREATE zr_connectionscds.

  lt_create = VALUE #(
    ( %cid         = 'cid1' " 👈 required for RAP to track the instance
      carrierid    = 'LH'
      flightno     = '1234'
      depcity      = 'FRA'
      arrcity      = 'BER'
      flightdate   = sy-datum
      price        = '199.99'
      currencycode = 'EUR' )
  ).

  MODIFY ENTITIES OF zr_connectionscds
    ENTITY Connectionscds
    CREATE FROM lt_create.

  COMMIT ENTITIES.

  out->write( 'Connection created.' ).

  ENDMETHOD.


ENDCLASS.

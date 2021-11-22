class ZCL_REST_SOURCE_SCARR definition
  public
  inheriting from ZCL_REST_RESOURCE_HANDLER_BASE
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IO_HELPER type ref to ZIF_REST_RESOURCE_UTILITIES optional
      !IO_DAO type ref to ZIF_REST_PERSISTENCE optional .

  methods ZIF_REST_RESOURCE_HANDLER_BASE~READ
    redefinition .
protected section.

  data MO_SCARR_DAO type ref to ZIF_REST_PERSISTENCE .
private section.
ENDCLASS.



CLASS ZCL_REST_SOURCE_SCARR IMPLEMENTATION.


  METHOD constructor.
    super->constructor( ).

    IF io_dao IS BOUND.
      mo_scarr_dao = io_dao.
    ELSE.
      mo_scarr_dao = NEW zcl_rest_source_scarr_dao( ).
    ENDIF.

  ENDMETHOD.


  METHOD zif_rest_resource_handler_base~read.


*DATA ls_ent_header type ts_ent_header.
*DATA ls_header type scarr.
*DATA ls_uri_attributes type ts_uri_attributes.
*
*ls_uri_attributes = get_uri_attributes( ir_request ).
*
*select single ........
*
*if sy-subrc <> 0.
*
*endif.
*
*move-corresponding ls_header to ls_ent_header.
*
*mo_helper->serialize_json( iv_Data = ls_ent_header
*                           io_response = io_response

  ENDMETHOD.
ENDCLASS.

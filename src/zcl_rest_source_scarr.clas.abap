class ZCL_REST_SOURCE_SCARR definition
  public
  inheriting from ZCL_REST_RESOURCE_HANDLER_BASE
  create public .

public section.

  methods ZIF_REST_RESOURCE_HANDLER_BASE~READ
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_REST_SOURCE_SCARR IMPLEMENTATION.


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

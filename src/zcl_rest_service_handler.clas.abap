class ZCL_REST_SERVICE_HANDLER definition
  public
  inheriting from CL_REST_HTTP_HANDLER
  create public .

public section.

  methods CONSTRUCTOR .

  methods IF_REST_APPLICATION~GET_ROOT_HANDLER
    redefinition .
protected section.
private section.

  data MT_RESOURCE_METADATA type ZREST_RESOURCE_METADATA_T .
ENDCLASS.



CLASS ZCL_REST_SERVICE_HANDLER IMPLEMENTATION.


  METHOD constructor.
    super->constructor( ).

    mt_resource_metadata = value #( ( template = '/sflight/' ) ).

  ENDMETHOD.


  method IF_REST_APPLICATION~GET_ROOT_HANDLER.
*CALL METHOD SUPER->IF_REST_APPLICATION~GET_ROOT_HANDLER
*  RECEIVING
*    RO_ROOT_HANDLER =
*    .
  endmethod.
ENDCLASS.

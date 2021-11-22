class ZCL_REST_RESOURCE_HANDLER_BASE definition
  public
  abstract
  create public .

public section.

  interfaces ZIF_REST_RESOURCE_HANDLER_BASE .

  methods CONSTRUCTOR
    importing
      !IO_HELPER type ref to ZIF_REST_RESOURCE_UTILITIES optional .
protected section.

  data MO_HELPER type ref to ZIF_REST_RESOURCE_UTILITIES .
private section.
ENDCLASS.



CLASS ZCL_REST_RESOURCE_HANDLER_BASE IMPLEMENTATION.


  METHOD constructor.

    IF io_helper IS BOUND.
      mo_helper = io_helper.
    ELSE.
      mo_helper = NEW zcl_rest_resource_utilities( ).
    ENDIF.

  ENDMETHOD.


  method ZIF_REST_RESOURCE_HANDLER_BASE~CREATE.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_post.
  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~DELETE.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_delete.
  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~GET_URI_ATTRIBUTES.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.
  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~GET_URL_PARAM.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.
  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~PARSE_QUERY_FILTER.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.
  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~PARSE_QUERY_ORDERBY.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.
  endmethod.


  METHOD zif_rest_resource_handler_base~query.

*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.

  ENDMETHOD.


  method ZIF_REST_RESOURCE_HANDLER_BASE~READ.

*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_get.

  endmethod.


  method ZIF_REST_RESOURCE_HANDLER_BASE~UPDATE.
*    RAISE EXCEPTION TYPE cx_rest_resource_exception
*      EXPORTING
*        status_code    = cl_rest_status_code=>gc_client_error_meth_not_allwd
*        request_method = if_rest_message=>gc_method_delete
*        textid         = cx_rest_resource_exception=>method_not_supported.

    RAISE EXCEPTION TYPE zcx_rest_service_exception
      EXPORTING
        textid = zcx_rest_service_exception=>method_not_supported
        method = zif_rest_constants=>gc_method_put.
  endmethod.
ENDCLASS.

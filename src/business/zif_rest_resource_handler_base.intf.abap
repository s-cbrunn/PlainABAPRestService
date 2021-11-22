interface ZIF_REST_RESOURCE_HANDLER_BASE
  public .


  methods QUERY
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
      !IO_CONTEXT type ref to IF_REST_CONTEXT
      !IV_CONDITIONAL type ABAP_BOOL
      !IO_RESPONSE type ref to IF_REST_RESPONSE
    returning
      value(RO_RESPONSE) type ref to IF_REST_RESPONSE .
  methods READ
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
      !IO_CONTEXT type ref to IF_REST_CONTEXT
      !IV_CONDITIONAL type ABAP_BOOL
      !IO_RESPONSE type ref to IF_REST_RESPONSE
    returning
      value(RO_RESPONSE) type ref to IF_REST_RESPONSE .
  methods CREATE
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
      !IO_CONTEXT type ref to IF_REST_CONTEXT
      !IV_CONDITIONAL type ABAP_BOOL
      !IO_RESPONSE type ref to IF_REST_RESPONSE
    returning
      value(RO_RESPONSE) type ref to IF_REST_RESPONSE .
  methods UPDATE
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
      !IO_CONTEXT type ref to IF_REST_CONTEXT
      !IV_CONDITIONAL type ABAP_BOOL
      !IO_RESPONSE type ref to IF_REST_RESPONSE
    returning
      value(RO_RESPONSE) type ref to IF_REST_RESPONSE .
  methods DELETE
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
      !IO_CONTEXT type ref to IF_REST_CONTEXT
      !IV_CONDITIONAL type ABAP_BOOL
      !IO_RESPONSE type ref to IF_REST_RESPONSE
    returning
      value(RO_RESPONSE) type ref to IF_REST_RESPONSE .
  methods PARSE_QUERY_FILTER .
  methods PARSE_QUERY_ORDERBY .
  methods GET_URL_PARAM .
  methods GET_URI_ATTRIBUTES .
endinterface.

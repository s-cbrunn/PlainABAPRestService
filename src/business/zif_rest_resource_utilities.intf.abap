interface ZIF_REST_RESOURCE_UTILITIES
  public .


  methods SERIALIZE_JSON
    importing
      !IV_DATA type DATA
      !IO_RESPONSE type ref to IF_REST_RESPONSE .
  methods DESERIALIZE_JSON
    importing
      !IO_REQUEST type ref to IF_REST_REQUEST
    exporting
      value(EV_DATA) type DATA .
endinterface.

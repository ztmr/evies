-module (evies).
-export ([checkVat/2]).

-include ("checkVatService.hrl").

checkVat (CountryCode, VatNumber) ->
    Res = yaws_soap_lib:call (get_wsdl_path (),
                              "checkVat",
                              [CountryCode, VatNumber]),
    case Res of
      {ok, _, [#'p:checkVatResponse' { valid = Valid,
                                       name = Name,
                                       address = Address }]} ->
          {ok, {Valid, Name, Address}};
      Error ->
          {error, Error}
    end.

get_wsdl_path () ->
    filename:join ([get_priv_dir (), "checkVatService.wsdl"]).

get_priv_dir () ->
    case code:priv_dir (evies) of
        {error, _} -> "priv";
        Dir        -> Dir
    end.


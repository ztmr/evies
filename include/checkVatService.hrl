%% HRL file generated by ERLSOM
%%
%% It is possible to change the name of the record fields.
%%
%% It is possible to add default values, but be aware that these will
%% only be used when *writing* an xml document.

-record('p:checkVat', {anyAttribs, 'countryCode', 'vatNumber'}).
-record('p:checkVatApprox', {anyAttribs, 'countryCode', 'vatNumber', 'traderName', 'traderCompanyType', 'traderStreet', 'traderPostcode', 'traderCity', 'requesterCountryCode', 'requesterVatNumber'}).
-record('p:checkVatApproxResponse', {anyAttribs, 'countryCode', 'vatNumber', 'requestDate', 'valid', 'traderName', 'traderCompanyType', 'traderAddress', 'traderStreet', 'traderPostcode', 'traderCity', 'traderNameMatch', 'traderCompanyTypeMatch', 'traderStreetMatch', 'traderPostcodeMatch', 'traderCityMatch', 'requestIdentifier'}).
-record('p:checkVatResponse', {anyAttribs, 'countryCode', 'vatNumber', 'requestDate', 'valid', 'name', 'address'}).
-record('soap:Body', {anyAttribs, choice}).
-record('soap:Envelope', {anyAttribs, 'Header', 'Body', choice}).
-record('soap:Fault', {anyAttribs, 'faultcode', 'faultstring', 'faultactor', 'detail'}).
-record('soap:Header', {anyAttribs, choice}).
-record('soap:detail', {anyAttribs, choice}).

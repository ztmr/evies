# VAT Information Exchange System API for Erlang

## Usage
```Erlang
evies:checkVat ("CZ", "27604977").
{ok,{true,"Google Czech Republic, s.r.o.",
          [83,116,114,111,117,112,101,197,190,110,105,99,107,195,169,
           104,111,32,51,49,57,49,47,49|...]}}

{ok, {Valid, Name, Address}} = evies:checkVat ("CZ", "40762335").
{ok,{true,"IDEA, spol. s r.o.",
          [65,110,116,97,108,97,32,83,116,97,197,161,107,97,32,49,56,
           53,57,47,51,52,10,80|...]}}
```

## Notes
- is the encoding of `name` and `address` ok?

use v6.*;
use Test;
use P5study;

plan 4;

ok defined(::('&study')),       'is &study imported?';
ok !defined(P5study::{'&study'}), 'is &study externally NOT accessible?';

lives-ok { study },    'do we handle a bare "study"';
lives-ok { study 42 }, 'do we handle a single arg "study"';

# vim: expandtab shiftwidth=4

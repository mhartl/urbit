::                                                      ::  ::
::::  /hoon/helm/hood/lib                               ::  ::
  ::                                                    ::  ::
/?    310                                               ::  version
/-    sole, hall
/+    pill
::                                                      ::  ::
::::                                                    ::  ::
  ::                                                    ::  ::
|%                                                      ::  ::
++  part  {$helm $0 pith}                               ::  helm state
++  pith                                                ::  helm content
  $:  hoc/(map bone session)                            ::  consoles
  ==                                                    ::
++  session                                             ::
  $:  say/sole-share:sole                               ::  console state
      mud/(unit (sole-dialog:sole @ud))                 ::  console dialog
      mass-timer/{way/wire nex/@da tim/@dr}
  ==                                                    ::
::                                                      ::  ::
::::                                                    ::  ::
  ::                                                    ::  ::
++  hood-nuke                                           ::  block/unblock
  $:  him/ship                                          ::
  ==                                                    ::
++  hood-reset                                          ::  reset command
  $~                                                    ::
++  helm-verb                                           ::  reset command
  $~                                                    ::
++  hood-reload                                         ::  reload command
  (list term)                                           ::
--                                                      ::
::                                                      ::  ::
::::                                                    ::  ::
  ::                                                    ::  ::
|:  $:{bowl:mall part}                                  ::  main helm work
=/  ost  0
=+  sez=(~(gut by hoc) ost $:session)
=|  moz=(list card:agent:mall)
|%
++  abet
  [(flop moz) %_(+<+.$ hoc (~(put by hoc) ost sez))]
::
++  emit
  |=  card:agent:mall
  %_(+> moz [+< moz])
::
++  flog
  |=  =flog:dill
  (emit %pass /di %arvo %d %flog flog)
::
++  emil                                              ::  return cards
  |=  (list card:agent:mall)
  ^+  +>
  ?~(+< +> $(+< t.+<, +> (emit i.+<)))
::
++  poke-rekey                                        ::  rotate private keys
  |=  des=@t
  =/  sed=(unit seed:able:jael)
    %+  biff
      (bind (slaw %uw des) cue)
    (soft seed:able:jael)
  =<  abet
  ?~  sed
    ~&  %invalid-private-key
    +>.$
  ?.  =(our who.u.sed)
    ~&  [%wrong-private-key-ship who.u.sed]
    +>.$
  (emit %pass / %arvo %j %rekey lyf.u.sed key.u.sed)
::
++  poke-moon                                        ::  rotate moon keys
  |=  sed=(unit [=ship =udiff:point:able:jael])
  =<  abet
  ?~  sed
    +>.$
  (emit %pass / %arvo %j %moon u.sed)
::
++  poke-nuke                                         ::  initialize
  |=  him/ship  =<  abet
  (emit %pass /helm %arvo %a %nuke him)
::
++  poke-mass
  |=  ~  =<  abet
  (flog %crud %hax-heft ~)
::
++  poke-automass
  |=  recur=@dr
  =.  mass-timer.sez
    [/helm/automass (add now recur) recur]
  abet:(emit %pass way.mass-timer.sez %arvo %b %wait nex.mass-timer.sez)
::
++  poke-cancel-automass
  |=  ~
  abet:(emit %pass way.mass-timer.sez %arvo %b %rest nex.mass-timer.sez)
::
++  poke-bonk
  |=  ~
  ~&  .^((unit @da) %a /(scot %p our)/time/(scot %da now)/(scot %p our))
  %-  %-  slog  :_  ~  .^(tank %b /(scot %p our)/timers/(scot %da now))
  abet:(emit %pass /bonk %arvo %a %bonk ~)
::
++  take-wake-automass
  |=  [way=wire error=(unit tang)]
  ?^  error
    %-  (slog u.error)
    ~&  %helm-wake-automass-fail
    abet
  =.  nex.mass-timer.sez  (add now tim.mass-timer.sez)
  =<  abet
  %-  emil
  :~  [%pass /heft %arvo %d %flog %crud %hax-heft ~]
      [%pass way.mass-timer.sez %arvo %b %wait nex.mass-timer.sez]
  ==
::
++  poke-send-hi
  |=  {her/ship mes/(unit tape)}  =<  abet
  %-  emit
  :*  %pass  /helm/hi/(scot %p her)
      %agent  her  %hood  %poke
      %helm-hi  !>(?~(mes '' (crip u.mes)))
  ==
::
::
++  poke-hi
  |=  mes/@t
  ~|  %poke-hi-fail
  ?:  =(%fail mes)
    ~&  %poke-hi-fail
    !!
  abet:(flog %text "< {<src>}: {(trip mes)}")
::
++  poke-atom
  |=  ato/@
  =+  len=(scow %ud (met 3 ato))
  =+  gum=(scow %p (mug ato))
  =<  abet
  (flog %text "< {<src>}: atom: {len} bytes, mug {gum}")
::
++  coup-hi
  |=  {pax/path cop/(unit tang)}  =<  abet
  ?>  ?=({@t ~} pax)
  (flog %text "hi {(trip i.pax)} {?~(cop "" "un")}successful")
::
++  poke-reload  |=(all/(list term) (poke-reload-desk %home all))
++  poke-reload-desk                                 ::  reload vanes
  |:  $:{syd/desk all/(list term)}  =<  abet
  %-  emil
  %-  flop
  %+  turn  all
  =+  top=`path`/(scot %p our)/[syd]/(scot %da now)
  =/  van/(list {term ~})
    :-  zus=[%zuse ~]
    ~(tap by dir:.^(arch %cy (welp top /sys/vane)))
  |=  nam/@tas
    =.  nam
    ?.  =(1 (met 3 nam))
      nam
    =+  ^-  zaz/(list {p/knot ~})
        (skim van |=({a/term ~} =(nam (end 3 1 a))))
    ?>  ?=({{@ ~} ~} zaz)
    `term`p.i.zaz
  =+  tip=(end 3 1 nam)
  =+  zus==('z' tip)
  =+  way=?:(zus (welp top /sys/[nam]) (welp top /sys/vane/[nam]))
  =+  fil=.^(@ %cx (welp way /hoon))
  [%pass /reload %arvo %d %flog %veer ?:(=('z' tip) %$ tip) way fil]
::  +poke-reset:  send %lyra to initiate kernel upgrade
::
::    And reinstall %zuse and the vanes with %veer.
::    Trigger with |reset.
::
++  poke-reset
  |=  hood-reset
  =<  abet
  %-  emil  %-  flop
  ^-  (list card:agent:mall)
  =/  top=path  /(scot %p our)/home/(scot %da now)/sys
  =/  hun  .^(@ %cx (welp top /hoon/hoon))
  =/  arv  .^(@ %cx (welp top /arvo/hoon))
  :-  [%pass /reset %arvo %d %flog %lyra `@t`hun `@t`arv]
  %+  turn
    (module-ova:pill top)
  |=([=wire =flog:dill] [%pass wire %arvo %d %flog flog])
::
++  poke-verb                                         ::  toggle verbose
  |=  ~  =<  abet
  (flog %verb ~)
::
++  poke-serve
  |=  [=binding:eyre =generator:eyre]  =<  abet
  (emit %pass /helm/serv %arvo %e %serve binding generator)
::
++  take-bound
  |=  [wir=wire success=? binding=binding:eyre]  =<  abet
  (flog %text "bound: {<success>}")
::
++  take
  |=  [=wire =sign-arvo]
  ?+  wire  ~|([%helm-bad-take-wire wire +<.sign-arvo] !!)
    [%automass *]  %+  take-wake-automass  t.wire
                   ?>(?=(%wake +<.sign-arvo) +>.sign-arvo)
    [%serv *]      %+  take-bound  t.wire
                   ?>(?=(%bound +<.sign-arvo) +>.sign-arvo)
  ==
--
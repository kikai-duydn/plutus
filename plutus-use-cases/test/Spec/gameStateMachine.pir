(program
  (let
    (nonrec)
    (datatypebind
      (datatype (tyvardecl Unit (type))  Unit_match (vardecl Unit Unit))
    )
    (let
      (nonrec)
      (datatypebind
        (datatype
          (tyvardecl Bool (type))
          
          Bool_match
          (vardecl True Bool) (vardecl False Bool)
        )
      )
      (let
        (nonrec)
        (datatypebind
          (datatype
            (tyvardecl GameState (type))
            
            GameState_match
            (vardecl Initialised (fun (con bytestring) GameState))
            (vardecl
              Locked (fun (con bytestring) (fun (con bytestring) GameState))
            )
          )
        )
        (let
          (rec)
          (datatypebind
            (datatype
              (tyvardecl List (fun (type) (type)))
              (tyvardecl a (type))
              Nil_match
              (vardecl Nil [List a])
              (vardecl Cons (fun a (fun [List a] [List a])))
            )
          )
          (let
            (nonrec)
            (termbind
              (strict)
              (vardecl
                equalsByteString
                (fun (con bytestring) (fun (con bytestring) Bool))
              )
              (lam
                arg
                (con bytestring)
                (lam
                  arg
                  (con bytestring)
                  [
                    (lam
                      b
                      (all a (type) (fun a (fun a a)))
                      [ [ { b Bool } True ] False ]
                    )
                    [ [ (builtin equalsByteString) arg ] arg ]
                  ]
                )
              )
            )
            (let
              (nonrec)
              (termbind
                (strict)
                (vardecl
                  appendString
                  (fun (con string) (fun (con string) (con string)))
                )
                (builtin append)
              )
              (let
                (nonrec)
                (termbind
                  (strict)
                  (vardecl charToString (fun (con integer) (con string)))
                  (builtin charToString)
                )
                (let
                  (nonrec)
                  (termbind (strict) (vardecl emptyString (con string)) (con ))
                  (let
                    (rec)
                    (termbind
                      (strict)
                      (vardecl
                        toPlutusString (fun [List (con integer)] (con string))
                      )
                      (lam
                        str
                        [List (con integer)]
                        [
                          [
                            [
                              {
                                [ { Nil_match (con integer) } str ]
                                (fun Unit (con string))
                              }
                              (lam thunk Unit emptyString)
                            ]
                            (lam
                              c
                              (con integer)
                              (lam
                                rest
                                [List (con integer)]
                                (lam
                                  thunk
                                  Unit
                                  [
                                    [ appendString [ charToString c ] ]
                                    [ toPlutusString rest ]
                                  ]
                                )
                              )
                            )
                          ]
                          Unit
                        ]
                      )
                    )
                    (let
                      (nonrec)
                      (termbind
                        (strict)
                        (vardecl trace (fun (con string) Unit))
                        (lam
                          arg
                          (con string)
                          [
                            (lam b (all a (type) (fun a a)) Unit)
                            [ (builtin trace) arg ]
                          ]
                        )
                      )
                      (let
                        (nonrec)
                        (termbind
                          (strict)
                          (vardecl
                            fEqGameState_c (fun GameState (fun GameState Bool))
                          )
                          (lam
                            ds
                            GameState
                            (lam
                              ds
                              GameState
                              (let
                                (nonrec)
                                (termbind
                                  (strict)
                                  (vardecl
                                    fail (fun (all a (type) (fun Unit a)) Bool)
                                  )
                                  (lam
                                    ds
                                    (all a (type) (fun Unit a))
                                    [
                                      [
                                        {
                                          [
                                            Unit_match
                                            [
                                              trace
                                              [
                                                toPlutusString
                                                [
                                                  [
                                                    { Cons (con integer) }
                                                    (con 115)
                                                  ]
                                                  [
                                                    [
                                                      { Cons (con integer) }
                                                      (con 116)
                                                    ]
                                                    [
                                                      [
                                                        { Cons (con integer) }
                                                        (con 97)
                                                      ]
                                                      [
                                                        [
                                                          { Cons (con integer) }
                                                          (con 116)
                                                        ]
                                                        [
                                                          [
                                                            {
                                                              Cons (con integer)
                                                            }
                                                            (con 101)
                                                          ]
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                (con integer)
                                                              }
                                                              (con 115)
                                                            ]
                                                            [
                                                              [
                                                                {
                                                                  Cons
                                                                  (con integer)
                                                                }
                                                                (con 32)
                                                              ]
                                                              [
                                                                [
                                                                  {
                                                                    Cons
                                                                    (con integer)
                                                                  }
                                                                  (con 110)
                                                                ]
                                                                [
                                                                  [
                                                                    {
                                                                      Cons
                                                                      (con integer)
                                                                    }
                                                                    (con 111)
                                                                  ]
                                                                  [
                                                                    [
                                                                      {
                                                                        Cons
                                                                        (con integer)
                                                                      }
                                                                      (con 116)
                                                                    ]
                                                                    [
                                                                      [
                                                                        {
                                                                          Cons
                                                                          (con integer)
                                                                        }
                                                                        (con 32)
                                                                      ]
                                                                      [
                                                                        [
                                                                          {
                                                                            Cons
                                                                            (con integer)
                                                                          }
                                                                          (con
                                                                            101
                                                                          )
                                                                        ]
                                                                        [
                                                                          [
                                                                            {
                                                                              Cons
                                                                              (con integer)
                                                                            }
                                                                            (con
                                                                              113
                                                                            )
                                                                          ]
                                                                          [
                                                                            [
                                                                              {
                                                                                Cons
                                                                                (con integer)
                                                                              }
                                                                              (con
                                                                                117
                                                                              )
                                                                            ]
                                                                            [
                                                                              [
                                                                                {
                                                                                  Cons
                                                                                  (con integer)
                                                                                }
                                                                                (con
                                                                                  97
                                                                                )
                                                                              ]
                                                                              [
                                                                                [
                                                                                  {
                                                                                    Cons
                                                                                    (con integer)
                                                                                  }
                                                                                  (con
                                                                                    108
                                                                                  )
                                                                                ]
                                                                                {
                                                                                  Nil
                                                                                  (con integer)
                                                                                }
                                                                              ]
                                                                            ]
                                                                          ]
                                                                        ]
                                                                      ]
                                                                    ]
                                                                  ]
                                                                ]
                                                              ]
                                                            ]
                                                          ]
                                                        ]
                                                      ]
                                                    ]
                                                  ]
                                                ]
                                              ]
                                            ]
                                          ]
                                          (fun Unit Bool)
                                        }
                                        (lam thunk Unit False)
                                      ]
                                      Unit
                                    ]
                                  )
                                )
                                [
                                  [
                                    { [ GameState_match ds ] Bool }
                                    (lam
                                      ds
                                      (con bytestring)
                                      [
                                        [
                                          { [ GameState_match ds ] Bool }
                                          (lam
                                            ds
                                            (con bytestring)
                                            [ [ equalsByteString ds ] ds ]
                                          )
                                        ]
                                        (lam
                                          ipv
                                          (con bytestring)
                                          (lam
                                            ipv
                                            (con bytestring)
                                            [
                                              fail
                                              (abs
                                                e
                                                (type)
                                                (lam thunk Unit (error e))
                                              )
                                            ]
                                          )
                                        )
                                      ]
                                    )
                                  ]
                                  (lam
                                    ds
                                    (con bytestring)
                                    (lam
                                      ds
                                      (con bytestring)
                                      [
                                        [
                                          { [ GameState_match ds ] Bool }
                                          (lam
                                            ipv
                                            (con bytestring)
                                            [
                                              fail
                                              (abs
                                                e
                                                (type)
                                                (lam thunk Unit (error e))
                                              )
                                            ]
                                          )
                                        ]
                                        (lam
                                          ds
                                          (con bytestring)
                                          (lam
                                            ds
                                            (con bytestring)
                                            [
                                              [
                                                [
                                                  {
                                                    [
                                                      Bool_match
                                                      [
                                                        [ equalsByteString ds ]
                                                        ds
                                                      ]
                                                    ]
                                                    (fun Unit Bool)
                                                  }
                                                  (lam
                                                    thunk
                                                    Unit
                                                    [
                                                      [ equalsByteString ds ] ds
                                                    ]
                                                  )
                                                ]
                                                (lam thunk Unit False)
                                              ]
                                              Unit
                                            ]
                                          )
                                        )
                                      ]
                                    )
                                  )
                                ]
                              )
                            )
                          )
                        )
                        (let
                          (rec)
                          (termbind
                            (strict)
                            (vardecl
                              fFunctorNil_cfmap
                              (all a (type) (all b (type) (fun (fun a b) (fun [List a] [List b]))))
                            )
                            (abs
                              a
                              (type)
                              (abs
                                b
                                (type)
                                (lam
                                  f
                                  (fun a b)
                                  (lam
                                    l
                                    [List a]
                                    [
                                      [
                                        [
                                          {
                                            [ { Nil_match a } l ]
                                            (fun Unit [List b])
                                          }
                                          (lam thunk Unit { Nil b })
                                        ]
                                        (lam
                                          x
                                          a
                                          (lam
                                            xs
                                            [List a]
                                            (lam
                                              thunk
                                              Unit
                                              [
                                                [ { Cons b } [ f x ] ]
                                                [
                                                  [
                                                    {
                                                      { fFunctorNil_cfmap a } b
                                                    }
                                                    f
                                                  ]
                                                  xs
                                                ]
                                              ]
                                            )
                                          )
                                        )
                                      ]
                                      Unit
                                    ]
                                  )
                                )
                              )
                            )
                          )
                          (let
                            (nonrec)
                            (termbind
                              (nonstrict)
                              (vardecl swmkValidator [List (con integer)])
                              [
                                [ { Cons (con integer) } (con 83) ]
                                [
                                  [ { Cons (con integer) } (con 116) ]
                                  [
                                    [ { Cons (con integer) } (con 97) ]
                                    [
                                      [ { Cons (con integer) } (con 116) ]
                                      [
                                        [ { Cons (con integer) } (con 101) ]
                                        [
                                          [ { Cons (con integer) } (con 32) ]
                                          [
                                            [ { Cons (con integer) } (con 116) ]
                                            [
                                              [
                                                { Cons (con integer) } (con 114)
                                              ]
                                              [
                                                [
                                                  { Cons (con integer) }
                                                  (con 97)
                                                ]
                                                [
                                                  [
                                                    { Cons (con integer) }
                                                    (con 110)
                                                  ]
                                                  [
                                                    [
                                                      { Cons (con integer) }
                                                      (con 115)
                                                    ]
                                                    [
                                                      [
                                                        { Cons (con integer) }
                                                        (con 105)
                                                      ]
                                                      [
                                                        [
                                                          { Cons (con integer) }
                                                          (con 116)
                                                        ]
                                                        [
                                                          [
                                                            {
                                                              Cons (con integer)
                                                            }
                                                            (con 105)
                                                          ]
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                (con integer)
                                                              }
                                                              (con 111)
                                                            ]
                                                            [
                                                              [
                                                                {
                                                                  Cons
                                                                  (con integer)
                                                                }
                                                                (con 110)
                                                              ]
                                                              [
                                                                [
                                                                  {
                                                                    Cons
                                                                    (con integer)
                                                                  }
                                                                  (con 32)
                                                                ]
                                                                [
                                                                  [
                                                                    {
                                                                      Cons
                                                                      (con integer)
                                                                    }
                                                                    (con 105)
                                                                  ]
                                                                  [
                                                                    [
                                                                      {
                                                                        Cons
                                                                        (con integer)
                                                                      }
                                                                      (con 110)
                                                                    ]
                                                                    [
                                                                      [
                                                                        {
                                                                          Cons
                                                                          (con integer)
                                                                        }
                                                                        (con 118
                                                                        )
                                                                      ]
                                                                      [
                                                                        [
                                                                          {
                                                                            Cons
                                                                            (con integer)
                                                                          }
                                                                          (con
                                                                            97
                                                                          )
                                                                        ]
                                                                        [
                                                                          [
                                                                            {
                                                                              Cons
                                                                              (con integer)
                                                                            }
                                                                            (con
                                                                              108
                                                                            )
                                                                          ]
                                                                          [
                                                                            [
                                                                              {
                                                                                Cons
                                                                                (con integer)
                                                                              }
                                                                              (con
                                                                                105
                                                                              )
                                                                            ]
                                                                            [
                                                                              [
                                                                                {
                                                                                  Cons
                                                                                  (con integer)
                                                                                }
                                                                                (con
                                                                                  100
                                                                                )
                                                                              ]
                                                                              [
                                                                                [
                                                                                  {
                                                                                    Cons
                                                                                    (con integer)
                                                                                  }
                                                                                  (con
                                                                                    32
                                                                                  )
                                                                                ]
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      Cons
                                                                                      (con integer)
                                                                                    }
                                                                                    (con
                                                                                      45
                                                                                    )
                                                                                  ]
                                                                                  [
                                                                                    [
                                                                                      {
                                                                                        Cons
                                                                                        (con integer)
                                                                                      }
                                                                                      (con
                                                                                        32
                                                                                      )
                                                                                    ]
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          Cons
                                                                                          (con integer)
                                                                                        }
                                                                                        (con
                                                                                          39
                                                                                        )
                                                                                      ]
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            Cons
                                                                                            (con integer)
                                                                                          }
                                                                                          (con
                                                                                            101
                                                                                          )
                                                                                        ]
                                                                                        [
                                                                                          [
                                                                                            {
                                                                                              Cons
                                                                                              (con integer)
                                                                                            }
                                                                                            (con
                                                                                              120
                                                                                            )
                                                                                          ]
                                                                                          [
                                                                                            [
                                                                                              {
                                                                                                Cons
                                                                                                (con integer)
                                                                                              }
                                                                                              (con
                                                                                                112
                                                                                              )
                                                                                            ]
                                                                                            [
                                                                                              [
                                                                                                {
                                                                                                  Cons
                                                                                                  (con integer)
                                                                                                }
                                                                                                (con
                                                                                                  101
                                                                                                )
                                                                                              ]
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    Cons
                                                                                                    (con integer)
                                                                                                  }
                                                                                                  (con
                                                                                                    99
                                                                                                  )
                                                                                                ]
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      Cons
                                                                                                      (con integer)
                                                                                                    }
                                                                                                    (con
                                                                                                      116
                                                                                                    )
                                                                                                  ]
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        Cons
                                                                                                        (con integer)
                                                                                                      }
                                                                                                      (con
                                                                                                        101
                                                                                                      )
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          Cons
                                                                                                          (con integer)
                                                                                                        }
                                                                                                        (con
                                                                                                          100
                                                                                                        )
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            Cons
                                                                                                            (con integer)
                                                                                                          }
                                                                                                          (con
                                                                                                            83
                                                                                                          )
                                                                                                        ]
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              Cons
                                                                                                              (con integer)
                                                                                                            }
                                                                                                            (con
                                                                                                              116
                                                                                                            )
                                                                                                          ]
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                Cons
                                                                                                                (con integer)
                                                                                                              }
                                                                                                              (con
                                                                                                                97
                                                                                                              )
                                                                                                            ]
                                                                                                            [
                                                                                                              [
                                                                                                                {
                                                                                                                  Cons
                                                                                                                  (con integer)
                                                                                                                }
                                                                                                                (con
                                                                                                                  116
                                                                                                                )
                                                                                                              ]
                                                                                                              [
                                                                                                                [
                                                                                                                  {
                                                                                                                    Cons
                                                                                                                    (con integer)
                                                                                                                  }
                                                                                                                  (con
                                                                                                                    101
                                                                                                                  )
                                                                                                                ]
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      Cons
                                                                                                                      (con integer)
                                                                                                                    }
                                                                                                                    (con
                                                                                                                      39
                                                                                                                    )
                                                                                                                  ]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        Cons
                                                                                                                        (con integer)
                                                                                                                      }
                                                                                                                      (con
                                                                                                                        32
                                                                                                                      )
                                                                                                                    ]
                                                                                                                    [
                                                                                                                      [
                                                                                                                        {
                                                                                                                          Cons
                                                                                                                          (con integer)
                                                                                                                        }
                                                                                                                        (con
                                                                                                                          110
                                                                                                                        )
                                                                                                                      ]
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            Cons
                                                                                                                            (con integer)
                                                                                                                          }
                                                                                                                          (con
                                                                                                                            111
                                                                                                                          )
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            {
                                                                                                                              Cons
                                                                                                                              (con integer)
                                                                                                                            }
                                                                                                                            (con
                                                                                                                              116
                                                                                                                            )
                                                                                                                          ]
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                Cons
                                                                                                                                (con integer)
                                                                                                                              }
                                                                                                                              (con
                                                                                                                                32
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  Cons
                                                                                                                                  (con integer)
                                                                                                                                }
                                                                                                                                (con
                                                                                                                                  101
                                                                                                                                )
                                                                                                                              ]
                                                                                                                              [
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    Cons
                                                                                                                                    (con integer)
                                                                                                                                  }
                                                                                                                                  (con
                                                                                                                                    113
                                                                                                                                  )
                                                                                                                                ]
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      Cons
                                                                                                                                      (con integer)
                                                                                                                                    }
                                                                                                                                    (con
                                                                                                                                      117
                                                                                                                                    )
                                                                                                                                  ]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        Cons
                                                                                                                                        (con integer)
                                                                                                                                      }
                                                                                                                                      (con
                                                                                                                                        97
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          Cons
                                                                                                                                          (con integer)
                                                                                                                                        }
                                                                                                                                        (con
                                                                                                                                          108
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            Cons
                                                                                                                                            (con integer)
                                                                                                                                          }
                                                                                                                                          (con
                                                                                                                                            32
                                                                                                                                          )
                                                                                                                                        ]
                                                                                                                                        [
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Cons
                                                                                                                                              (con integer)
                                                                                                                                            }
                                                                                                                                            (con
                                                                                                                                              116
                                                                                                                                            )
                                                                                                                                          ]
                                                                                                                                          [
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                Cons
                                                                                                                                                (con integer)
                                                                                                                                              }
                                                                                                                                              (con
                                                                                                                                                111
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                            [
                                                                                                                                              [
                                                                                                                                                {
                                                                                                                                                  Cons
                                                                                                                                                  (con integer)
                                                                                                                                                }
                                                                                                                                                (con
                                                                                                                                                  32
                                                                                                                                                )
                                                                                                                                              ]
                                                                                                                                              [
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    Cons
                                                                                                                                                    (con integer)
                                                                                                                                                  }
                                                                                                                                                  (con
                                                                                                                                                    39
                                                                                                                                                  )
                                                                                                                                                ]
                                                                                                                                                [
                                                                                                                                                  [
                                                                                                                                                    {
                                                                                                                                                      Cons
                                                                                                                                                      (con integer)
                                                                                                                                                    }
                                                                                                                                                    (con
                                                                                                                                                      110
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        Cons
                                                                                                                                                        (con integer)
                                                                                                                                                      }
                                                                                                                                                      (con
                                                                                                                                                        101
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                    [
                                                                                                                                                      [
                                                                                                                                                        {
                                                                                                                                                          Cons
                                                                                                                                                          (con integer)
                                                                                                                                                        }
                                                                                                                                                        (con
                                                                                                                                                          119
                                                                                                                                                        )
                                                                                                                                                      ]
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            Cons
                                                                                                                                                            (con integer)
                                                                                                                                                          }
                                                                                                                                                          (con
                                                                                                                                                            83
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            {
                                                                                                                                                              Cons
                                                                                                                                                              (con integer)
                                                                                                                                                            }
                                                                                                                                                            (con
                                                                                                                                                              116
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                Cons
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              (con
                                                                                                                                                                97
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  Cons
                                                                                                                                                                  (con integer)
                                                                                                                                                                }
                                                                                                                                                                (con
                                                                                                                                                                  116
                                                                                                                                                                )
                                                                                                                                                              ]
                                                                                                                                                              [
                                                                                                                                                                [
                                                                                                                                                                  {
                                                                                                                                                                    Cons
                                                                                                                                                                    (con integer)
                                                                                                                                                                  }
                                                                                                                                                                  (con
                                                                                                                                                                    101
                                                                                                                                                                  )
                                                                                                                                                                ]
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    {
                                                                                                                                                                      Cons
                                                                                                                                                                      (con integer)
                                                                                                                                                                    }
                                                                                                                                                                    (con
                                                                                                                                                                      39
                                                                                                                                                                    )
                                                                                                                                                                  ]
                                                                                                                                                                  {
                                                                                                                                                                    Nil
                                                                                                                                                                    (con integer)
                                                                                                                                                                  }
                                                                                                                                                                ]
                                                                                                                                                              ]
                                                                                                                                                            ]
                                                                                                                                                          ]
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    ]
                                                                                                                                                  ]
                                                                                                                                                ]
                                                                                                                                              ]
                                                                                                                                            ]
                                                                                                                                          ]
                                                                                                                                        ]
                                                                                                                                      ]
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                ]
                                                                                                                              ]
                                                                                                                            ]
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                  ]
                                                                                                                ]
                                                                                                              ]
                                                                                                            ]
                                                                                                          ]
                                                                                                        ]
                                                                                                      ]
                                                                                                    ]
                                                                                                  ]
                                                                                                ]
                                                                                              ]
                                                                                            ]
                                                                                          ]
                                                                                        ]
                                                                                      ]
                                                                                    ]
                                                                                  ]
                                                                                ]
                                                                              ]
                                                                            ]
                                                                          ]
                                                                        ]
                                                                      ]
                                                                    ]
                                                                  ]
                                                                ]
                                                              ]
                                                            ]
                                                          ]
                                                        ]
                                                      ]
                                                    ]
                                                  ]
                                                ]
                                              ]
                                            ]
                                          ]
                                        ]
                                      ]
                                    ]
                                  ]
                                ]
                              ]
                            )
                            (let
                              (nonrec)
                              (termbind
                                (nonstrict)
                                (vardecl swmkValidator (con string))
                                [ toPlutusString swmkValidator ]
                              )
                              (let
                                (nonrec)
                                (termbind
                                  (nonstrict)
                                  (vardecl swmkValidator Unit)
                                  [ trace swmkValidator ]
                                )
                                (let
                                  (nonrec)
                                  (termbind
                                    (nonstrict)
                                    (vardecl swmkValidator [List (con integer)])
                                    [
                                      [ { Cons (con integer) } (con 84) ]
                                      [
                                        [ { Cons (con integer) } (con 104) ]
                                        [
                                          [ { Cons (con integer) } (con 101) ]
                                          [
                                            [ { Cons (con integer) } (con 32) ]
                                            [
                                              [
                                                { Cons (con integer) } (con 100)
                                              ]
                                              [
                                                [
                                                  { Cons (con integer) }
                                                  (con 97)
                                                ]
                                                [
                                                  [
                                                    { Cons (con integer) }
                                                    (con 116)
                                                  ]
                                                  [
                                                    [
                                                      { Cons (con integer) }
                                                      (con 97)
                                                    ]
                                                    [
                                                      [
                                                        { Cons (con integer) }
                                                        (con 32)
                                                      ]
                                                      [
                                                        [
                                                          { Cons (con integer) }
                                                          (con 115)
                                                        ]
                                                        [
                                                          [
                                                            {
                                                              Cons (con integer)
                                                            }
                                                            (con 99)
                                                          ]
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                (con integer)
                                                              }
                                                              (con 114)
                                                            ]
                                                            [
                                                              [
                                                                {
                                                                  Cons
                                                                  (con integer)
                                                                }
                                                                (con 105)
                                                              ]
                                                              [
                                                                [
                                                                  {
                                                                    Cons
                                                                    (con integer)
                                                                  }
                                                                  (con 112)
                                                                ]
                                                                [
                                                                  [
                                                                    {
                                                                      Cons
                                                                      (con integer)
                                                                    }
                                                                    (con 116)
                                                                  ]
                                                                  [
                                                                    [
                                                                      {
                                                                        Cons
                                                                        (con integer)
                                                                      }
                                                                      (con 32)
                                                                    ]
                                                                    [
                                                                      [
                                                                        {
                                                                          Cons
                                                                          (con integer)
                                                                        }
                                                                        (con 109
                                                                        )
                                                                      ]
                                                                      [
                                                                        [
                                                                          {
                                                                            Cons
                                                                            (con integer)
                                                                          }
                                                                          (con
                                                                            117
                                                                          )
                                                                        ]
                                                                        [
                                                                          [
                                                                            {
                                                                              Cons
                                                                              (con integer)
                                                                            }
                                                                            (con
                                                                              115
                                                                            )
                                                                          ]
                                                                          [
                                                                            [
                                                                              {
                                                                                Cons
                                                                                (con integer)
                                                                              }
                                                                              (con
                                                                                116
                                                                              )
                                                                            ]
                                                                            [
                                                                              [
                                                                                {
                                                                                  Cons
                                                                                  (con integer)
                                                                                }
                                                                                (con
                                                                                  32
                                                                                )
                                                                              ]
                                                                              [
                                                                                [
                                                                                  {
                                                                                    Cons
                                                                                    (con integer)
                                                                                  }
                                                                                  (con
                                                                                    98
                                                                                  )
                                                                                ]
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      Cons
                                                                                      (con integer)
                                                                                    }
                                                                                    (con
                                                                                      101
                                                                                    )
                                                                                  ]
                                                                                  [
                                                                                    [
                                                                                      {
                                                                                        Cons
                                                                                        (con integer)
                                                                                      }
                                                                                      (con
                                                                                        32
                                                                                      )
                                                                                    ]
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          Cons
                                                                                          (con integer)
                                                                                        }
                                                                                        (con
                                                                                          97
                                                                                        )
                                                                                      ]
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            Cons
                                                                                            (con integer)
                                                                                          }
                                                                                          (con
                                                                                            116
                                                                                          )
                                                                                        ]
                                                                                        [
                                                                                          [
                                                                                            {
                                                                                              Cons
                                                                                              (con integer)
                                                                                            }
                                                                                            (con
                                                                                              116
                                                                                            )
                                                                                          ]
                                                                                          [
                                                                                            [
                                                                                              {
                                                                                                Cons
                                                                                                (con integer)
                                                                                              }
                                                                                              (con
                                                                                                97
                                                                                              )
                                                                                            ]
                                                                                            [
                                                                                              [
                                                                                                {
                                                                                                  Cons
                                                                                                  (con integer)
                                                                                                }
                                                                                                (con
                                                                                                  99
                                                                                                )
                                                                                              ]
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    Cons
                                                                                                    (con integer)
                                                                                                  }
                                                                                                  (con
                                                                                                    104
                                                                                                  )
                                                                                                ]
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      Cons
                                                                                                      (con integer)
                                                                                                    }
                                                                                                    (con
                                                                                                      101
                                                                                                    )
                                                                                                  ]
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        Cons
                                                                                                        (con integer)
                                                                                                      }
                                                                                                      (con
                                                                                                        100
                                                                                                      )
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          Cons
                                                                                                          (con integer)
                                                                                                        }
                                                                                                        (con
                                                                                                          32
                                                                                                        )
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            Cons
                                                                                                            (con integer)
                                                                                                          }
                                                                                                          (con
                                                                                                            116
                                                                                                          )
                                                                                                        ]
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              Cons
                                                                                                              (con integer)
                                                                                                            }
                                                                                                            (con
                                                                                                              111
                                                                                                            )
                                                                                                          ]
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                Cons
                                                                                                                (con integer)
                                                                                                              }
                                                                                                              (con
                                                                                                                32
                                                                                                              )
                                                                                                            ]
                                                                                                            [
                                                                                                              [
                                                                                                                {
                                                                                                                  Cons
                                                                                                                  (con integer)
                                                                                                                }
                                                                                                                (con
                                                                                                                  116
                                                                                                                )
                                                                                                              ]
                                                                                                              [
                                                                                                                [
                                                                                                                  {
                                                                                                                    Cons
                                                                                                                    (con integer)
                                                                                                                  }
                                                                                                                  (con
                                                                                                                    104
                                                                                                                  )
                                                                                                                ]
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      Cons
                                                                                                                      (con integer)
                                                                                                                    }
                                                                                                                    (con
                                                                                                                      101
                                                                                                                    )
                                                                                                                  ]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        Cons
                                                                                                                        (con integer)
                                                                                                                      }
                                                                                                                      (con
                                                                                                                        32
                                                                                                                      )
                                                                                                                    ]
                                                                                                                    [
                                                                                                                      [
                                                                                                                        {
                                                                                                                          Cons
                                                                                                                          (con integer)
                                                                                                                        }
                                                                                                                        (con
                                                                                                                          111
                                                                                                                        )
                                                                                                                      ]
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            Cons
                                                                                                                            (con integer)
                                                                                                                          }
                                                                                                                          (con
                                                                                                                            110
                                                                                                                          )
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            {
                                                                                                                              Cons
                                                                                                                              (con integer)
                                                                                                                            }
                                                                                                                            (con
                                                                                                                              103
                                                                                                                            )
                                                                                                                          ]
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                Cons
                                                                                                                                (con integer)
                                                                                                                              }
                                                                                                                              (con
                                                                                                                                111
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  Cons
                                                                                                                                  (con integer)
                                                                                                                                }
                                                                                                                                (con
                                                                                                                                  105
                                                                                                                                )
                                                                                                                              ]
                                                                                                                              [
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    Cons
                                                                                                                                    (con integer)
                                                                                                                                  }
                                                                                                                                  (con
                                                                                                                                    110
                                                                                                                                  )
                                                                                                                                ]
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      Cons
                                                                                                                                      (con integer)
                                                                                                                                    }
                                                                                                                                    (con
                                                                                                                                      103
                                                                                                                                    )
                                                                                                                                  ]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        Cons
                                                                                                                                        (con integer)
                                                                                                                                      }
                                                                                                                                      (con
                                                                                                                                        32
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          Cons
                                                                                                                                          (con integer)
                                                                                                                                        }
                                                                                                                                        (con
                                                                                                                                          111
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            Cons
                                                                                                                                            (con integer)
                                                                                                                                          }
                                                                                                                                          (con
                                                                                                                                            117
                                                                                                                                          )
                                                                                                                                        ]
                                                                                                                                        [
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Cons
                                                                                                                                              (con integer)
                                                                                                                                            }
                                                                                                                                            (con
                                                                                                                                              116
                                                                                                                                            )
                                                                                                                                          ]
                                                                                                                                          [
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                Cons
                                                                                                                                                (con integer)
                                                                                                                                              }
                                                                                                                                              (con
                                                                                                                                                112
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                            [
                                                                                                                                              [
                                                                                                                                                {
                                                                                                                                                  Cons
                                                                                                                                                  (con integer)
                                                                                                                                                }
                                                                                                                                                (con
                                                                                                                                                  117
                                                                                                                                                )
                                                                                                                                              ]
                                                                                                                                              [
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    Cons
                                                                                                                                                    (con integer)
                                                                                                                                                  }
                                                                                                                                                  (con
                                                                                                                                                    116
                                                                                                                                                  )
                                                                                                                                                ]
                                                                                                                                                {
                                                                                                                                                  Nil
                                                                                                                                                  (con integer)
                                                                                                                                                }
                                                                                                                                              ]
                                                                                                                                            ]
                                                                                                                                          ]
                                                                                                                                        ]
                                                                                                                                      ]
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                ]
                                                                                                                              ]
                                                                                                                            ]
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                  ]
                                                                                                                ]
                                                                                                              ]
                                                                                                            ]
                                                                                                          ]
                                                                                                        ]
                                                                                                      ]
                                                                                                    ]
                                                                                                  ]
                                                                                                ]
                                                                                              ]
                                                                                            ]
                                                                                          ]
                                                                                        ]
                                                                                      ]
                                                                                    ]
                                                                                  ]
                                                                                ]
                                                                              ]
                                                                            ]
                                                                          ]
                                                                        ]
                                                                      ]
                                                                    ]
                                                                  ]
                                                                ]
                                                              ]
                                                            ]
                                                          ]
                                                        ]
                                                      ]
                                                    ]
                                                  ]
                                                ]
                                              ]
                                            ]
                                          ]
                                        ]
                                      ]
                                    ]
                                  )
                                  (let
                                    (nonrec)
                                    (termbind
                                      (nonstrict)
                                      (vardecl swmkValidator (con string))
                                      [ toPlutusString swmkValidator ]
                                    )
                                    (let
                                      (nonrec)
                                      (termbind
                                        (nonstrict)
                                        (vardecl swmkValidator Unit)
                                        [ trace swmkValidator ]
                                      )
                                      (let
                                        (nonrec)
                                        (termbind
                                          (nonstrict)
                                          (vardecl
                                            swmkValidator [List (con integer)]
                                          )
                                          [
                                            [ { Cons (con integer) } (con 84) ]
                                            [
                                              [
                                                { Cons (con integer) } (con 104)
                                              ]
                                              [
                                                [
                                                  { Cons (con integer) }
                                                  (con 101)
                                                ]
                                                [
                                                  [
                                                    { Cons (con integer) }
                                                    (con 114)
                                                  ]
                                                  [
                                                    [
                                                      { Cons (con integer) }
                                                      (con 101)
                                                    ]
                                                    [
                                                      [
                                                        { Cons (con integer) }
                                                        (con 32)
                                                      ]
                                                      [
                                                        [
                                                          { Cons (con integer) }
                                                          (con 109)
                                                        ]
                                                        [
                                                          [
                                                            {
                                                              Cons (con integer)
                                                            }
                                                            (con 117)
                                                          ]
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                (con integer)
                                                              }
                                                              (con 115)
                                                            ]
                                                            [
                                                              [
                                                                {
                                                                  Cons
                                                                  (con integer)
                                                                }
                                                                (con 116)
                                                              ]
                                                              [
                                                                [
                                                                  {
                                                                    Cons
                                                                    (con integer)
                                                                  }
                                                                  (con 32)
                                                                ]
                                                                [
                                                                  [
                                                                    {
                                                                      Cons
                                                                      (con integer)
                                                                    }
                                                                    (con 98)
                                                                  ]
                                                                  [
                                                                    [
                                                                      {
                                                                        Cons
                                                                        (con integer)
                                                                      }
                                                                      (con 101)
                                                                    ]
                                                                    [
                                                                      [
                                                                        {
                                                                          Cons
                                                                          (con integer)
                                                                        }
                                                                        (con 32)
                                                                      ]
                                                                      [
                                                                        [
                                                                          {
                                                                            Cons
                                                                            (con integer)
                                                                          }
                                                                          (con
                                                                            112
                                                                          )
                                                                        ]
                                                                        [
                                                                          [
                                                                            {
                                                                              Cons
                                                                              (con integer)
                                                                            }
                                                                            (con
                                                                              114
                                                                            )
                                                                          ]
                                                                          [
                                                                            [
                                                                              {
                                                                                Cons
                                                                                (con integer)
                                                                              }
                                                                              (con
                                                                                101
                                                                              )
                                                                            ]
                                                                            [
                                                                              [
                                                                                {
                                                                                  Cons
                                                                                  (con integer)
                                                                                }
                                                                                (con
                                                                                  99
                                                                                )
                                                                              ]
                                                                              [
                                                                                [
                                                                                  {
                                                                                    Cons
                                                                                    (con integer)
                                                                                  }
                                                                                  (con
                                                                                    105
                                                                                  )
                                                                                ]
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      Cons
                                                                                      (con integer)
                                                                                    }
                                                                                    (con
                                                                                      115
                                                                                    )
                                                                                  ]
                                                                                  [
                                                                                    [
                                                                                      {
                                                                                        Cons
                                                                                        (con integer)
                                                                                      }
                                                                                      (con
                                                                                        101
                                                                                      )
                                                                                    ]
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          Cons
                                                                                          (con integer)
                                                                                        }
                                                                                        (con
                                                                                          108
                                                                                        )
                                                                                      ]
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            Cons
                                                                                            (con integer)
                                                                                          }
                                                                                          (con
                                                                                            121
                                                                                          )
                                                                                        ]
                                                                                        [
                                                                                          [
                                                                                            {
                                                                                              Cons
                                                                                              (con integer)
                                                                                            }
                                                                                            (con
                                                                                              32
                                                                                            )
                                                                                          ]
                                                                                          [
                                                                                            [
                                                                                              {
                                                                                                Cons
                                                                                                (con integer)
                                                                                              }
                                                                                              (con
                                                                                                111
                                                                                              )
                                                                                            ]
                                                                                            [
                                                                                              [
                                                                                                {
                                                                                                  Cons
                                                                                                  (con integer)
                                                                                                }
                                                                                                (con
                                                                                                  110
                                                                                                )
                                                                                              ]
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    Cons
                                                                                                    (con integer)
                                                                                                  }
                                                                                                  (con
                                                                                                    101
                                                                                                  )
                                                                                                ]
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      Cons
                                                                                                      (con integer)
                                                                                                    }
                                                                                                    (con
                                                                                                      32
                                                                                                    )
                                                                                                  ]
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        Cons
                                                                                                        (con integer)
                                                                                                      }
                                                                                                      (con
                                                                                                        111
                                                                                                      )
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          Cons
                                                                                                          (con integer)
                                                                                                        }
                                                                                                        (con
                                                                                                          117
                                                                                                        )
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            Cons
                                                                                                            (con integer)
                                                                                                          }
                                                                                                          (con
                                                                                                            116
                                                                                                          )
                                                                                                        ]
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              Cons
                                                                                                              (con integer)
                                                                                                            }
                                                                                                            (con
                                                                                                              112
                                                                                                            )
                                                                                                          ]
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                Cons
                                                                                                                (con integer)
                                                                                                              }
                                                                                                              (con
                                                                                                                117
                                                                                                              )
                                                                                                            ]
                                                                                                            [
                                                                                                              [
                                                                                                                {
                                                                                                                  Cons
                                                                                                                  (con integer)
                                                                                                                }
                                                                                                                (con
                                                                                                                  116
                                                                                                                )
                                                                                                              ]
                                                                                                              [
                                                                                                                [
                                                                                                                  {
                                                                                                                    Cons
                                                                                                                    (con integer)
                                                                                                                  }
                                                                                                                  (con
                                                                                                                    32
                                                                                                                  )
                                                                                                                ]
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      Cons
                                                                                                                      (con integer)
                                                                                                                    }
                                                                                                                    (con
                                                                                                                      119
                                                                                                                    )
                                                                                                                  ]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        Cons
                                                                                                                        (con integer)
                                                                                                                      }
                                                                                                                      (con
                                                                                                                        105
                                                                                                                      )
                                                                                                                    ]
                                                                                                                    [
                                                                                                                      [
                                                                                                                        {
                                                                                                                          Cons
                                                                                                                          (con integer)
                                                                                                                        }
                                                                                                                        (con
                                                                                                                          116
                                                                                                                        )
                                                                                                                      ]
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            Cons
                                                                                                                            (con integer)
                                                                                                                          }
                                                                                                                          (con
                                                                                                                            104
                                                                                                                          )
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            {
                                                                                                                              Cons
                                                                                                                              (con integer)
                                                                                                                            }
                                                                                                                            (con
                                                                                                                              32
                                                                                                                            )
                                                                                                                          ]
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                Cons
                                                                                                                                (con integer)
                                                                                                                              }
                                                                                                                              (con
                                                                                                                                116
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  Cons
                                                                                                                                  (con integer)
                                                                                                                                }
                                                                                                                                (con
                                                                                                                                  104
                                                                                                                                )
                                                                                                                              ]
                                                                                                                              [
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    Cons
                                                                                                                                    (con integer)
                                                                                                                                  }
                                                                                                                                  (con
                                                                                                                                    101
                                                                                                                                  )
                                                                                                                                ]
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      Cons
                                                                                                                                      (con integer)
                                                                                                                                    }
                                                                                                                                    (con
                                                                                                                                      32
                                                                                                                                    )
                                                                                                                                  ]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        Cons
                                                                                                                                        (con integer)
                                                                                                                                      }
                                                                                                                                      (con
                                                                                                                                        115
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          Cons
                                                                                                                                          (con integer)
                                                                                                                                        }
                                                                                                                                        (con
                                                                                                                                          97
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            Cons
                                                                                                                                            (con integer)
                                                                                                                                          }
                                                                                                                                          (con
                                                                                                                                            109
                                                                                                                                          )
                                                                                                                                        ]
                                                                                                                                        [
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Cons
                                                                                                                                              (con integer)
                                                                                                                                            }
                                                                                                                                            (con
                                                                                                                                              101
                                                                                                                                            )
                                                                                                                                          ]
                                                                                                                                          [
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                Cons
                                                                                                                                                (con integer)
                                                                                                                                              }
                                                                                                                                              (con
                                                                                                                                                32
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                            [
                                                                                                                                              [
                                                                                                                                                {
                                                                                                                                                  Cons
                                                                                                                                                  (con integer)
                                                                                                                                                }
                                                                                                                                                (con
                                                                                                                                                  118
                                                                                                                                                )
                                                                                                                                              ]
                                                                                                                                              [
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    Cons
                                                                                                                                                    (con integer)
                                                                                                                                                  }
                                                                                                                                                  (con
                                                                                                                                                    97
                                                                                                                                                  )
                                                                                                                                                ]
                                                                                                                                                [
                                                                                                                                                  [
                                                                                                                                                    {
                                                                                                                                                      Cons
                                                                                                                                                      (con integer)
                                                                                                                                                    }
                                                                                                                                                    (con
                                                                                                                                                      108
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        Cons
                                                                                                                                                        (con integer)
                                                                                                                                                      }
                                                                                                                                                      (con
                                                                                                                                                        105
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                    [
                                                                                                                                                      [
                                                                                                                                                        {
                                                                                                                                                          Cons
                                                                                                                                                          (con integer)
                                                                                                                                                        }
                                                                                                                                                        (con
                                                                                                                                                          100
                                                                                                                                                        )
                                                                                                                                                      ]
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            Cons
                                                                                                                                                            (con integer)
                                                                                                                                                          }
                                                                                                                                                          (con
                                                                                                                                                            97
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            {
                                                                                                                                                              Cons
                                                                                                                                                              (con integer)
                                                                                                                                                            }
                                                                                                                                                            (con
                                                                                                                                                              116
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                Cons
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              (con
                                                                                                                                                                111
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  Cons
                                                                                                                                                                  (con integer)
                                                                                                                                                                }
                                                                                                                                                                (con
                                                                                                                                                                  114
                                                                                                                                                                )
                                                                                                                                                              ]
                                                                                                                                                              [
                                                                                                                                                                [
                                                                                                                                                                  {
                                                                                                                                                                    Cons
                                                                                                                                                                    (con integer)
                                                                                                                                                                  }
                                                                                                                                                                  (con
                                                                                                                                                                    32
                                                                                                                                                                  )
                                                                                                                                                                ]
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    {
                                                                                                                                                                      Cons
                                                                                                                                                                      (con integer)
                                                                                                                                                                    }
                                                                                                                                                                    (con
                                                                                                                                                                      115
                                                                                                                                                                    )
                                                                                                                                                                  ]
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      {
                                                                                                                                                                        Cons
                                                                                                                                                                        (con integer)
                                                                                                                                                                      }
                                                                                                                                                                      (con
                                                                                                                                                                        99
                                                                                                                                                                      )
                                                                                                                                                                    ]
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        {
                                                                                                                                                                          Cons
                                                                                                                                                                          (con integer)
                                                                                                                                                                        }
                                                                                                                                                                        (con
                                                                                                                                                                          114
                                                                                                                                                                        )
                                                                                                                                                                      ]
                                                                                                                                                                      [
                                                                                                                                                                        [
                                                                                                                                                                          {
                                                                                                                                                                            Cons
                                                                                                                                                                            (con integer)
                                                                                                                                                                          }
                                                                                                                                                                          (con
                                                                                                                                                                            105
                                                                                                                                                                          )
                                                                                                                                                                        ]
                                                                                                                                                                        [
                                                                                                                                                                          [
                                                                                                                                                                            {
                                                                                                                                                                              Cons
                                                                                                                                                                              (con integer)
                                                                                                                                                                            }
                                                                                                                                                                            (con
                                                                                                                                                                              112
                                                                                                                                                                            )
                                                                                                                                                                          ]
                                                                                                                                                                          [
                                                                                                                                                                            [
                                                                                                                                                                              {
                                                                                                                                                                                Cons
                                                                                                                                                                                (con integer)
                                                                                                                                                                              }
                                                                                                                                                                              (con
                                                                                                                                                                                116
                                                                                                                                                                              )
                                                                                                                                                                            ]
                                                                                                                                                                            {
                                                                                                                                                                              Nil
                                                                                                                                                                              (con integer)
                                                                                                                                                                            }
                                                                                                                                                                          ]
                                                                                                                                                                        ]
                                                                                                                                                                      ]
                                                                                                                                                                    ]
                                                                                                                                                                  ]
                                                                                                                                                                ]
                                                                                                                                                              ]
                                                                                                                                                            ]
                                                                                                                                                          ]
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    ]
                                                                                                                                                  ]
                                                                                                                                                ]
                                                                                                                                              ]
                                                                                                                                            ]
                                                                                                                                          ]
                                                                                                                                        ]
                                                                                                                                      ]
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                ]
                                                                                                                              ]
                                                                                                                            ]
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                  ]
                                                                                                                ]
                                                                                                              ]
                                                                                                            ]
                                                                                                          ]
                                                                                                        ]
                                                                                                      ]
                                                                                                    ]
                                                                                                  ]
                                                                                                ]
                                                                                              ]
                                                                                            ]
                                                                                          ]
                                                                                        ]
                                                                                      ]
                                                                                    ]
                                                                                  ]
                                                                                ]
                                                                              ]
                                                                            ]
                                                                          ]
                                                                        ]
                                                                      ]
                                                                    ]
                                                                  ]
                                                                ]
                                                              ]
                                                            ]
                                                          ]
                                                        ]
                                                      ]
                                                    ]
                                                  ]
                                                ]
                                              ]
                                            ]
                                          ]
                                        )
                                        (let
                                          (nonrec)
                                          (termbind
                                            (nonstrict)
                                            (vardecl swmkValidator (con string))
                                            [ toPlutusString swmkValidator ]
                                          )
                                          (let
                                            (nonrec)
                                            (termbind
                                              (nonstrict)
                                              (vardecl swmkValidator_j Bool)
                                              [
                                                [
                                                  {
                                                    [
                                                      Unit_match
                                                      [ trace swmkValidator ]
                                                    ]
                                                    (fun Unit Bool)
                                                  }
                                                  (lam thunk Unit False)
                                                ]
                                                Unit
                                              ]
                                            )
                                            (let
                                              (nonrec)
                                              (datatypebind
                                                (datatype
                                                  (tyvardecl
                                                    Tuple2
                                                    (fun (type) (fun (type) (type)))
                                                  )
                                                  (tyvardecl a (type))
                                                  (tyvardecl b (type))
                                                  Tuple2_match
                                                  (vardecl
                                                    Tuple2
                                                    (fun a (fun b [[Tuple2 a] b]))
                                                  )
                                                )
                                              )
                                              (let
                                                (nonrec)
                                                (datatypebind
                                                  (datatype
                                                    (tyvardecl
                                                      Maybe (fun (type) (type))
                                                    )
                                                    (tyvardecl a (type))
                                                    Maybe_match
                                                    (vardecl
                                                      Just (fun a [Maybe a])
                                                    )
                                                    (vardecl Nothing [Maybe a])
                                                  )
                                                )
                                                (let
                                                  (nonrec)
                                                  (datatypebind
                                                    (datatype
                                                      (tyvardecl
                                                        PendingTxOutType (type)
                                                      )
                                                      
                                                      PendingTxOutType_match
                                                      (vardecl
                                                        DataTxOut
                                                        PendingTxOutType
                                                      )
                                                      (vardecl
                                                        PubKeyTxOut
                                                        (fun (con bytestring) PendingTxOutType)
                                                      )
                                                    )
                                                  )
                                                  (let
                                                    (nonrec)
                                                    (datatypebind
                                                      (datatype
                                                        (tyvardecl
                                                          PendingTxOut (type)
                                                        )
                                                        
                                                        PendingTxOut_match
                                                        (vardecl
                                                          PendingTxOut
                                                          (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] (fun PendingTxOutType PendingTxOut)))
                                                        )
                                                      )
                                                    )
                                                    (let
                                                      (nonrec)
                                                      (termbind
                                                        (strict)
                                                        (vardecl
                                                          addInteger
                                                          (fun (con integer) (fun (con integer) (con integer)))
                                                        )
                                                        (builtin addInteger)
                                                      )
                                                      (let
                                                        (nonrec)
                                                        (termbind
                                                          (strict)
                                                          (vardecl
                                                            findIndices
                                                            (all a (type) (fun (fun a Bool) (fun [List a] [List (con integer)])))
                                                          )
                                                          (abs
                                                            a
                                                            (type)
                                                            (lam
                                                              p
                                                              (fun a Bool)
                                                              (let
                                                                (rec)
                                                                (termbind
                                                                  (strict)
                                                                  (vardecl
                                                                    go
                                                                    (fun (con integer) (fun [List a] [List (con integer)]))
                                                                  )
                                                                  (lam
                                                                    i
                                                                    (con integer)
                                                                    (lam
                                                                      l
                                                                      [List a]
                                                                      [
                                                                        [
                                                                          [
                                                                            {
                                                                              [
                                                                                {
                                                                                  Nil_match
                                                                                  a
                                                                                }
                                                                                l
                                                                              ]
                                                                              (fun Unit [List (con integer)])
                                                                            }
                                                                            (lam
                                                                              thunk
                                                                              Unit
                                                                              {
                                                                                Nil
                                                                                (con integer)
                                                                              }
                                                                            )
                                                                          ]
                                                                          (lam
                                                                            x
                                                                            a
                                                                            (lam
                                                                              xs
                                                                              [List a]
                                                                              (lam
                                                                                thunk
                                                                                Unit
                                                                                (let
                                                                                  (nonrec
                                                                                  )
                                                                                  (termbind
                                                                                    (nonstrict
                                                                                    )
                                                                                    (vardecl
                                                                                      indices
                                                                                      [List (con integer)]
                                                                                    )
                                                                                    [
                                                                                      [
                                                                                        go
                                                                                        [
                                                                                          [
                                                                                            addInteger
                                                                                            i
                                                                                          ]
                                                                                          (con
                                                                                            1
                                                                                          )
                                                                                        ]
                                                                                      ]
                                                                                      xs
                                                                                    ]
                                                                                  )
                                                                                  [
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            Bool_match
                                                                                            [
                                                                                              p
                                                                                              x
                                                                                            ]
                                                                                          ]
                                                                                          (fun Unit [List (con integer)])
                                                                                        }
                                                                                        (lam
                                                                                          thunk
                                                                                          Unit
                                                                                          [
                                                                                            [
                                                                                              {
                                                                                                Cons
                                                                                                (con integer)
                                                                                              }
                                                                                              i
                                                                                            ]
                                                                                            indices
                                                                                          ]
                                                                                        )
                                                                                      ]
                                                                                      (lam
                                                                                        thunk
                                                                                        Unit
                                                                                        indices
                                                                                      )
                                                                                    ]
                                                                                    Unit
                                                                                  ]
                                                                                )
                                                                              )
                                                                            )
                                                                          )
                                                                        ]
                                                                        Unit
                                                                      ]
                                                                    )
                                                                  )
                                                                )
                                                                [ go (con 0) ]
                                                              )
                                                            )
                                                          )
                                                        )
                                                        (let
                                                          (nonrec)
                                                          (termbind
                                                            (strict)
                                                            (vardecl
                                                              wfindContinuingOutputs
                                                              (fun [List PendingTxOut] (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] [List (con integer)]))
                                                            )
                                                            (lam
                                                              ww
                                                              [List PendingTxOut]
                                                              (lam
                                                                ww
                                                                [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                [
                                                                  [
                                                                    [
                                                                      {
                                                                        [
                                                                          {
                                                                            Maybe_match
                                                                            [[Tuple2 (con bytestring)] (con bytestring)]
                                                                          }
                                                                          ww
                                                                        ]
                                                                        (fun Unit [List (con integer)])
                                                                      }
                                                                      (lam
                                                                        ds
                                                                        [[Tuple2 (con bytestring)] (con bytestring)]
                                                                        (lam
                                                                          thunk
                                                                          Unit
                                                                          [
                                                                            {
                                                                              [
                                                                                {
                                                                                  {
                                                                                    Tuple2_match
                                                                                    (con bytestring)
                                                                                  }
                                                                                  (con bytestring)
                                                                                }
                                                                                ds
                                                                              ]
                                                                              [List (con integer)]
                                                                            }
                                                                            (lam
                                                                              inpHsh
                                                                              (con bytestring)
                                                                              (lam
                                                                                ds
                                                                                (con bytestring)
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      findIndices
                                                                                      PendingTxOut
                                                                                    }
                                                                                    (lam
                                                                                      ds
                                                                                      PendingTxOut
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            PendingTxOut_match
                                                                                            ds
                                                                                          ]
                                                                                          Bool
                                                                                        }
                                                                                        (lam
                                                                                          ds
                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                          (lam
                                                                                            ds
                                                                                            [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                            (lam
                                                                                              ds
                                                                                              PendingTxOutType
                                                                                              [
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      [
                                                                                                        {
                                                                                                          Maybe_match
                                                                                                          [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                        }
                                                                                                        ds
                                                                                                      ]
                                                                                                      (fun Unit Bool)
                                                                                                    }
                                                                                                    (lam
                                                                                                      ds
                                                                                                      [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                      (lam
                                                                                                        thunk
                                                                                                        Unit
                                                                                                        [
                                                                                                          {
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  Tuple2_match
                                                                                                                  (con bytestring)
                                                                                                                }
                                                                                                                (con bytestring)
                                                                                                              }
                                                                                                              ds
                                                                                                            ]
                                                                                                            Bool
                                                                                                          }
                                                                                                          (lam
                                                                                                            outHsh
                                                                                                            (con bytestring)
                                                                                                            (lam
                                                                                                              ds
                                                                                                              (con bytestring)
                                                                                                              [
                                                                                                                [
                                                                                                                  equalsByteString
                                                                                                                  outHsh
                                                                                                                ]
                                                                                                                inpHsh
                                                                                                              ]
                                                                                                            )
                                                                                                          )
                                                                                                        ]
                                                                                                      )
                                                                                                    )
                                                                                                  ]
                                                                                                  (lam
                                                                                                    thunk
                                                                                                    Unit
                                                                                                    False
                                                                                                  )
                                                                                                ]
                                                                                                Unit
                                                                                              ]
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                    )
                                                                                  ]
                                                                                  ww
                                                                                ]
                                                                              )
                                                                            )
                                                                          ]
                                                                        )
                                                                      )
                                                                    ]
                                                                    (lam
                                                                      thunk
                                                                      Unit
                                                                      {
                                                                        Nil
                                                                        (con integer)
                                                                      }
                                                                    )
                                                                  ]
                                                                  Unit
                                                                ]
                                                              )
                                                            )
                                                          )
                                                          (let
                                                            (nonrec)
                                                            (termbind
                                                              (strict)
                                                              (vardecl
                                                                wfindDataScriptOutputs
                                                                (fun (con bytestring) (fun [List PendingTxOut] [List (con integer)]))
                                                              )
                                                              (lam
                                                                w
                                                                (con bytestring)
                                                                (lam
                                                                  ww
                                                                  [List PendingTxOut]
                                                                  [
                                                                    [
                                                                      {
                                                                        findIndices
                                                                        PendingTxOut
                                                                      }
                                                                      (lam
                                                                        ds
                                                                        PendingTxOut
                                                                        [
                                                                          {
                                                                            [
                                                                              PendingTxOut_match
                                                                              ds
                                                                            ]
                                                                            Bool
                                                                          }
                                                                          (lam
                                                                            ds
                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                            (lam
                                                                              ds
                                                                              [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                              (lam
                                                                                ds
                                                                                PendingTxOutType
                                                                                [
                                                                                  [
                                                                                    [
                                                                                      {
                                                                                        [
                                                                                          {
                                                                                            Maybe_match
                                                                                            [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                          }
                                                                                          ds
                                                                                        ]
                                                                                        (fun Unit Bool)
                                                                                      }
                                                                                      (lam
                                                                                        ds
                                                                                        [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                        (lam
                                                                                          thunk
                                                                                          Unit
                                                                                          [
                                                                                            {
                                                                                              [
                                                                                                {
                                                                                                  {
                                                                                                    Tuple2_match
                                                                                                    (con bytestring)
                                                                                                  }
                                                                                                  (con bytestring)
                                                                                                }
                                                                                                ds
                                                                                              ]
                                                                                              Bool
                                                                                            }
                                                                                            (lam
                                                                                              ds
                                                                                              (con bytestring)
                                                                                              (lam
                                                                                                dsh
                                                                                                (con bytestring)
                                                                                                [
                                                                                                  [
                                                                                                    equalsByteString
                                                                                                    dsh
                                                                                                  ]
                                                                                                  w
                                                                                                ]
                                                                                              )
                                                                                            )
                                                                                          ]
                                                                                        )
                                                                                      )
                                                                                    ]
                                                                                    (lam
                                                                                      thunk
                                                                                      Unit
                                                                                      False
                                                                                    )
                                                                                  ]
                                                                                  Unit
                                                                                ]
                                                                              )
                                                                            )
                                                                          )
                                                                        ]
                                                                      )
                                                                    ]
                                                                    ww
                                                                  ]
                                                                )
                                                              )
                                                            )
                                                            (let
                                                              (rec)
                                                              (termbind
                                                                (strict)
                                                                (vardecl
                                                                  elem
                                                                  (all a (type) (fun [(lam a (type) (fun a (fun a Bool))) a] (fun a (fun [List a] Bool))))
                                                                )
                                                                (abs
                                                                  a
                                                                  (type)
                                                                  (lam
                                                                    dEq
                                                                    [(lam a (type) (fun a (fun a Bool))) a]
                                                                    (lam
                                                                      needle
                                                                      a
                                                                      (lam
                                                                        haystack
                                                                        [List a]
                                                                        [
                                                                          [
                                                                            [
                                                                              {
                                                                                [
                                                                                  {
                                                                                    Nil_match
                                                                                    a
                                                                                  }
                                                                                  haystack
                                                                                ]
                                                                                (fun Unit Bool)
                                                                              }
                                                                              (lam
                                                                                thunk
                                                                                Unit
                                                                                False
                                                                              )
                                                                            ]
                                                                            (lam
                                                                              x
                                                                              a
                                                                              (lam
                                                                                xs
                                                                                [List a]
                                                                                (lam
                                                                                  thunk
                                                                                  Unit
                                                                                  [
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            Bool_match
                                                                                            [
                                                                                              [
                                                                                                dEq
                                                                                                x
                                                                                              ]
                                                                                              needle
                                                                                            ]
                                                                                          ]
                                                                                          (fun Unit Bool)
                                                                                        }
                                                                                        (lam
                                                                                          thunk
                                                                                          Unit
                                                                                          True
                                                                                        )
                                                                                      ]
                                                                                      (lam
                                                                                        thunk
                                                                                        Unit
                                                                                        [
                                                                                          [
                                                                                            [
                                                                                              {
                                                                                                elem
                                                                                                a
                                                                                              }
                                                                                              dEq
                                                                                            ]
                                                                                            needle
                                                                                          ]
                                                                                          xs
                                                                                        ]
                                                                                      )
                                                                                    ]
                                                                                    Unit
                                                                                  ]
                                                                                )
                                                                              )
                                                                            )
                                                                          ]
                                                                          Unit
                                                                        ]
                                                                      )
                                                                    )
                                                                  )
                                                                )
                                                              )
                                                              (let
                                                                (nonrec)
                                                                (termbind
                                                                  (strict)
                                                                  (vardecl
                                                                    equalsInteger
                                                                    (fun (con integer) (fun (con integer) Bool))
                                                                  )
                                                                  (lam
                                                                    arg
                                                                    (con integer)
                                                                    (lam
                                                                      arg
                                                                      (con integer)
                                                                      [
                                                                        (lam
                                                                          b
                                                                          (all a (type) (fun a (fun a a)))
                                                                          [
                                                                            [
                                                                              {
                                                                                b
                                                                                Bool
                                                                              }
                                                                              True
                                                                            ]
                                                                            False
                                                                          ]
                                                                        )
                                                                        [
                                                                          [
                                                                            (builtin
                                                                              equalsInteger
                                                                            )
                                                                            arg
                                                                          ]
                                                                          arg
                                                                        ]
                                                                      ]
                                                                    )
                                                                  )
                                                                )
                                                                (let
                                                                  (nonrec)
                                                                  (termbind
                                                                    (strict)
                                                                    (vardecl
                                                                      swmkValidator
                                                                      (all i (type) (fun [[(lam s (type) (lam i (type) (fun s (fun i s)))) GameState] i] (fun GameState (fun i (fun GameState (fun (con bytestring) (fun [List PendingTxOut] (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] Bool))))))))
                                                                    )
                                                                    (abs
                                                                      i
                                                                      (type)
                                                                      (lam
                                                                        w
                                                                        [[(lam s (type) (lam i (type) (fun s (fun i s)))) GameState] i]
                                                                        (lam
                                                                          w
                                                                          GameState
                                                                          (lam
                                                                            ww
                                                                            i
                                                                            (lam
                                                                              ww
                                                                              GameState
                                                                              (lam
                                                                                ww
                                                                                (con bytestring)
                                                                                (lam
                                                                                  ww
                                                                                  [List PendingTxOut]
                                                                                  (lam
                                                                                    ww
                                                                                    [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                    [
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            [
                                                                                              {
                                                                                                Nil_match
                                                                                                (con integer)
                                                                                              }
                                                                                              [
                                                                                                [
                                                                                                  wfindContinuingOutputs
                                                                                                  ww
                                                                                                ]
                                                                                                ww
                                                                                              ]
                                                                                            ]
                                                                                            (fun Unit Bool)
                                                                                          }
                                                                                          (lam
                                                                                            thunk
                                                                                            Unit
                                                                                            swmkValidator_j
                                                                                          )
                                                                                        ]
                                                                                        (lam
                                                                                          x
                                                                                          (con integer)
                                                                                          (lam
                                                                                            ds
                                                                                            [List (con integer)]
                                                                                            (lam
                                                                                              thunk
                                                                                              Unit
                                                                                              [
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      [
                                                                                                        {
                                                                                                          Nil_match
                                                                                                          (con integer)
                                                                                                        }
                                                                                                        ds
                                                                                                      ]
                                                                                                      (fun Unit Bool)
                                                                                                    }
                                                                                                    (lam
                                                                                                      thunk
                                                                                                      Unit
                                                                                                      [
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              [
                                                                                                                Bool_match
                                                                                                                [
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        elem
                                                                                                                        (con integer)
                                                                                                                      }
                                                                                                                      equalsInteger
                                                                                                                    ]
                                                                                                                    x
                                                                                                                  ]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      wfindDataScriptOutputs
                                                                                                                      ww
                                                                                                                    ]
                                                                                                                    ww
                                                                                                                  ]
                                                                                                                ]
                                                                                                              ]
                                                                                                              (fun Unit Bool)
                                                                                                            }
                                                                                                            (lam
                                                                                                              thunk
                                                                                                              Unit
                                                                                                              [
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      [
                                                                                                                        Bool_match
                                                                                                                        [
                                                                                                                          [
                                                                                                                            fEqGameState_c
                                                                                                                            [
                                                                                                                              [
                                                                                                                                w
                                                                                                                                w
                                                                                                                              ]
                                                                                                                              ww
                                                                                                                            ]
                                                                                                                          ]
                                                                                                                          ww
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                      (fun Unit Bool)
                                                                                                                    }
                                                                                                                    (lam
                                                                                                                      thunk
                                                                                                                      Unit
                                                                                                                      True
                                                                                                                    )
                                                                                                                  ]
                                                                                                                  (lam
                                                                                                                    thunk
                                                                                                                    Unit
                                                                                                                    [
                                                                                                                      [
                                                                                                                        {
                                                                                                                          [
                                                                                                                            Unit_match
                                                                                                                            swmkValidator
                                                                                                                          ]
                                                                                                                          (fun Unit Bool)
                                                                                                                        }
                                                                                                                        (lam
                                                                                                                          thunk
                                                                                                                          Unit
                                                                                                                          False
                                                                                                                        )
                                                                                                                      ]
                                                                                                                      Unit
                                                                                                                    ]
                                                                                                                  )
                                                                                                                ]
                                                                                                                Unit
                                                                                                              ]
                                                                                                            )
                                                                                                          ]
                                                                                                          (lam
                                                                                                            thunk
                                                                                                            Unit
                                                                                                            [
                                                                                                              [
                                                                                                                {
                                                                                                                  [
                                                                                                                    Unit_match
                                                                                                                    swmkValidator
                                                                                                                  ]
                                                                                                                  (fun Unit Bool)
                                                                                                                }
                                                                                                                (lam
                                                                                                                  thunk
                                                                                                                  Unit
                                                                                                                  False
                                                                                                                )
                                                                                                              ]
                                                                                                              Unit
                                                                                                            ]
                                                                                                          )
                                                                                                        ]
                                                                                                        Unit
                                                                                                      ]
                                                                                                    )
                                                                                                  ]
                                                                                                  (lam
                                                                                                    ipv
                                                                                                    (con integer)
                                                                                                    (lam
                                                                                                      ipv
                                                                                                      [List (con integer)]
                                                                                                      (lam
                                                                                                        thunk
                                                                                                        Unit
                                                                                                        swmkValidator_j
                                                                                                      )
                                                                                                    )
                                                                                                  )
                                                                                                ]
                                                                                                Unit
                                                                                              ]
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                      Unit
                                                                                    ]
                                                                                  )
                                                                                )
                                                                              )
                                                                            )
                                                                          )
                                                                        )
                                                                      )
                                                                    )
                                                                  )
                                                                  (let
                                                                    (nonrec)
                                                                    (termbind
                                                                      (strict)
                                                                      (vardecl
                                                                        error
                                                                        (all a (type) (fun Unit a))
                                                                      )
                                                                      (abs
                                                                        e
                                                                        (type)
                                                                        (lam
                                                                          thunk
                                                                          Unit
                                                                          (error
                                                                            e
                                                                          )
                                                                        )
                                                                      )
                                                                    )
                                                                    (let
                                                                      (nonrec)
                                                                      (termbind
                                                                        (strict)
                                                                        (vardecl
                                                                          wownCurrencySymbol
                                                                          (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] (con bytestring))
                                                                        )
                                                                        (lam
                                                                          ww
                                                                          [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                          [
                                                                            [
                                                                              [
                                                                                {
                                                                                  [
                                                                                    {
                                                                                      Maybe_match
                                                                                      [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                    }
                                                                                    ww
                                                                                  ]
                                                                                  (fun Unit (con bytestring))
                                                                                }
                                                                                (lam
                                                                                  h
                                                                                  [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                  (lam
                                                                                    thunk
                                                                                    Unit
                                                                                    [
                                                                                      {
                                                                                        [
                                                                                          {
                                                                                            {
                                                                                              Tuple2_match
                                                                                              (con bytestring)
                                                                                            }
                                                                                            (con bytestring)
                                                                                          }
                                                                                          h
                                                                                        ]
                                                                                        (con bytestring)
                                                                                      }
                                                                                      (lam
                                                                                        a
                                                                                        (con bytestring)
                                                                                        (lam
                                                                                          ds
                                                                                          (con bytestring)
                                                                                          a
                                                                                        )
                                                                                      )
                                                                                    ]
                                                                                  )
                                                                                )
                                                                              ]
                                                                              (lam
                                                                                thunk
                                                                                Unit
                                                                                [
                                                                                  {
                                                                                    [
                                                                                      {
                                                                                        {
                                                                                          Tuple2_match
                                                                                          (con bytestring)
                                                                                        }
                                                                                        (con bytestring)
                                                                                      }
                                                                                      [
                                                                                        {
                                                                                          error
                                                                                          [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                        }
                                                                                        Unit
                                                                                      ]
                                                                                    ]
                                                                                    (con bytestring)
                                                                                  }
                                                                                  (lam
                                                                                    a
                                                                                    (con bytestring)
                                                                                    (lam
                                                                                      ds
                                                                                      (con bytestring)
                                                                                      a
                                                                                    )
                                                                                  )
                                                                                ]
                                                                              )
                                                                            ]
                                                                            Unit
                                                                          ]
                                                                        )
                                                                      )
                                                                      (let
                                                                        (nonrec)
                                                                        (datatypebind
                                                                          (datatype
                                                                            (tyvardecl
                                                                              PendingTxOutRef
                                                                              (type)
                                                                            )
                                                                            
                                                                            PendingTxOutRef_match
                                                                            (vardecl
                                                                              PendingTxOutRef
                                                                              (fun (con bytestring) (fun (con integer) PendingTxOutRef))
                                                                            )
                                                                          )
                                                                        )
                                                                        (let
                                                                          (nonrec
                                                                          )
                                                                          (datatypebind
                                                                            (datatype
                                                                              (tyvardecl
                                                                                PendingTxIn
                                                                                (type)
                                                                              )
                                                                              
                                                                              PendingTxIn_match
                                                                              (vardecl
                                                                                PendingTxIn
                                                                                (fun PendingTxOutRef (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] PendingTxIn)))
                                                                              )
                                                                            )
                                                                          )
                                                                          (let
                                                                            (rec
                                                                            )
                                                                            (termbind
                                                                              (strict
                                                                              )
                                                                              (vardecl
                                                                                map
                                                                                (all a (type) (all b (type) (fun (fun a b) (fun [List a] [List b]))))
                                                                              )
                                                                              (abs
                                                                                a
                                                                                (type)
                                                                                (abs
                                                                                  b
                                                                                  (type)
                                                                                  (lam
                                                                                    f
                                                                                    (fun a b)
                                                                                    (lam
                                                                                      l
                                                                                      [List a]
                                                                                      [
                                                                                        [
                                                                                          [
                                                                                            {
                                                                                              [
                                                                                                {
                                                                                                  Nil_match
                                                                                                  a
                                                                                                }
                                                                                                l
                                                                                              ]
                                                                                              (fun Unit [List b])
                                                                                            }
                                                                                            (lam
                                                                                              thunk
                                                                                              Unit
                                                                                              {
                                                                                                Nil
                                                                                                b
                                                                                              }
                                                                                            )
                                                                                          ]
                                                                                          (lam
                                                                                            x
                                                                                            a
                                                                                            (lam
                                                                                              xs
                                                                                              [List a]
                                                                                              (lam
                                                                                                thunk
                                                                                                Unit
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      Cons
                                                                                                      b
                                                                                                    }
                                                                                                    [
                                                                                                      f
                                                                                                      x
                                                                                                    ]
                                                                                                  ]
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        {
                                                                                                          map
                                                                                                          a
                                                                                                        }
                                                                                                        b
                                                                                                      }
                                                                                                      f
                                                                                                    ]
                                                                                                    xs
                                                                                                  ]
                                                                                                ]
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                        ]
                                                                                        Unit
                                                                                      ]
                                                                                    )
                                                                                  )
                                                                                )
                                                                              )
                                                                            )
                                                                            (let
                                                                              (nonrec
                                                                              )
                                                                              (termbind
                                                                                (strict
                                                                                )
                                                                                (vardecl
                                                                                  pendingTxInValue
                                                                                  (fun PendingTxIn [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])
                                                                                )
                                                                                (lam
                                                                                  ds
                                                                                  PendingTxIn
                                                                                  [
                                                                                    {
                                                                                      [
                                                                                        PendingTxIn_match
                                                                                        ds
                                                                                      ]
                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                    }
                                                                                    (lam
                                                                                      ds
                                                                                      PendingTxOutRef
                                                                                      (lam
                                                                                        ds
                                                                                        [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                        (lam
                                                                                          ds
                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                          ds
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                  ]
                                                                                )
                                                                              )
                                                                              (let
                                                                                (nonrec
                                                                                )
                                                                                (datatypebind
                                                                                  (datatype
                                                                                    (tyvardecl
                                                                                      These
                                                                                      (fun (type) (fun (type) (type)))
                                                                                    )
                                                                                    (tyvardecl
                                                                                      a
                                                                                      (type)
                                                                                    )
                                                                                    (tyvardecl
                                                                                      b
                                                                                      (type)
                                                                                    )
                                                                                    These_match
                                                                                    (vardecl
                                                                                      That
                                                                                      (fun b [[These a] b])
                                                                                    )
                                                                                    (vardecl
                                                                                      These
                                                                                      (fun a (fun b [[These a] b]))
                                                                                    )
                                                                                    (vardecl
                                                                                      This
                                                                                      (fun a [[These a] b])
                                                                                    )
                                                                                  )
                                                                                )
                                                                                (let
                                                                                  (rec
                                                                                  )
                                                                                  (termbind
                                                                                    (strict
                                                                                    )
                                                                                    (vardecl
                                                                                      foldr
                                                                                      (all a (type) (all b (type) (fun (fun a (fun b b)) (fun b (fun [List a] b)))))
                                                                                    )
                                                                                    (abs
                                                                                      a
                                                                                      (type)
                                                                                      (abs
                                                                                        b
                                                                                        (type)
                                                                                        (lam
                                                                                          f
                                                                                          (fun a (fun b b))
                                                                                          (lam
                                                                                            acc
                                                                                            b
                                                                                            (lam
                                                                                              l
                                                                                              [List a]
                                                                                              [
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      [
                                                                                                        {
                                                                                                          Nil_match
                                                                                                          a
                                                                                                        }
                                                                                                        l
                                                                                                      ]
                                                                                                      (fun Unit b)
                                                                                                    }
                                                                                                    (lam
                                                                                                      thunk
                                                                                                      Unit
                                                                                                      acc
                                                                                                    )
                                                                                                  ]
                                                                                                  (lam
                                                                                                    x
                                                                                                    a
                                                                                                    (lam
                                                                                                      xs
                                                                                                      [List a]
                                                                                                      (lam
                                                                                                        thunk
                                                                                                        Unit
                                                                                                        [
                                                                                                          [
                                                                                                            f
                                                                                                            x
                                                                                                          ]
                                                                                                          [
                                                                                                            [
                                                                                                              [
                                                                                                                {
                                                                                                                  {
                                                                                                                    foldr
                                                                                                                    a
                                                                                                                  }
                                                                                                                  b
                                                                                                                }
                                                                                                                f
                                                                                                              ]
                                                                                                              acc
                                                                                                            ]
                                                                                                            xs
                                                                                                          ]
                                                                                                        ]
                                                                                                      )
                                                                                                    )
                                                                                                  )
                                                                                                ]
                                                                                                Unit
                                                                                              ]
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                  )
                                                                                  (let
                                                                                    (nonrec
                                                                                    )
                                                                                    (termbind
                                                                                      (strict
                                                                                      )
                                                                                      (vardecl
                                                                                        union
                                                                                        (all k (type) (all v (type) (all r (type) (fun [(lam a (type) (fun a (fun a Bool))) k] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] v] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] r] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] [[These v] r]]))))))
                                                                                      )
                                                                                      (abs
                                                                                        k
                                                                                        (type)
                                                                                        (abs
                                                                                          v
                                                                                          (type)
                                                                                          (abs
                                                                                            r
                                                                                            (type)
                                                                                            (lam
                                                                                              dEq
                                                                                              [(lam a (type) (fun a (fun a Bool))) k]
                                                                                              (lam
                                                                                                ds
                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] v]
                                                                                                (lam
                                                                                                  ds
                                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] r]
                                                                                                  [
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          {
                                                                                                            foldr
                                                                                                            [[Tuple2 k] [[These v] r]]
                                                                                                          }
                                                                                                          [List [[Tuple2 k] [[These v] r]]]
                                                                                                        }
                                                                                                        {
                                                                                                          Cons
                                                                                                          [[Tuple2 k] [[These v] r]]
                                                                                                        }
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            {
                                                                                                              fFunctorNil_cfmap
                                                                                                              [[Tuple2 k] r]
                                                                                                            }
                                                                                                            [[Tuple2 k] [[These v] r]]
                                                                                                          }
                                                                                                          (lam
                                                                                                            ds
                                                                                                            [[Tuple2 k] r]
                                                                                                            [
                                                                                                              {
                                                                                                                [
                                                                                                                  {
                                                                                                                    {
                                                                                                                      Tuple2_match
                                                                                                                      k
                                                                                                                    }
                                                                                                                    r
                                                                                                                  }
                                                                                                                  ds
                                                                                                                ]
                                                                                                                [[Tuple2 k] [[These v] r]]
                                                                                                              }
                                                                                                              (lam
                                                                                                                c
                                                                                                                k
                                                                                                                (lam
                                                                                                                  b
                                                                                                                  r
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        {
                                                                                                                          Tuple2
                                                                                                                          k
                                                                                                                        }
                                                                                                                        [[These v] r]
                                                                                                                      }
                                                                                                                      c
                                                                                                                    ]
                                                                                                                    [
                                                                                                                      {
                                                                                                                        {
                                                                                                                          That
                                                                                                                          v
                                                                                                                        }
                                                                                                                        r
                                                                                                                      }
                                                                                                                      b
                                                                                                                    ]
                                                                                                                  ]
                                                                                                                )
                                                                                                              )
                                                                                                            ]
                                                                                                          )
                                                                                                        ]
                                                                                                        [
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  foldr
                                                                                                                  [[Tuple2 k] r]
                                                                                                                }
                                                                                                                [List [[Tuple2 k] r]]
                                                                                                              }
                                                                                                              (lam
                                                                                                                e
                                                                                                                [[Tuple2 k] r]
                                                                                                                (lam
                                                                                                                  xs
                                                                                                                  [List [[Tuple2 k] r]]
                                                                                                                  (let
                                                                                                                    (nonrec
                                                                                                                    )
                                                                                                                    (termbind
                                                                                                                      (strict
                                                                                                                      )
                                                                                                                      (vardecl
                                                                                                                        wild
                                                                                                                        [[Tuple2 k] r]
                                                                                                                      )
                                                                                                                      e
                                                                                                                    )
                                                                                                                    [
                                                                                                                      {
                                                                                                                        [
                                                                                                                          {
                                                                                                                            {
                                                                                                                              Tuple2_match
                                                                                                                              k
                                                                                                                            }
                                                                                                                            r
                                                                                                                          }
                                                                                                                          e
                                                                                                                        ]
                                                                                                                        [List [[Tuple2 k] r]]
                                                                                                                      }
                                                                                                                      (lam
                                                                                                                        c
                                                                                                                        k
                                                                                                                        (lam
                                                                                                                          ds
                                                                                                                          r
                                                                                                                          [
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  [
                                                                                                                                    Bool_match
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            {
                                                                                                                                              foldr
                                                                                                                                              [[Tuple2 k] v]
                                                                                                                                            }
                                                                                                                                            Bool
                                                                                                                                          }
                                                                                                                                          (lam
                                                                                                                                            a
                                                                                                                                            [[Tuple2 k] v]
                                                                                                                                            (lam
                                                                                                                                              acc
                                                                                                                                              Bool
                                                                                                                                              [
                                                                                                                                                [
                                                                                                                                                  [
                                                                                                                                                    {
                                                                                                                                                      [
                                                                                                                                                        Bool_match
                                                                                                                                                        acc
                                                                                                                                                      ]
                                                                                                                                                      (fun Unit Bool)
                                                                                                                                                    }
                                                                                                                                                    (lam
                                                                                                                                                      thunk
                                                                                                                                                      Unit
                                                                                                                                                      True
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                  (lam
                                                                                                                                                    thunk
                                                                                                                                                    Unit
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            {
                                                                                                                                                              Tuple2_match
                                                                                                                                                              k
                                                                                                                                                            }
                                                                                                                                                            v
                                                                                                                                                          }
                                                                                                                                                          a
                                                                                                                                                        ]
                                                                                                                                                        Bool
                                                                                                                                                      }
                                                                                                                                                      (lam
                                                                                                                                                        c
                                                                                                                                                        k
                                                                                                                                                        (lam
                                                                                                                                                          ds
                                                                                                                                                          v
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              dEq
                                                                                                                                                              c
                                                                                                                                                            ]
                                                                                                                                                            c
                                                                                                                                                          ]
                                                                                                                                                        )
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                  )
                                                                                                                                                ]
                                                                                                                                                Unit
                                                                                                                                              ]
                                                                                                                                            )
                                                                                                                                          )
                                                                                                                                        ]
                                                                                                                                        False
                                                                                                                                      ]
                                                                                                                                      ds
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                  (fun Unit [List [[Tuple2 k] r]])
                                                                                                                                }
                                                                                                                                (lam
                                                                                                                                  thunk
                                                                                                                                  Unit
                                                                                                                                  xs
                                                                                                                                )
                                                                                                                              ]
                                                                                                                              (lam
                                                                                                                                thunk
                                                                                                                                Unit
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      Cons
                                                                                                                                      [[Tuple2 k] r]
                                                                                                                                    }
                                                                                                                                    wild
                                                                                                                                  ]
                                                                                                                                  xs
                                                                                                                                ]
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            Unit
                                                                                                                          ]
                                                                                                                        )
                                                                                                                      )
                                                                                                                    ]
                                                                                                                  )
                                                                                                                )
                                                                                                              )
                                                                                                            ]
                                                                                                            {
                                                                                                              Nil
                                                                                                              [[Tuple2 k] r]
                                                                                                            }
                                                                                                          ]
                                                                                                          ds
                                                                                                        ]
                                                                                                      ]
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          {
                                                                                                            fFunctorNil_cfmap
                                                                                                            [[Tuple2 k] v]
                                                                                                          }
                                                                                                          [[Tuple2 k] [[These v] r]]
                                                                                                        }
                                                                                                        (lam
                                                                                                          ds
                                                                                                          [[Tuple2 k] v]
                                                                                                          [
                                                                                                            {
                                                                                                              [
                                                                                                                {
                                                                                                                  {
                                                                                                                    Tuple2_match
                                                                                                                    k
                                                                                                                  }
                                                                                                                  v
                                                                                                                }
                                                                                                                ds
                                                                                                              ]
                                                                                                              [[Tuple2 k] [[These v] r]]
                                                                                                            }
                                                                                                            (lam
                                                                                                              c
                                                                                                              k
                                                                                                              (lam
                                                                                                                i
                                                                                                                v
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      {
                                                                                                                        Tuple2
                                                                                                                        k
                                                                                                                      }
                                                                                                                      [[These v] r]
                                                                                                                    }
                                                                                                                    c
                                                                                                                  ]
                                                                                                                  (let
                                                                                                                    (rec
                                                                                                                    )
                                                                                                                    (termbind
                                                                                                                      (strict
                                                                                                                      )
                                                                                                                      (vardecl
                                                                                                                        go
                                                                                                                        (fun [List [[Tuple2 k] r]] [[These v] r])
                                                                                                                      )
                                                                                                                      (lam
                                                                                                                        ds
                                                                                                                        [List [[Tuple2 k] r]]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    Nil_match
                                                                                                                                    [[Tuple2 k] r]
                                                                                                                                  }
                                                                                                                                  ds
                                                                                                                                ]
                                                                                                                                (fun Unit [[These v] r])
                                                                                                                              }
                                                                                                                              (lam
                                                                                                                                thunk
                                                                                                                                Unit
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    {
                                                                                                                                      This
                                                                                                                                      v
                                                                                                                                    }
                                                                                                                                    r
                                                                                                                                  }
                                                                                                                                  i
                                                                                                                                ]
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            (lam
                                                                                                                              ds
                                                                                                                              [[Tuple2 k] r]
                                                                                                                              (lam
                                                                                                                                xs
                                                                                                                                [List [[Tuple2 k] r]]
                                                                                                                                (lam
                                                                                                                                  thunk
                                                                                                                                  Unit
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          {
                                                                                                                                            Tuple2_match
                                                                                                                                            k
                                                                                                                                          }
                                                                                                                                          r
                                                                                                                                        }
                                                                                                                                        ds
                                                                                                                                      ]
                                                                                                                                      [[These v] r]
                                                                                                                                    }
                                                                                                                                    (lam
                                                                                                                                      c
                                                                                                                                      k
                                                                                                                                      (lam
                                                                                                                                        i
                                                                                                                                        r
                                                                                                                                        [
                                                                                                                                          [
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                [
                                                                                                                                                  Bool_match
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      dEq
                                                                                                                                                      c
                                                                                                                                                    ]
                                                                                                                                                    c
                                                                                                                                                  ]
                                                                                                                                                ]
                                                                                                                                                (fun Unit [[These v] r])
                                                                                                                                              }
                                                                                                                                              (lam
                                                                                                                                                thunk
                                                                                                                                                Unit
                                                                                                                                                [
                                                                                                                                                  [
                                                                                                                                                    {
                                                                                                                                                      {
                                                                                                                                                        These
                                                                                                                                                        v
                                                                                                                                                      }
                                                                                                                                                      r
                                                                                                                                                    }
                                                                                                                                                    i
                                                                                                                                                  ]
                                                                                                                                                  i
                                                                                                                                                ]
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                            (lam
                                                                                                                                              thunk
                                                                                                                                              Unit
                                                                                                                                              [
                                                                                                                                                go
                                                                                                                                                xs
                                                                                                                                              ]
                                                                                                                                            )
                                                                                                                                          ]
                                                                                                                                          Unit
                                                                                                                                        ]
                                                                                                                                      )
                                                                                                                                    )
                                                                                                                                  ]
                                                                                                                                )
                                                                                                                              )
                                                                                                                            )
                                                                                                                          ]
                                                                                                                          Unit
                                                                                                                        ]
                                                                                                                      )
                                                                                                                    )
                                                                                                                    [
                                                                                                                      go
                                                                                                                      ds
                                                                                                                    ]
                                                                                                                  )
                                                                                                                ]
                                                                                                              )
                                                                                                            )
                                                                                                          ]
                                                                                                        )
                                                                                                      ]
                                                                                                      ds
                                                                                                    ]
                                                                                                  ]
                                                                                                )
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                    (let
                                                                                      (nonrec
                                                                                      )
                                                                                      (termbind
                                                                                        (strict
                                                                                        )
                                                                                        (vardecl
                                                                                          unionVal
                                                                                          (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]))
                                                                                        )
                                                                                        (lam
                                                                                          ds
                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                          (lam
                                                                                            ds
                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                            (let
                                                                                              (rec
                                                                                              )
                                                                                              (termbind
                                                                                                (strict
                                                                                                )
                                                                                                (vardecl
                                                                                                  go
                                                                                                  (fun [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]])
                                                                                                )
                                                                                                (lam
                                                                                                  ds
                                                                                                  [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                                                                                                  [
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          [
                                                                                                            {
                                                                                                              Nil_match
                                                                                                              [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                                            }
                                                                                                            ds
                                                                                                          ]
                                                                                                          (fun Unit [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]])
                                                                                                        }
                                                                                                        (lam
                                                                                                          thunk
                                                                                                          Unit
                                                                                                          {
                                                                                                            Nil
                                                                                                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                          }
                                                                                                        )
                                                                                                      ]
                                                                                                      (lam
                                                                                                        ds
                                                                                                        [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                                        (lam
                                                                                                          xs
                                                                                                          [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                                                                                                          (lam
                                                                                                            thunk
                                                                                                            Unit
                                                                                                            [
                                                                                                              {
                                                                                                                [
                                                                                                                  {
                                                                                                                    {
                                                                                                                      Tuple2_match
                                                                                                                      (con bytestring)
                                                                                                                    }
                                                                                                                    [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                  }
                                                                                                                  ds
                                                                                                                ]
                                                                                                                [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                                                                                              }
                                                                                                              (lam
                                                                                                                c
                                                                                                                (con bytestring)
                                                                                                                (lam
                                                                                                                  i
                                                                                                                  [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      {
                                                                                                                        Cons
                                                                                                                        [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                      }
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            {
                                                                                                                              Tuple2
                                                                                                                              (con bytestring)
                                                                                                                            }
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                          }
                                                                                                                          c
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    {
                                                                                                                                      These_match
                                                                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                                    }
                                                                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                                  }
                                                                                                                                  i
                                                                                                                                ]
                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                              }
                                                                                                                              (lam
                                                                                                                                b
                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                                (let
                                                                                                                                  (rec
                                                                                                                                  )
                                                                                                                                  (termbind
                                                                                                                                    (strict
                                                                                                                                    )
                                                                                                                                    (vardecl
                                                                                                                                      go
                                                                                                                                      (fun [List [[Tuple2 (con bytestring)] (con integer)]] [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                                                                                    )
                                                                                                                                    (lam
                                                                                                                                      ds
                                                                                                                                      [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              [
                                                                                                                                                {
                                                                                                                                                  Nil_match
                                                                                                                                                  [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                                }
                                                                                                                                                ds
                                                                                                                                              ]
                                                                                                                                              (fun Unit [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                                                                                            }
                                                                                                                                            (lam
                                                                                                                                              thunk
                                                                                                                                              Unit
                                                                                                                                              {
                                                                                                                                                Nil
                                                                                                                                                [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                              }
                                                                                                                                            )
                                                                                                                                          ]
                                                                                                                                          (lam
                                                                                                                                            ds
                                                                                                                                            [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                            (lam
                                                                                                                                              xs
                                                                                                                                              [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                                                                                              (lam
                                                                                                                                                thunk
                                                                                                                                                Unit
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        {
                                                                                                                                                          Tuple2_match
                                                                                                                                                          (con bytestring)
                                                                                                                                                        }
                                                                                                                                                        (con integer)
                                                                                                                                                      }
                                                                                                                                                      ds
                                                                                                                                                    ]
                                                                                                                                                    [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                                  }
                                                                                                                                                  (lam
                                                                                                                                                    c
                                                                                                                                                    (con bytestring)
                                                                                                                                                    (lam
                                                                                                                                                      i
                                                                                                                                                      (con integer)
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            Cons
                                                                                                                                                            [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                                          }
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                {
                                                                                                                                                                  Tuple2
                                                                                                                                                                  (con bytestring)
                                                                                                                                                                }
                                                                                                                                                                [[These (con integer)] (con integer)]
                                                                                                                                                              }
                                                                                                                                                              c
                                                                                                                                                            ]
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                {
                                                                                                                                                                  That
                                                                                                                                                                  (con integer)
                                                                                                                                                                }
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              i
                                                                                                                                                            ]
                                                                                                                                                          ]
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          go
                                                                                                                                                          xs
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    )
                                                                                                                                                  )
                                                                                                                                                ]
                                                                                                                                              )
                                                                                                                                            )
                                                                                                                                          )
                                                                                                                                        ]
                                                                                                                                        Unit
                                                                                                                                      ]
                                                                                                                                    )
                                                                                                                                  )
                                                                                                                                  [
                                                                                                                                    go
                                                                                                                                    b
                                                                                                                                  ]
                                                                                                                                )
                                                                                                                              )
                                                                                                                            ]
                                                                                                                            (lam
                                                                                                                              a
                                                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                              (lam
                                                                                                                                b
                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        {
                                                                                                                                          {
                                                                                                                                            union
                                                                                                                                            (con bytestring)
                                                                                                                                          }
                                                                                                                                          (con integer)
                                                                                                                                        }
                                                                                                                                        (con integer)
                                                                                                                                      }
                                                                                                                                      equalsByteString
                                                                                                                                    ]
                                                                                                                                    a
                                                                                                                                  ]
                                                                                                                                  b
                                                                                                                                ]
                                                                                                                              )
                                                                                                                            )
                                                                                                                          ]
                                                                                                                          (lam
                                                                                                                            a
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                            (let
                                                                                                                              (rec
                                                                                                                              )
                                                                                                                              (termbind
                                                                                                                                (strict
                                                                                                                                )
                                                                                                                                (vardecl
                                                                                                                                  go
                                                                                                                                  (fun [List [[Tuple2 (con bytestring)] (con integer)]] [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                                                                                )
                                                                                                                                (lam
                                                                                                                                  ds
                                                                                                                                  [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Nil_match
                                                                                                                                              [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                            }
                                                                                                                                            ds
                                                                                                                                          ]
                                                                                                                                          (fun Unit [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                                                                                        }
                                                                                                                                        (lam
                                                                                                                                          thunk
                                                                                                                                          Unit
                                                                                                                                          {
                                                                                                                                            Nil
                                                                                                                                            [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                          }
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      (lam
                                                                                                                                        ds
                                                                                                                                        [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                        (lam
                                                                                                                                          xs
                                                                                                                                          [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                                                                                          (lam
                                                                                                                                            thunk
                                                                                                                                            Unit
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    {
                                                                                                                                                      Tuple2_match
                                                                                                                                                      (con bytestring)
                                                                                                                                                    }
                                                                                                                                                    (con integer)
                                                                                                                                                  }
                                                                                                                                                  ds
                                                                                                                                                ]
                                                                                                                                                [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                              }
                                                                                                                                              (lam
                                                                                                                                                c
                                                                                                                                                (con bytestring)
                                                                                                                                                (lam
                                                                                                                                                  i
                                                                                                                                                  (con integer)
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        Cons
                                                                                                                                                        [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                                      }
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            {
                                                                                                                                                              Tuple2
                                                                                                                                                              (con bytestring)
                                                                                                                                                            }
                                                                                                                                                            [[These (con integer)] (con integer)]
                                                                                                                                                          }
                                                                                                                                                          c
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            {
                                                                                                                                                              This
                                                                                                                                                              (con integer)
                                                                                                                                                            }
                                                                                                                                                            (con integer)
                                                                                                                                                          }
                                                                                                                                                          i
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    ]
                                                                                                                                                    [
                                                                                                                                                      go
                                                                                                                                                      xs
                                                                                                                                                    ]
                                                                                                                                                  ]
                                                                                                                                                )
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                          )
                                                                                                                                        )
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    Unit
                                                                                                                                  ]
                                                                                                                                )
                                                                                                                              )
                                                                                                                              [
                                                                                                                                go
                                                                                                                                a
                                                                                                                              ]
                                                                                                                            )
                                                                                                                          )
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                    [
                                                                                                                      go
                                                                                                                      xs
                                                                                                                    ]
                                                                                                                  ]
                                                                                                                )
                                                                                                              )
                                                                                                            ]
                                                                                                          )
                                                                                                        )
                                                                                                      )
                                                                                                    ]
                                                                                                    Unit
                                                                                                  ]
                                                                                                )
                                                                                              )
                                                                                              [
                                                                                                go
                                                                                                [
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        {
                                                                                                          {
                                                                                                            union
                                                                                                            (con bytestring)
                                                                                                          }
                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                        }
                                                                                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                      }
                                                                                                      equalsByteString
                                                                                                    ]
                                                                                                    ds
                                                                                                  ]
                                                                                                  ds
                                                                                                ]
                                                                                              ]
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                      (let
                                                                                        (nonrec
                                                                                        )
                                                                                        (termbind
                                                                                          (strict
                                                                                          )
                                                                                          (vardecl
                                                                                            unionWith
                                                                                            (fun (fun (con integer) (fun (con integer) (con integer))) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])))
                                                                                          )
                                                                                          (lam
                                                                                            f
                                                                                            (fun (con integer) (fun (con integer) (con integer)))
                                                                                            (lam
                                                                                              ls
                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                              (lam
                                                                                                rs
                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                (let
                                                                                                  (rec
                                                                                                  )
                                                                                                  (termbind
                                                                                                    (strict
                                                                                                    )
                                                                                                    (vardecl
                                                                                                      go
                                                                                                      (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]] [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                                                                                                    )
                                                                                                    (lam
                                                                                                      ds
                                                                                                      [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                                                                                      [
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              [
                                                                                                                {
                                                                                                                  Nil_match
                                                                                                                  [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                }
                                                                                                                ds
                                                                                                              ]
                                                                                                              (fun Unit [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                                                                                                            }
                                                                                                            (lam
                                                                                                              thunk
                                                                                                              Unit
                                                                                                              {
                                                                                                                Nil
                                                                                                                [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                              }
                                                                                                            )
                                                                                                          ]
                                                                                                          (lam
                                                                                                            ds
                                                                                                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                            (lam
                                                                                                              xs
                                                                                                              [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                                                                                              (lam
                                                                                                                thunk
                                                                                                                Unit
                                                                                                                [
                                                                                                                  {
                                                                                                                    [
                                                                                                                      {
                                                                                                                        {
                                                                                                                          Tuple2_match
                                                                                                                          (con bytestring)
                                                                                                                        }
                                                                                                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                      }
                                                                                                                      ds
                                                                                                                    ]
                                                                                                                    [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                                                  }
                                                                                                                  (lam
                                                                                                                    c
                                                                                                                    (con bytestring)
                                                                                                                    (lam
                                                                                                                      i
                                                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            Cons
                                                                                                                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                          }
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                {
                                                                                                                                  Tuple2
                                                                                                                                  (con bytestring)
                                                                                                                                }
                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                              }
                                                                                                                              c
                                                                                                                            ]
                                                                                                                            (let
                                                                                                                              (rec
                                                                                                                              )
                                                                                                                              (termbind
                                                                                                                                (strict
                                                                                                                                )
                                                                                                                                (vardecl
                                                                                                                                  go
                                                                                                                                  (fun [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]] [List [[Tuple2 (con bytestring)] (con integer)]])
                                                                                                                                )
                                                                                                                                (lam
                                                                                                                                  ds
                                                                                                                                  [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Nil_match
                                                                                                                                              [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                            }
                                                                                                                                            ds
                                                                                                                                          ]
                                                                                                                                          (fun Unit [List [[Tuple2 (con bytestring)] (con integer)]])
                                                                                                                                        }
                                                                                                                                        (lam
                                                                                                                                          thunk
                                                                                                                                          Unit
                                                                                                                                          {
                                                                                                                                            Nil
                                                                                                                                            [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                          }
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      (lam
                                                                                                                                        ds
                                                                                                                                        [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                        (lam
                                                                                                                                          xs
                                                                                                                                          [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                          (lam
                                                                                                                                            thunk
                                                                                                                                            Unit
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    {
                                                                                                                                                      Tuple2_match
                                                                                                                                                      (con bytestring)
                                                                                                                                                    }
                                                                                                                                                    [[These (con integer)] (con integer)]
                                                                                                                                                  }
                                                                                                                                                  ds
                                                                                                                                                ]
                                                                                                                                                [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                                                                                              }
                                                                                                                                              (lam
                                                                                                                                                c
                                                                                                                                                (con bytestring)
                                                                                                                                                (lam
                                                                                                                                                  i
                                                                                                                                                  [[These (con integer)] (con integer)]
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        Cons
                                                                                                                                                        [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                                      }
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            {
                                                                                                                                                              Tuple2
                                                                                                                                                              (con bytestring)
                                                                                                                                                            }
                                                                                                                                                            (con integer)
                                                                                                                                                          }
                                                                                                                                                          c
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                [
                                                                                                                                                                  {
                                                                                                                                                                    {
                                                                                                                                                                      These_match
                                                                                                                                                                      (con integer)
                                                                                                                                                                    }
                                                                                                                                                                    (con integer)
                                                                                                                                                                  }
                                                                                                                                                                  i
                                                                                                                                                                ]
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              (lam
                                                                                                                                                                b
                                                                                                                                                                (con integer)
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    f
                                                                                                                                                                    (con
                                                                                                                                                                      0
                                                                                                                                                                    )
                                                                                                                                                                  ]
                                                                                                                                                                  b
                                                                                                                                                                ]
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            (lam
                                                                                                                                                              a
                                                                                                                                                              (con integer)
                                                                                                                                                              (lam
                                                                                                                                                                b
                                                                                                                                                                (con integer)
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    f
                                                                                                                                                                    a
                                                                                                                                                                  ]
                                                                                                                                                                  b
                                                                                                                                                                ]
                                                                                                                                                              )
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          (lam
                                                                                                                                                            a
                                                                                                                                                            (con integer)
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                f
                                                                                                                                                                a
                                                                                                                                                              ]
                                                                                                                                                              (con
                                                                                                                                                                0
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    ]
                                                                                                                                                    [
                                                                                                                                                      go
                                                                                                                                                      xs
                                                                                                                                                    ]
                                                                                                                                                  ]
                                                                                                                                                )
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                          )
                                                                                                                                        )
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    Unit
                                                                                                                                  ]
                                                                                                                                )
                                                                                                                              )
                                                                                                                              [
                                                                                                                                go
                                                                                                                                i
                                                                                                                              ]
                                                                                                                            )
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          go
                                                                                                                          xs
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  )
                                                                                                                ]
                                                                                                              )
                                                                                                            )
                                                                                                          )
                                                                                                        ]
                                                                                                        Unit
                                                                                                      ]
                                                                                                    )
                                                                                                  )
                                                                                                  [
                                                                                                    go
                                                                                                    [
                                                                                                      [
                                                                                                        unionVal
                                                                                                        ls
                                                                                                      ]
                                                                                                      rs
                                                                                                    ]
                                                                                                  ]
                                                                                                )
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                        (let
                                                                                          (nonrec
                                                                                          )
                                                                                          (termbind
                                                                                            (strict
                                                                                            )
                                                                                            (vardecl
                                                                                              wvalueSpent
                                                                                              (fun [List PendingTxIn] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])
                                                                                            )
                                                                                            (lam
                                                                                              ww
                                                                                              [List PendingTxIn]
                                                                                              (let
                                                                                                (rec
                                                                                                )
                                                                                                (termbind
                                                                                                  (strict
                                                                                                  )
                                                                                                  (vardecl
                                                                                                    go
                                                                                                    (fun [List [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])
                                                                                                  )
                                                                                                  (lam
                                                                                                    ds
                                                                                                    [List [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                                    [
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            [
                                                                                                              {
                                                                                                                Nil_match
                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                              }
                                                                                                              ds
                                                                                                            ]
                                                                                                            (fun Unit [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])
                                                                                                          }
                                                                                                          (lam
                                                                                                            thunk
                                                                                                            Unit
                                                                                                            {
                                                                                                              Nil
                                                                                                              [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                            }
                                                                                                          )
                                                                                                        ]
                                                                                                        (lam
                                                                                                          y
                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                          (lam
                                                                                                            ys
                                                                                                            [List [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                                            (lam
                                                                                                              thunk
                                                                                                              Unit
                                                                                                              [
                                                                                                                [
                                                                                                                  [
                                                                                                                    unionWith
                                                                                                                    addInteger
                                                                                                                  ]
                                                                                                                  y
                                                                                                                ]
                                                                                                                [
                                                                                                                  go
                                                                                                                  ys
                                                                                                                ]
                                                                                                              ]
                                                                                                            )
                                                                                                          )
                                                                                                        )
                                                                                                      ]
                                                                                                      Unit
                                                                                                    ]
                                                                                                  )
                                                                                                )
                                                                                                [
                                                                                                  go
                                                                                                  [
                                                                                                    [
                                                                                                      {
                                                                                                        {
                                                                                                          map
                                                                                                          PendingTxIn
                                                                                                        }
                                                                                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                      }
                                                                                                      pendingTxInValue
                                                                                                    ]
                                                                                                    ww
                                                                                                  ]
                                                                                                ]
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                          (let
                                                                                            (nonrec
                                                                                            )
                                                                                            (datatypebind
                                                                                              (datatype
                                                                                                (tyvardecl
                                                                                                  GameInput
                                                                                                  (type)
                                                                                                )
                                                                                                
                                                                                                GameInput_match
                                                                                                (vardecl
                                                                                                  ForgeToken
                                                                                                  (fun (con bytestring) GameInput)
                                                                                                )
                                                                                                (vardecl
                                                                                                  Guess
                                                                                                  (fun (con bytestring) (fun (con bytestring) GameInput))
                                                                                                )
                                                                                              )
                                                                                            )
                                                                                            (let
                                                                                              (nonrec
                                                                                              )
                                                                                              (termbind
                                                                                                (strict
                                                                                                )
                                                                                                (vardecl
                                                                                                  checkBinRel
                                                                                                  (fun (fun (con integer) (fun (con integer) Bool)) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Bool)))
                                                                                                )
                                                                                                (lam
                                                                                                  f
                                                                                                  (fun (con integer) (fun (con integer) Bool))
                                                                                                  (lam
                                                                                                    l
                                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                    (lam
                                                                                                      r
                                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                      (let
                                                                                                        (rec
                                                                                                        )
                                                                                                        (termbind
                                                                                                          (strict
                                                                                                          )
                                                                                                          (vardecl
                                                                                                            go
                                                                                                            (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]] Bool)
                                                                                                          )
                                                                                                          (lam
                                                                                                            xs
                                                                                                            [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                                                                                            [
                                                                                                              [
                                                                                                                [
                                                                                                                  {
                                                                                                                    [
                                                                                                                      {
                                                                                                                        Nil_match
                                                                                                                        [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                      }
                                                                                                                      xs
                                                                                                                    ]
                                                                                                                    (fun Unit Bool)
                                                                                                                  }
                                                                                                                  (lam
                                                                                                                    thunk
                                                                                                                    Unit
                                                                                                                    True
                                                                                                                  )
                                                                                                                ]
                                                                                                                (lam
                                                                                                                  ds
                                                                                                                  [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                  (lam
                                                                                                                    xs
                                                                                                                    [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                                                                                                    (lam
                                                                                                                      thunk
                                                                                                                      Unit
                                                                                                                      [
                                                                                                                        {
                                                                                                                          [
                                                                                                                            {
                                                                                                                              {
                                                                                                                                Tuple2_match
                                                                                                                                (con bytestring)
                                                                                                                              }
                                                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                            }
                                                                                                                            ds
                                                                                                                          ]
                                                                                                                          Bool
                                                                                                                        }
                                                                                                                        (lam
                                                                                                                          ds
                                                                                                                          (con bytestring)
                                                                                                                          (lam
                                                                                                                            x
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                            (let
                                                                                                                              (rec
                                                                                                                              )
                                                                                                                              (termbind
                                                                                                                                (strict
                                                                                                                                )
                                                                                                                                (vardecl
                                                                                                                                  go
                                                                                                                                  (fun [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]] Bool)
                                                                                                                                )
                                                                                                                                (lam
                                                                                                                                  xs
                                                                                                                                  [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          [
                                                                                                                                            {
                                                                                                                                              Nil_match
                                                                                                                                              [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                            }
                                                                                                                                            xs
                                                                                                                                          ]
                                                                                                                                          (fun Unit Bool)
                                                                                                                                        }
                                                                                                                                        (lam
                                                                                                                                          thunk
                                                                                                                                          Unit
                                                                                                                                          [
                                                                                                                                            go
                                                                                                                                            xs
                                                                                                                                          ]
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                      (lam
                                                                                                                                        ds
                                                                                                                                        [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                                                                        (lam
                                                                                                                                          xs
                                                                                                                                          [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                                                                                          (lam
                                                                                                                                            thunk
                                                                                                                                            Unit
                                                                                                                                            [
                                                                                                                                              {
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    {
                                                                                                                                                      Tuple2_match
                                                                                                                                                      (con bytestring)
                                                                                                                                                    }
                                                                                                                                                    [[These (con integer)] (con integer)]
                                                                                                                                                  }
                                                                                                                                                  ds
                                                                                                                                                ]
                                                                                                                                                Bool
                                                                                                                                              }
                                                                                                                                              (lam
                                                                                                                                                ds
                                                                                                                                                (con bytestring)
                                                                                                                                                (lam
                                                                                                                                                  x
                                                                                                                                                  [[These (con integer)] (con integer)]
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      [
                                                                                                                                                        {
                                                                                                                                                          [
                                                                                                                                                            {
                                                                                                                                                              {
                                                                                                                                                                These_match
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              (con integer)
                                                                                                                                                            }
                                                                                                                                                            x
                                                                                                                                                          ]
                                                                                                                                                          Bool
                                                                                                                                                        }
                                                                                                                                                        (lam
                                                                                                                                                          b
                                                                                                                                                          (con integer)
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  [
                                                                                                                                                                    Bool_match
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        f
                                                                                                                                                                        (con
                                                                                                                                                                          0
                                                                                                                                                                        )
                                                                                                                                                                      ]
                                                                                                                                                                      b
                                                                                                                                                                    ]
                                                                                                                                                                  ]
                                                                                                                                                                  (fun Unit Bool)
                                                                                                                                                                }
                                                                                                                                                                (lam
                                                                                                                                                                  thunk
                                                                                                                                                                  Unit
                                                                                                                                                                  [
                                                                                                                                                                    go
                                                                                                                                                                    xs
                                                                                                                                                                  ]
                                                                                                                                                                )
                                                                                                                                                              ]
                                                                                                                                                              (lam
                                                                                                                                                                thunk
                                                                                                                                                                Unit
                                                                                                                                                                False
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            Unit
                                                                                                                                                          ]
                                                                                                                                                        )
                                                                                                                                                      ]
                                                                                                                                                      (lam
                                                                                                                                                        a
                                                                                                                                                        (con integer)
                                                                                                                                                        (lam
                                                                                                                                                          b
                                                                                                                                                          (con integer)
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  [
                                                                                                                                                                    Bool_match
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        f
                                                                                                                                                                        a
                                                                                                                                                                      ]
                                                                                                                                                                      b
                                                                                                                                                                    ]
                                                                                                                                                                  ]
                                                                                                                                                                  (fun Unit Bool)
                                                                                                                                                                }
                                                                                                                                                                (lam
                                                                                                                                                                  thunk
                                                                                                                                                                  Unit
                                                                                                                                                                  [
                                                                                                                                                                    go
                                                                                                                                                                    xs
                                                                                                                                                                  ]
                                                                                                                                                                )
                                                                                                                                                              ]
                                                                                                                                                              (lam
                                                                                                                                                                thunk
                                                                                                                                                                Unit
                                                                                                                                                                False
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            Unit
                                                                                                                                                          ]
                                                                                                                                                        )
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                    (lam
                                                                                                                                                      a
                                                                                                                                                      (con integer)
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            {
                                                                                                                                                              [
                                                                                                                                                                Bool_match
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    f
                                                                                                                                                                    a
                                                                                                                                                                  ]
                                                                                                                                                                  (con
                                                                                                                                                                    0
                                                                                                                                                                  )
                                                                                                                                                                ]
                                                                                                                                                              ]
                                                                                                                                                              (fun Unit Bool)
                                                                                                                                                            }
                                                                                                                                                            (lam
                                                                                                                                                              thunk
                                                                                                                                                              Unit
                                                                                                                                                              [
                                                                                                                                                                go
                                                                                                                                                                xs
                                                                                                                                                              ]
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          (lam
                                                                                                                                                            thunk
                                                                                                                                                            Unit
                                                                                                                                                            False
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                        Unit
                                                                                                                                                      ]
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                )
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                          )
                                                                                                                                        )
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    Unit
                                                                                                                                  ]
                                                                                                                                )
                                                                                                                              )
                                                                                                                              [
                                                                                                                                go
                                                                                                                                x
                                                                                                                              ]
                                                                                                                            )
                                                                                                                          )
                                                                                                                        )
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  )
                                                                                                                )
                                                                                                              ]
                                                                                                              Unit
                                                                                                            ]
                                                                                                          )
                                                                                                        )
                                                                                                        [
                                                                                                          go
                                                                                                          [
                                                                                                            [
                                                                                                              unionVal
                                                                                                              l
                                                                                                            ]
                                                                                                            r
                                                                                                          ]
                                                                                                        ]
                                                                                                      )
                                                                                                    )
                                                                                                  )
                                                                                                )
                                                                                              )
                                                                                              (let
                                                                                                (nonrec
                                                                                                )
                                                                                                (termbind
                                                                                                  (strict
                                                                                                  )
                                                                                                  (vardecl
                                                                                                    greaterThanEqInteger
                                                                                                    (fun (con integer) (fun (con integer) Bool))
                                                                                                  )
                                                                                                  (lam
                                                                                                    arg
                                                                                                    (con integer)
                                                                                                    (lam
                                                                                                      arg
                                                                                                      (con integer)
                                                                                                      [
                                                                                                        (lam
                                                                                                          b
                                                                                                          (all a (type) (fun a (fun a a)))
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                b
                                                                                                                Bool
                                                                                                              }
                                                                                                              True
                                                                                                            ]
                                                                                                            False
                                                                                                          ]
                                                                                                        )
                                                                                                        [
                                                                                                          [
                                                                                                            (builtin
                                                                                                              greaterThanEqualsInteger
                                                                                                            )
                                                                                                            arg
                                                                                                          ]
                                                                                                          arg
                                                                                                        ]
                                                                                                      ]
                                                                                                    )
                                                                                                  )
                                                                                                )
                                                                                                (let
                                                                                                  (nonrec
                                                                                                  )
                                                                                                  (termbind
                                                                                                    (strict
                                                                                                    )
                                                                                                    (vardecl
                                                                                                      sha2_
                                                                                                      (fun (con bytestring) (con bytestring))
                                                                                                    )
                                                                                                    (builtin
                                                                                                      sha2_256
                                                                                                    )
                                                                                                  )
                                                                                                  (let
                                                                                                    (nonrec
                                                                                                    )
                                                                                                    (termbind
                                                                                                      (strict
                                                                                                      )
                                                                                                      (vardecl
                                                                                                        wmkValidator
                                                                                                        (fun GameState (fun GameInput (fun GameState (fun (con bytestring) (fun [List PendingTxIn] (fun [List PendingTxOut] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [Maybe [[Tuple2 (con bytestring)] (con bytestring)]] Bool))))))))
                                                                                                      )
                                                                                                      (lam
                                                                                                        w
                                                                                                        GameState
                                                                                                        (lam
                                                                                                          ww
                                                                                                          GameInput
                                                                                                          (lam
                                                                                                            ww
                                                                                                            GameState
                                                                                                            (lam
                                                                                                              ww
                                                                                                              (con bytestring)
                                                                                                              (lam
                                                                                                                ww
                                                                                                                [List PendingTxIn]
                                                                                                                (lam
                                                                                                                  ww
                                                                                                                  [List PendingTxOut]
                                                                                                                  (lam
                                                                                                                    ww
                                                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                    (lam
                                                                                                                      ww
                                                                                                                      [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                                                      (let
                                                                                                                        (nonrec
                                                                                                                        )
                                                                                                                        (termbind
                                                                                                                          (strict
                                                                                                                          )
                                                                                                                          (vardecl
                                                                                                                            tokenVal
                                                                                                                            (fun (con bytestring) [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                                                                                                                          )
                                                                                                                          (lam
                                                                                                                            tn
                                                                                                                            (con bytestring)
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  Cons
                                                                                                                                  [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                                }
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      {
                                                                                                                                        Tuple2
                                                                                                                                        (con bytestring)
                                                                                                                                      }
                                                                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                                                                                                    }
                                                                                                                                    [
                                                                                                                                      wownCurrencySymbol
                                                                                                                                      ww
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        Cons
                                                                                                                                        [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                      }
                                                                                                                                      [
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            {
                                                                                                                                              Tuple2
                                                                                                                                              (con bytestring)
                                                                                                                                            }
                                                                                                                                            (con integer)
                                                                                                                                          }
                                                                                                                                          tn
                                                                                                                                        ]
                                                                                                                                        (con
                                                                                                                                          1
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                    ]
                                                                                                                                    {
                                                                                                                                      Nil
                                                                                                                                      [[Tuple2 (con bytestring)] (con integer)]
                                                                                                                                    }
                                                                                                                                  ]
                                                                                                                                ]
                                                                                                                              ]
                                                                                                                              {
                                                                                                                                Nil
                                                                                                                                [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                              }
                                                                                                                            ]
                                                                                                                          )
                                                                                                                        )
                                                                                                                        [
                                                                                                                          [
                                                                                                                            [
                                                                                                                              [
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        swmkValidator
                                                                                                                                        GameInput
                                                                                                                                      }
                                                                                                                                      (lam
                                                                                                                                        ds
                                                                                                                                        GameState
                                                                                                                                        (lam
                                                                                                                                          ds
                                                                                                                                          GameInput
                                                                                                                                          (let
                                                                                                                                            (nonrec
                                                                                                                                            )
                                                                                                                                            (termbind
                                                                                                                                              (strict
                                                                                                                                              )
                                                                                                                                              (vardecl
                                                                                                                                                fail
                                                                                                                                                (fun (all a (type) (fun Unit a)) GameState)
                                                                                                                                              )
                                                                                                                                              (lam
                                                                                                                                                ds
                                                                                                                                                (all a (type) (fun Unit a))
                                                                                                                                                [
                                                                                                                                                  {
                                                                                                                                                    error
                                                                                                                                                    GameState
                                                                                                                                                  }
                                                                                                                                                  [
                                                                                                                                                    trace
                                                                                                                                                    [
                                                                                                                                                      toPlutusString
                                                                                                                                                      [
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            Cons
                                                                                                                                                            (con integer)
                                                                                                                                                          }
                                                                                                                                                          (con
                                                                                                                                                            73
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            {
                                                                                                                                                              Cons
                                                                                                                                                              (con integer)
                                                                                                                                                            }
                                                                                                                                                            (con
                                                                                                                                                              110
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                Cons
                                                                                                                                                                (con integer)
                                                                                                                                                              }
                                                                                                                                                              (con
                                                                                                                                                                118
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            [
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  Cons
                                                                                                                                                                  (con integer)
                                                                                                                                                                }
                                                                                                                                                                (con
                                                                                                                                                                  97
                                                                                                                                                                )
                                                                                                                                                              ]
                                                                                                                                                              [
                                                                                                                                                                [
                                                                                                                                                                  {
                                                                                                                                                                    Cons
                                                                                                                                                                    (con integer)
                                                                                                                                                                  }
                                                                                                                                                                  (con
                                                                                                                                                                    108
                                                                                                                                                                  )
                                                                                                                                                                ]
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    {
                                                                                                                                                                      Cons
                                                                                                                                                                      (con integer)
                                                                                                                                                                    }
                                                                                                                                                                    (con
                                                                                                                                                                      105
                                                                                                                                                                    )
                                                                                                                                                                  ]
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      {
                                                                                                                                                                        Cons
                                                                                                                                                                        (con integer)
                                                                                                                                                                      }
                                                                                                                                                                      (con
                                                                                                                                                                        100
                                                                                                                                                                      )
                                                                                                                                                                    ]
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        {
                                                                                                                                                                          Cons
                                                                                                                                                                          (con integer)
                                                                                                                                                                        }
                                                                                                                                                                        (con
                                                                                                                                                                          32
                                                                                                                                                                        )
                                                                                                                                                                      ]
                                                                                                                                                                      [
                                                                                                                                                                        [
                                                                                                                                                                          {
                                                                                                                                                                            Cons
                                                                                                                                                                            (con integer)
                                                                                                                                                                          }
                                                                                                                                                                          (con
                                                                                                                                                                            83
                                                                                                                                                                          )
                                                                                                                                                                        ]
                                                                                                                                                                        [
                                                                                                                                                                          [
                                                                                                                                                                            {
                                                                                                                                                                              Cons
                                                                                                                                                                              (con integer)
                                                                                                                                                                            }
                                                                                                                                                                            (con
                                                                                                                                                                              77
                                                                                                                                                                            )
                                                                                                                                                                          ]
                                                                                                                                                                          [
                                                                                                                                                                            [
                                                                                                                                                                              {
                                                                                                                                                                                Cons
                                                                                                                                                                                (con integer)
                                                                                                                                                                              }
                                                                                                                                                                              (con
                                                                                                                                                                                46
                                                                                                                                                                              )
                                                                                                                                                                            ]
                                                                                                                                                                            [
                                                                                                                                                                              [
                                                                                                                                                                                {
                                                                                                                                                                                  Cons
                                                                                                                                                                                  (con integer)
                                                                                                                                                                                }
                                                                                                                                                                                (con
                                                                                                                                                                                  116
                                                                                                                                                                                )
                                                                                                                                                                              ]
                                                                                                                                                                              [
                                                                                                                                                                                [
                                                                                                                                                                                  {
                                                                                                                                                                                    Cons
                                                                                                                                                                                    (con integer)
                                                                                                                                                                                  }
                                                                                                                                                                                  (con
                                                                                                                                                                                    114
                                                                                                                                                                                  )
                                                                                                                                                                                ]
                                                                                                                                                                                [
                                                                                                                                                                                  [
                                                                                                                                                                                    {
                                                                                                                                                                                      Cons
                                                                                                                                                                                      (con integer)
                                                                                                                                                                                    }
                                                                                                                                                                                    (con
                                                                                                                                                                                      97
                                                                                                                                                                                    )
                                                                                                                                                                                  ]
                                                                                                                                                                                  [
                                                                                                                                                                                    [
                                                                                                                                                                                      {
                                                                                                                                                                                        Cons
                                                                                                                                                                                        (con integer)
                                                                                                                                                                                      }
                                                                                                                                                                                      (con
                                                                                                                                                                                        110
                                                                                                                                                                                      )
                                                                                                                                                                                    ]
                                                                                                                                                                                    [
                                                                                                                                                                                      [
                                                                                                                                                                                        {
                                                                                                                                                                                          Cons
                                                                                                                                                                                          (con integer)
                                                                                                                                                                                        }
                                                                                                                                                                                        (con
                                                                                                                                                                                          115
                                                                                                                                                                                        )
                                                                                                                                                                                      ]
                                                                                                                                                                                      [
                                                                                                                                                                                        [
                                                                                                                                                                                          {
                                                                                                                                                                                            Cons
                                                                                                                                                                                            (con integer)
                                                                                                                                                                                          }
                                                                                                                                                                                          (con
                                                                                                                                                                                            105
                                                                                                                                                                                          )
                                                                                                                                                                                        ]
                                                                                                                                                                                        [
                                                                                                                                                                                          [
                                                                                                                                                                                            {
                                                                                                                                                                                              Cons
                                                                                                                                                                                              (con integer)
                                                                                                                                                                                            }
                                                                                                                                                                                            (con
                                                                                                                                                                                              116
                                                                                                                                                                                            )
                                                                                                                                                                                          ]
                                                                                                                                                                                          [
                                                                                                                                                                                            [
                                                                                                                                                                                              {
                                                                                                                                                                                                Cons
                                                                                                                                                                                                (con integer)
                                                                                                                                                                                              }
                                                                                                                                                                                              (con
                                                                                                                                                                                                105
                                                                                                                                                                                              )
                                                                                                                                                                                            ]
                                                                                                                                                                                            [
                                                                                                                                                                                              [
                                                                                                                                                                                                {
                                                                                                                                                                                                  Cons
                                                                                                                                                                                                  (con integer)
                                                                                                                                                                                                }
                                                                                                                                                                                                (con
                                                                                                                                                                                                  111
                                                                                                                                                                                                )
                                                                                                                                                                                              ]
                                                                                                                                                                                              [
                                                                                                                                                                                                [
                                                                                                                                                                                                  {
                                                                                                                                                                                                    Cons
                                                                                                                                                                                                    (con integer)
                                                                                                                                                                                                  }
                                                                                                                                                                                                  (con
                                                                                                                                                                                                    110
                                                                                                                                                                                                  )
                                                                                                                                                                                                ]
                                                                                                                                                                                                {
                                                                                                                                                                                                  Nil
                                                                                                                                                                                                  (con integer)
                                                                                                                                                                                                }
                                                                                                                                                                                              ]
                                                                                                                                                                                            ]
                                                                                                                                                                                          ]
                                                                                                                                                                                        ]
                                                                                                                                                                                      ]
                                                                                                                                                                                    ]
                                                                                                                                                                                  ]
                                                                                                                                                                                ]
                                                                                                                                                                              ]
                                                                                                                                                                            ]
                                                                                                                                                                          ]
                                                                                                                                                                        ]
                                                                                                                                                                      ]
                                                                                                                                                                    ]
                                                                                                                                                                  ]
                                                                                                                                                                ]
                                                                                                                                                              ]
                                                                                                                                                            ]
                                                                                                                                                          ]
                                                                                                                                                        ]
                                                                                                                                                      ]
                                                                                                                                                    ]
                                                                                                                                                  ]
                                                                                                                                                ]
                                                                                                                                              )
                                                                                                                                            )
                                                                                                                                            [
                                                                                                                                              [
                                                                                                                                                {
                                                                                                                                                  [
                                                                                                                                                    GameState_match
                                                                                                                                                    ds
                                                                                                                                                  ]
                                                                                                                                                  GameState
                                                                                                                                                }
                                                                                                                                                (lam
                                                                                                                                                  s
                                                                                                                                                  (con bytestring)
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        [
                                                                                                                                                          GameInput_match
                                                                                                                                                          ds
                                                                                                                                                        ]
                                                                                                                                                        GameState
                                                                                                                                                      }
                                                                                                                                                      (lam
                                                                                                                                                        tn
                                                                                                                                                        (con bytestring)
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                [
                                                                                                                                                                  Bool_match
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        checkBinRel
                                                                                                                                                                        equalsInteger
                                                                                                                                                                      ]
                                                                                                                                                                      [
                                                                                                                                                                        tokenVal
                                                                                                                                                                        tn
                                                                                                                                                                      ]
                                                                                                                                                                    ]
                                                                                                                                                                    ww
                                                                                                                                                                  ]
                                                                                                                                                                ]
                                                                                                                                                                (fun Unit GameState)
                                                                                                                                                              }
                                                                                                                                                              (lam
                                                                                                                                                                thunk
                                                                                                                                                                Unit
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    Locked
                                                                                                                                                                    tn
                                                                                                                                                                  ]
                                                                                                                                                                  s
                                                                                                                                                                ]
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            (lam
                                                                                                                                                              thunk
                                                                                                                                                              Unit
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  error
                                                                                                                                                                  GameState
                                                                                                                                                                }
                                                                                                                                                                Unit
                                                                                                                                                              ]
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          Unit
                                                                                                                                                        ]
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                    (lam
                                                                                                                                                      ipv
                                                                                                                                                      (con bytestring)
                                                                                                                                                      (lam
                                                                                                                                                        ipv
                                                                                                                                                        (con bytestring)
                                                                                                                                                        [
                                                                                                                                                          fail
                                                                                                                                                          (abs
                                                                                                                                                            e
                                                                                                                                                            (type)
                                                                                                                                                            (lam
                                                                                                                                                              thunk
                                                                                                                                                              Unit
                                                                                                                                                              (error
                                                                                                                                                                e
                                                                                                                                                              )
                                                                                                                                                            )
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                      )
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                )
                                                                                                                                              ]
                                                                                                                                              (lam
                                                                                                                                                tn
                                                                                                                                                (con bytestring)
                                                                                                                                                (lam
                                                                                                                                                  currentSecret
                                                                                                                                                  (con bytestring)
                                                                                                                                                  [
                                                                                                                                                    [
                                                                                                                                                      {
                                                                                                                                                        [
                                                                                                                                                          GameInput_match
                                                                                                                                                          ds
                                                                                                                                                        ]
                                                                                                                                                        GameState
                                                                                                                                                      }
                                                                                                                                                      (lam
                                                                                                                                                        ipv
                                                                                                                                                        (con bytestring)
                                                                                                                                                        [
                                                                                                                                                          fail
                                                                                                                                                          (abs
                                                                                                                                                            e
                                                                                                                                                            (type)
                                                                                                                                                            (lam
                                                                                                                                                              thunk
                                                                                                                                                              Unit
                                                                                                                                                              (error
                                                                                                                                                                e
                                                                                                                                                              )
                                                                                                                                                            )
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                      )
                                                                                                                                                    ]
                                                                                                                                                    (lam
                                                                                                                                                      theGuess
                                                                                                                                                      (con bytestring)
                                                                                                                                                      (lam
                                                                                                                                                        nextSecret
                                                                                                                                                        (con bytestring)
                                                                                                                                                        [
                                                                                                                                                          [
                                                                                                                                                            [
                                                                                                                                                              {
                                                                                                                                                                [
                                                                                                                                                                  Bool_match
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      equalsByteString
                                                                                                                                                                      currentSecret
                                                                                                                                                                    ]
                                                                                                                                                                    [
                                                                                                                                                                      sha2_
                                                                                                                                                                      theGuess
                                                                                                                                                                    ]
                                                                                                                                                                  ]
                                                                                                                                                                ]
                                                                                                                                                                (fun Unit GameState)
                                                                                                                                                              }
                                                                                                                                                              (lam
                                                                                                                                                                thunk
                                                                                                                                                                Unit
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      {
                                                                                                                                                                        [
                                                                                                                                                                          Bool_match
                                                                                                                                                                          [
                                                                                                                                                                            [
                                                                                                                                                                              [
                                                                                                                                                                                checkBinRel
                                                                                                                                                                                greaterThanEqInteger
                                                                                                                                                                              ]
                                                                                                                                                                              [
                                                                                                                                                                                wvalueSpent
                                                                                                                                                                                ww
                                                                                                                                                                              ]
                                                                                                                                                                            ]
                                                                                                                                                                            [
                                                                                                                                                                              tokenVal
                                                                                                                                                                              tn
                                                                                                                                                                            ]
                                                                                                                                                                          ]
                                                                                                                                                                        ]
                                                                                                                                                                        (fun Unit GameState)
                                                                                                                                                                      }
                                                                                                                                                                      (lam
                                                                                                                                                                        thunk
                                                                                                                                                                        Unit
                                                                                                                                                                        [
                                                                                                                                                                          [
                                                                                                                                                                            [
                                                                                                                                                                              {
                                                                                                                                                                                [
                                                                                                                                                                                  Bool_match
                                                                                                                                                                                  [
                                                                                                                                                                                    [
                                                                                                                                                                                      [
                                                                                                                                                                                        checkBinRel
                                                                                                                                                                                        equalsInteger
                                                                                                                                                                                      ]
                                                                                                                                                                                      {
                                                                                                                                                                                        Nil
                                                                                                                                                                                        [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                                                                                      }
                                                                                                                                                                                    ]
                                                                                                                                                                                    ww
                                                                                                                                                                                  ]
                                                                                                                                                                                ]
                                                                                                                                                                                (fun Unit GameState)
                                                                                                                                                                              }
                                                                                                                                                                              (lam
                                                                                                                                                                                thunk
                                                                                                                                                                                Unit
                                                                                                                                                                                [
                                                                                                                                                                                  [
                                                                                                                                                                                    Locked
                                                                                                                                                                                    tn
                                                                                                                                                                                  ]
                                                                                                                                                                                  nextSecret
                                                                                                                                                                                ]
                                                                                                                                                                              )
                                                                                                                                                                            ]
                                                                                                                                                                            (lam
                                                                                                                                                                              thunk
                                                                                                                                                                              Unit
                                                                                                                                                                              [
                                                                                                                                                                                {
                                                                                                                                                                                  error
                                                                                                                                                                                  GameState
                                                                                                                                                                                }
                                                                                                                                                                                Unit
                                                                                                                                                                              ]
                                                                                                                                                                            )
                                                                                                                                                                          ]
                                                                                                                                                                          Unit
                                                                                                                                                                        ]
                                                                                                                                                                      )
                                                                                                                                                                    ]
                                                                                                                                                                    (lam
                                                                                                                                                                      thunk
                                                                                                                                                                      Unit
                                                                                                                                                                      [
                                                                                                                                                                        {
                                                                                                                                                                          error
                                                                                                                                                                          GameState
                                                                                                                                                                        }
                                                                                                                                                                        Unit
                                                                                                                                                                      ]
                                                                                                                                                                    )
                                                                                                                                                                  ]
                                                                                                                                                                  Unit
                                                                                                                                                                ]
                                                                                                                                                              )
                                                                                                                                                            ]
                                                                                                                                                            (lam
                                                                                                                                                              thunk
                                                                                                                                                              Unit
                                                                                                                                                              [
                                                                                                                                                                {
                                                                                                                                                                  error
                                                                                                                                                                  GameState
                                                                                                                                                                }
                                                                                                                                                                Unit
                                                                                                                                                              ]
                                                                                                                                                            )
                                                                                                                                                          ]
                                                                                                                                                          Unit
                                                                                                                                                        ]
                                                                                                                                                      )
                                                                                                                                                    )
                                                                                                                                                  ]
                                                                                                                                                )
                                                                                                                                              )
                                                                                                                                            ]
                                                                                                                                          )
                                                                                                                                        )
                                                                                                                                      )
                                                                                                                                    ]
                                                                                                                                    w
                                                                                                                                  ]
                                                                                                                                  ww
                                                                                                                                ]
                                                                                                                                ww
                                                                                                                              ]
                                                                                                                              ww
                                                                                                                            ]
                                                                                                                            ww
                                                                                                                          ]
                                                                                                                          ww
                                                                                                                        ]
                                                                                                                      )
                                                                                                                    )
                                                                                                                  )
                                                                                                                )
                                                                                                              )
                                                                                                            )
                                                                                                          )
                                                                                                        )
                                                                                                      )
                                                                                                    )
                                                                                                    (let
                                                                                                      (nonrec
                                                                                                      )
                                                                                                      (datatypebind
                                                                                                        (datatype
                                                                                                          (tyvardecl
                                                                                                            HashedDataScript
                                                                                                            (fun (type) (type))
                                                                                                          )
                                                                                                          (tyvardecl
                                                                                                            a
                                                                                                            (type)
                                                                                                          )
                                                                                                          HashedDataScript_match
                                                                                                          (vardecl
                                                                                                            HashedDataScript
                                                                                                            (fun a (fun (con bytestring) [HashedDataScript a]))
                                                                                                          )
                                                                                                        )
                                                                                                      )
                                                                                                      (let
                                                                                                        (nonrec
                                                                                                        )
                                                                                                        (datatypebind
                                                                                                          (datatype
                                                                                                            (tyvardecl
                                                                                                              Interval
                                                                                                              (fun (type) (type))
                                                                                                            )
                                                                                                            (tyvardecl
                                                                                                              a
                                                                                                              (type)
                                                                                                            )
                                                                                                            Interval_match
                                                                                                            (vardecl
                                                                                                              Interval
                                                                                                              (fun [Maybe a] (fun [Maybe a] [Interval a]))
                                                                                                            )
                                                                                                          )
                                                                                                        )
                                                                                                        (let
                                                                                                          (nonrec
                                                                                                          )
                                                                                                          (datatypebind
                                                                                                            (datatype
                                                                                                              (tyvardecl
                                                                                                                PendingTx
                                                                                                                (type)
                                                                                                              )
                                                                                                              
                                                                                                              PendingTx_match
                                                                                                              (vardecl
                                                                                                                PendingTx
                                                                                                                (fun [List PendingTxIn] (fun [List PendingTxOut] (fun (con integer) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun PendingTxIn (fun [Interval (con integer)] (fun [List [[Tuple2 (con bytestring)] (con bytestring)]] (fun (con bytestring) PendingTx))))))))
                                                                                                              )
                                                                                                            )
                                                                                                          )
                                                                                                          (let
                                                                                                            (nonrec
                                                                                                            )
                                                                                                            (datatypebind
                                                                                                              (datatype
                                                                                                                (tyvardecl
                                                                                                                  Sealed
                                                                                                                  (fun (type) (type))
                                                                                                                )
                                                                                                                (tyvardecl
                                                                                                                  a
                                                                                                                  (type)
                                                                                                                )
                                                                                                                Sealed_match
                                                                                                                (vardecl
                                                                                                                  Seal
                                                                                                                  (fun a [Sealed a])
                                                                                                                )
                                                                                                              )
                                                                                                            )
                                                                                                            (let
                                                                                                              (nonrec
                                                                                                              )
                                                                                                              (termbind
                                                                                                                (strict
                                                                                                                )
                                                                                                                (vardecl
                                                                                                                  mkValidator
                                                                                                                  (fun GameState (fun [[Tuple2 GameInput] [Sealed [HashedDataScript GameState]]] (fun PendingTx Bool)))
                                                                                                                )
                                                                                                                (lam
                                                                                                                  w
                                                                                                                  GameState
                                                                                                                  (lam
                                                                                                                    w
                                                                                                                    [[Tuple2 GameInput] [Sealed [HashedDataScript GameState]]]
                                                                                                                    (lam
                                                                                                                      w
                                                                                                                      PendingTx
                                                                                                                      [
                                                                                                                        {
                                                                                                                          [
                                                                                                                            {
                                                                                                                              {
                                                                                                                                Tuple2_match
                                                                                                                                GameInput
                                                                                                                              }
                                                                                                                              [Sealed [HashedDataScript GameState]]
                                                                                                                            }
                                                                                                                            w
                                                                                                                          ]
                                                                                                                          Bool
                                                                                                                        }
                                                                                                                        (lam
                                                                                                                          ww
                                                                                                                          GameInput
                                                                                                                          (lam
                                                                                                                            ww
                                                                                                                            [Sealed [HashedDataScript GameState]]
                                                                                                                            [
                                                                                                                              {
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    Sealed_match
                                                                                                                                    [HashedDataScript GameState]
                                                                                                                                  }
                                                                                                                                  ww
                                                                                                                                ]
                                                                                                                                Bool
                                                                                                                              }
                                                                                                                              (lam
                                                                                                                                ww
                                                                                                                                [HashedDataScript GameState]
                                                                                                                                [
                                                                                                                                  {
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        HashedDataScript_match
                                                                                                                                        GameState
                                                                                                                                      }
                                                                                                                                      ww
                                                                                                                                    ]
                                                                                                                                    Bool
                                                                                                                                  }
                                                                                                                                  (lam
                                                                                                                                    ww
                                                                                                                                    GameState
                                                                                                                                    (lam
                                                                                                                                      ww
                                                                                                                                      (con bytestring)
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          [
                                                                                                                                            PendingTx_match
                                                                                                                                            w
                                                                                                                                          ]
                                                                                                                                          Bool
                                                                                                                                        }
                                                                                                                                        (lam
                                                                                                                                          ww
                                                                                                                                          [List PendingTxIn]
                                                                                                                                          (lam
                                                                                                                                            ww
                                                                                                                                            [List PendingTxOut]
                                                                                                                                            (lam
                                                                                                                                              ww
                                                                                                                                              (con integer)
                                                                                                                                              (lam
                                                                                                                                                ww
                                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                                                (lam
                                                                                                                                                  ww
                                                                                                                                                  PendingTxIn
                                                                                                                                                  (lam
                                                                                                                                                    ww
                                                                                                                                                    [Interval (con integer)]
                                                                                                                                                    (lam
                                                                                                                                                      ww
                                                                                                                                                      [List [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                                                                                      (lam
                                                                                                                                                        ww
                                                                                                                                                        (con bytestring)
                                                                                                                                                        [
                                                                                                                                                          {
                                                                                                                                                            [
                                                                                                                                                              PendingTxIn_match
                                                                                                                                                              ww
                                                                                                                                                            ]
                                                                                                                                                            Bool
                                                                                                                                                          }
                                                                                                                                                          (lam
                                                                                                                                                            ww
                                                                                                                                                            PendingTxOutRef
                                                                                                                                                            (lam
                                                                                                                                                              ww
                                                                                                                                                              [Maybe [[Tuple2 (con bytestring)] (con bytestring)]]
                                                                                                                                                              (lam
                                                                                                                                                                ww
                                                                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                                                                [
                                                                                                                                                                  [
                                                                                                                                                                    [
                                                                                                                                                                      [
                                                                                                                                                                        [
                                                                                                                                                                          [
                                                                                                                                                                            [
                                                                                                                                                                              [
                                                                                                                                                                                wmkValidator
                                                                                                                                                                                w
                                                                                                                                                                              ]
                                                                                                                                                                              ww
                                                                                                                                                                            ]
                                                                                                                                                                            ww
                                                                                                                                                                          ]
                                                                                                                                                                          ww
                                                                                                                                                                        ]
                                                                                                                                                                        ww
                                                                                                                                                                      ]
                                                                                                                                                                      ww
                                                                                                                                                                    ]
                                                                                                                                                                    ww
                                                                                                                                                                  ]
                                                                                                                                                                  ww
                                                                                                                                                                ]
                                                                                                                                                              )
                                                                                                                                                            )
                                                                                                                                                          )
                                                                                                                                                        ]
                                                                                                                                                      )
                                                                                                                                                    )
                                                                                                                                                  )
                                                                                                                                                )
                                                                                                                                              )
                                                                                                                                            )
                                                                                                                                          )
                                                                                                                                        )
                                                                                                                                      ]
                                                                                                                                    )
                                                                                                                                  )
                                                                                                                                ]
                                                                                                                              )
                                                                                                                            ]
                                                                                                                          )
                                                                                                                        )
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  )
                                                                                                                )
                                                                                                              )
                                                                                                              mkValidator
                                                                                                            )
                                                                                                          )
                                                                                                        )
                                                                                                      )
                                                                                                    )
                                                                                                  )
                                                                                                )
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                    )
                                                                                  )
                                                                                )
                                                                              )
                                                                            )
                                                                          )
                                                                        )
                                                                      )
                                                                    )
                                                                  )
                                                                )
                                                              )
                                                            )
                                                          )
                                                        )
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
)
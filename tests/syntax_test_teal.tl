-- SYNTAX TEST "Packages/tealsyntax/teal.sublime-syntax" 




    -- Comment
--  ^^ punctuation.definition.comment.teal
--     ^^^^^^^ comment.line.teal

    aaaaa
--  ^ variable.other.teal

    1
--  ^ constant.numeric.teal

    1.1
--  ^^^ constant.numeric.teal

    "str"
--  ^ string.quoted.double.teal punctuation.definition.string.begin.teal
--   ^^^^ string.quoted.double.teal
--      ^ punctuation.defintion.string.end.teal

    "-- asdf"
--      ^^^^ string.quoted.double.teal

    'str'
--  ^ string.quoted.single.teal punctuation.definition.string.begin.teal
--      ^ string.quoted.single.teal punctuation.defintion.string.end.teal
--  ^^^^^ string.quoted.single.teal meta.string.teal


    if 
--  ^^ keyword.control.conditional.teal

    for 
--  ^^^ keyword.control.loop.teal

    a = 1
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal
--      ^ constant.numeric.teal

    a = 1 + 1 - 1 * 1 / 1
--        ^ keyword.operator.arithmetic.teal 
--            ^ keyword.operator.arithmetic.teal
--                ^ keyword.operator.arithmetic.teal
--                    ^ keyword.operator.arithmetic.teal
 
    a = (1 + 1) 
--      ^ meta.group.teal punctuation.section.group.begin.teal
--       ^ meta.group.teal constant.numeric.teal
--            ^ meta.group.teal punctuation.section.group.end.teal

    a = (1 + (b / 2) - 1) * c
--           ^ meta.group.teal meta.group.teal punctuation.section.group.begin.teal
--                          ^ variable.other.teal

    foo()
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal punctuation.section.group.begin.teal
--      ^ meta.function-call.arguments.teal punctuation.section.group.end.teal

    foo( bar(x + 22) + 1)
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--       ^^^ meta.function-call.arguments.teal meta.group.teal meta.function-call.teal variable.function.teal
--          ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--           ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal variable.other.teal

    a[1]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal 
--    ^ meta.brackets.teal constant.numeric.teal
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal


    a_1
--  ^^^ variable.other.teal
    


    (get_callback)(22) 
--  ^ meta.group.teal punctuation.section.group.begin.teal
--   ^^^^^^^^^^^^ meta.group.teal variable.other.teal
--               ^ meta.group.teal punctuation.section.group.end.teal
--                ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--                 ^^ meta.function-call.arguments.teal meta.group.teal constant.numeric.teal
--                   ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal


    foo(1, 2, bar(1, 2))
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--      ^ meta.function-call.arguments.teal meta.group.teal constant.numeric.teal
--       ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal
--         ^ meta.function-call.arguments.teal meta.group.teal constant.numeric.teal
--                ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal constant.numeric.teal

    foo()()
--  ^^^ meta.function-call.teal variable.function.teal
--       ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    (array_var)[22]
--  ^ meta.group.teal punctuation.section.group.begin.teal
--   ^^^^^^^^^ meta.group.teal variable.other.teal
--            ^ meta.group.teal punctuation.section.group.end.teal
--             ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--              ^^ meta.brackets.teal constant.numeric.teal
--                ^ meta.brackets.teal punctuation.section.brackets.end.teal


    a["foo"]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^ meta.brackets.teal string.quoted.double.teal meta.string.teal punctuation.definition.string.begin.teal
--     ^^^^ meta.brackets.teal string.quoted.double.teal meta.string.teal
--         ^ meta.brackets.teal punctuation.section.brackets.end.teal

    (((try())))    
--  ^ meta.group.teal punctuation.section.group.begin.teal
--     ^^^ meta.group.teal meta.group.teal meta.group.teal meta.function-call.teal variable.function.teal

    a[1][1]
--  ^ variable.other.teal
--   ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--    ^ meta.brackets.teal constant.numeric.teal
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal
--      ^ meta.brackets.teal punctuation.section.brackets.begin.teal
--       ^ meta.brackets.teal constant.numeric.teal
--        ^ meta.brackets.teal punctuation.section.brackets.end.teal

    a[1]()
--     ^ meta.brackets.teal punctuation.section.brackets.end.teal
--      ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    a()[1]
--  ^ meta.function-call.teal variable.function.teal
--   ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--     ^ meta.brackets.teal punctuation.section.brackets.begin.teal 

    foo.bar
--  ^^^ variable.other.teal
--     ^ meta.property.teal punctuation.accessor.teal
--      ^^^ meta.property.teal variable.other.teal

    foo.bar()
--  ^^^ meta.property.teal variable.other.teal
--     ^ meta.property.teal punctuation.accessor.teal
--      ^^^ meta.property.teal meta.function-call.teal variable.function.teal
--         ^ meta.group.teal punctuation.section.group.begin.teal


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
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--      ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal

    foo( bar(x + 22) + 1)
--  ^^^ meta.function-call.teal variable.function.teal
--     ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal
--       ^^^ meta.function-call.arguments.teal meta.group.teal meta.function-call.teal variable.function.teal
--          ^ meta.function-call.arguments.teal meta.group.teal meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal




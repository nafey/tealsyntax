-- SYNTAX TEST "Packages/tealsyntax/teal.sublime-syntax" 




    -- Comment
--  ^^ punctuation.definition.comment.teal
--     ^^^^^^^ comment.line.teal

    aaaaa
--  ^ variable.other.teal

    1
--  ^ constant.numeric.teal
    -1
--  ^ keyword.operator.arithmetic.teal


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

    a = 1
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal
--      ^ constant.numeric.teal

    a = 1 + 1 - 1 * 1 / 1 % 1
--        ^ keyword.operator.arithmetic.teal 
--            ^ keyword.operator.arithmetic.teal
--                ^ keyword.operator.arithmetic.teal
--                    ^ keyword.operator.arithmetic.teal
--                        ^ keyword.operator.arithmetic.teal
 
    a = (1 + 1) 
--      ^ meta.group.teal punctuation.section.group.begin.teal
--       ^ meta.group.teal constant.numeric.teal
--            ^ meta.group.teal punctuation.section.group.end.teal

    a = (1 + (b / 2) - 1) * c
--           ^ meta.group.teal meta.group.teal punctuation.section.group.begin.teal
--                          ^ variable.other.teal
    a = true
--      ^^^^ constant.language.boolean.teal

    a = nil
--      ^^^ constant.language.null.teal

    a = 1 // 1
--        ^^ keyword.operator.arithmetic.teal

    2 >> 2 << 2 & 2 | 2 ~ 2;    
--    ^^ keyword.operator.bitwise.teal
--                      ^ keyword.operator.bitwise.teal
    
    1 .. 2
--    ^^ keyword.operator.concatenation.teal

    true and false or nil;
--       ^^^ keyword.operator.logical.teal
--                 ^^ keyword.operator.logical.teal

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
--     ^ punctuation.accessor.teal
--      ^^^ meta.property.teal variable.other.teal

    foo.bar.baz.try
--            ^ meta.property.teal variable.other.teal

    foo.bar()
--  ^^^ meta.property.teal variable.other.teal
--     ^ punctuation.accessor.teal
--      ^^^ meta.property.teal meta.function-call.teal variable.function.teal
--         ^ meta.group.teal punctuation.section.group.begin.teal

    foo.bar().baz()
--            ^^^ meta.property.teal meta.function-call.teal variable.function.teal

    foo.bar(1, 2)
--          ^ meta.group.teal constant.numeric.teal
--           ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal           

    foo.bar().baz(1, 2)
--                ^ meta.function-call.arguments.teal meta.group.teal constant.numeric.teal
--                 ^ meta.function-call.arguments.teal meta.group.teal punctuation.separator.comma.teal

    foo.bar()[12]
--          ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal
--           ^ meta.brackets.teal punctuation.section.brackets.begin.teal

    foo.bar()()
--          ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.end.teal
--           ^ meta.function-call.arguments.teal meta.group.teal punctuation.section.group.begin.teal

    foo:bar()
--     ^ punctuation.accessor.teal

    ;
--  ^ punctuation.terminator.statement.teal

    {}
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.teal punctuation.section.block.end.teal
    
    {a, b}
--    ^ meta.mapping.teal punctuation.separator.field.teal

    {a; b}
--    ^ meta.mapping.teal punctuation.separator.field.teal

    {[a] = 1, b = 23, c = "str"}
--  ^ meta.mapping.teal punctuation.section.block.begin.teal
--   ^ meta.mapping.teal meta.brackets.teal punctuation.section.brackets.begin.teal    

    {a = foo()}
--       ^^^ meta.mapping.teal meta.function-call.teal variable.function.teal


    #a
--  ^ keyword.operator.length.teal

    not a
--  ^^^ keyword.operator.logical.teal

    a = true 
--  ^ variable.other.teal
--    ^ keyword.operator.assignment.teal
--      ^^^^ constant.language.boolean.teal

    if true then
--  ^^ keyword.control.conditional.teal
--     ^^^^ constant.language.boolean.teal
        a = 1
--      ^ meta.block.teal variable.other.teal
    end


    function foo(a, b, ...)
        a = 1
    end


    if true then 
        if true then
            if true then

            end
        end
    end
  
    if (a) then 
        a = 1 
    end

    if (true) then
        function foo()
            b = 1
        end

    end


    {[a] = 1, b = 23, c = "str"}





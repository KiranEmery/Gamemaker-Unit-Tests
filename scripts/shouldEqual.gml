/// shouldEqual(input1, input2, input3);
/// @description Compares the value of two inputs

if(argument1 == argument2) {
    result = instance_create(0,0,test_result);
    with (result) {
        pass = true;
        message = string(argument0) + " - Passed";
    }
    return result ;
}

show_question(string(argument0) + " FAILED") // need to sort out a on screen logging system
result = instance_create(0,0,test_result);
with (result) {
    pass = false;
    message = "Failed - expected " + string(argument1) + " and got " + string(argument2);
}

return result;

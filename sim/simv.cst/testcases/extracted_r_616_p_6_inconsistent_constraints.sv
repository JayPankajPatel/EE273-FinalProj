class c_616_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_616_6;
    c_616_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzx11010111xx0z1zzzz0100xzzz0zxzzxzxxzzxxzzzzzzxxzxxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

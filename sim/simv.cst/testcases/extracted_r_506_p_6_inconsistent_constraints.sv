class c_506_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_506_6;
    c_506_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0010xxzzxx10101zxz10z110x000xxxzxxzzzxxxxxxzxzxzzzzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

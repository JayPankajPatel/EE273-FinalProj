class c_786_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_786_6;
    c_786_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzzx11xx0111x00z0zz1x01zxz0z0zzzxzzzzxzxzxzzxzxzzxzxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

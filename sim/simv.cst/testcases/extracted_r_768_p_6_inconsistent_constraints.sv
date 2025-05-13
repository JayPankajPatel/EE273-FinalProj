class c_768_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_768_6;
    c_768_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xx0xxzz1z1xzz0xz0110z111z0101xxxzxzzxxxzxzxxzzzzxxzzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

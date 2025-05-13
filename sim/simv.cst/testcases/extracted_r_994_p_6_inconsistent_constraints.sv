class c_994_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_994_6;
    c_994_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0xz00xzzx1x0z111x00z0xzxz11xxzxzxxzxzxzxzzzzzxxzzzzzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

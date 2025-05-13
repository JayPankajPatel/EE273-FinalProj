class c_26_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_26_6;
    c_26_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zxz0z1z1zz1xz01xzzxzz0zxz1xxxxxxxzxxxzzxxxxzxxxxzxxzzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

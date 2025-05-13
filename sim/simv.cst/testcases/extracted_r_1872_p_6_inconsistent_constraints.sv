class c_1872_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1872_6;
    c_1872_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110xx0x11x1x1z1x0zxzz0z1z1zz0x0xxxzzxxzzxzxzxzxzzzzzxxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

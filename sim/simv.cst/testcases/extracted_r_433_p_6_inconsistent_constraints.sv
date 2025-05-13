class c_433_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_433_6;
    c_433_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z1xz00z0zx1zzzx11x1x0zxzxxx1xzzxxzxzxzzxxzzzxxzzxxzzzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

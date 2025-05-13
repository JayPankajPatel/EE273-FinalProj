class c_641_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_641_6;
    c_641_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01zz10111x0zxxz1x01x0x1xz1zz1xxzxxxzxzxzxxzxxxxzxxxxxxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

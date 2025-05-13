class c_1708_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1708_6;
    c_1708_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz000x11x10xz0zx0x0zz10z11110xxxxzzxzxxxzzxzzxxzxzxxxzxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

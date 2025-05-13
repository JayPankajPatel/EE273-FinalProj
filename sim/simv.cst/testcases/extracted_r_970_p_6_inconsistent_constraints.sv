class c_970_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_970_6;
    c_970_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx100xx0x0z1xzxxxzxxz0zz111z00x0xzxzzzxxzzzxzzzxzzxzxzzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_325_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_325_6;
    c_325_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10zzzx0x11010x1z00x1xzx1001zxxxxzzzxzxzzxzxxzxzzzxxzzzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

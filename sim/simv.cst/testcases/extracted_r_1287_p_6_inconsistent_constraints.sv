class c_1287_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1287_6;
    c_1287_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0x01z11x1010xxx10zxz11x10011zzzzxxxxxxxxxxxxzzxzxzzxxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

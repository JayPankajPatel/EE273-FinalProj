class c_115_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_115_6;
    c_115_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z011zxxxxzx0z110xx0x01z0x1011zzxxzxxzzzxxxzxxzzxxxzzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

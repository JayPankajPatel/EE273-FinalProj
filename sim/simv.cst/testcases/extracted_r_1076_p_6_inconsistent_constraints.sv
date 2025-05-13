class c_1076_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1076_6;
    c_1076_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0x101x010x0xxz0x0x00x0z11xzx1zxxzxxxzxzxzzzxxxxxzzzzxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

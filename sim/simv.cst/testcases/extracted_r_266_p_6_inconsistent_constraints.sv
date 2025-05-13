class c_266_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_266_6;
    c_266_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx1x1111010zx1zx0x1010x011zz1zxxzxxxxxzzxxxzzxxzxzxzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

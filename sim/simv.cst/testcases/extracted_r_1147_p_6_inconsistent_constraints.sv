class c_1147_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1147_6;
    c_1147_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zx110zx0z0x1z0101x0x11zzx0xzzxzxxxxxzzxxzxzzzzzzzzzzxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

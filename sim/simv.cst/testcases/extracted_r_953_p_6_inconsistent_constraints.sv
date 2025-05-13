class c_953_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_953_6;
    c_953_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01z1z1110xz010zzzz1x1x00zzx000xzzzxzxzxxxxxzzxzzzxzxzzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

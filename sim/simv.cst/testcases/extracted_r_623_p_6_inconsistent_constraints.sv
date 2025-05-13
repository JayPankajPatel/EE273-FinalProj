class c_623_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_623_6;
    c_623_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz1x0x011x1zz10z0zx0zx01x1110xxzzzzxxzxxxzzxxxzxxzzzzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

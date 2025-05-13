class c_42_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_42_6;
    c_42_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx1z1xxzzx10xxx010z1x1zx1xx1zzxxzzxzxzxzxxxxzzzzxzxxzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_376_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_376_6;
    c_376_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xxz0zzx1110zzz1x1z1xx0zzzz011zzzzxxzzxxzxxzzxxxzzzzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

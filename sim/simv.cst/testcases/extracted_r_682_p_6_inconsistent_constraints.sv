class c_682_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_682_6;
    c_682_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzx0010z1z11z00xzx1x0x10zxxz11zxxzzzxxzxxzzxzxzzzzzxxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

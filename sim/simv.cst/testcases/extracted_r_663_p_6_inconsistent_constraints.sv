class c_663_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_663_6;
    c_663_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1zzzx10xxzxzzxzx11xxzzz01x0zzxzxxzxzzxxzzzxxxzxxzzxxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

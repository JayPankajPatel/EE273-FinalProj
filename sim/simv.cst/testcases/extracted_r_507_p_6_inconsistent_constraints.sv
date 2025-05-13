class c_507_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_507_6;
    c_507_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10xx100011x11zx1z00zz10z00zx1zxxzzxzxxzxxzxzxzxzzzxzxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

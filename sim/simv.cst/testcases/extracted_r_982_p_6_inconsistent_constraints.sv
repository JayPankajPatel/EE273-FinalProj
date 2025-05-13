class c_982_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_982_6;
    c_982_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxxzxzx111x11001z10z1x111z100zzxxxzzzxzzxzxxzzxzzxxzxxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

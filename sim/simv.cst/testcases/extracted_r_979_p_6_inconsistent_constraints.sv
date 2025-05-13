class c_979_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_979_6;
    c_979_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx00zxxzxx1zz0zz1z0x01xz0z101zzxzzxxxxxzzzxxxzxzzzzxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

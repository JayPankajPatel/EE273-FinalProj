class c_442_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_442_6;
    c_442_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x011z1zz1z1x10zx1x000x00zzxxx1xzxxxzxxxzzxzxzxzxzxzzxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

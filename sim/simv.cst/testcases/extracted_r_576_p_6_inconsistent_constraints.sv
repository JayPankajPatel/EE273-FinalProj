class c_576_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_576_6;
    c_576_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x01xz1z0z00x1z1x110xzx000x110xxxzxxxxxxxxxxxxzzxzxxzzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

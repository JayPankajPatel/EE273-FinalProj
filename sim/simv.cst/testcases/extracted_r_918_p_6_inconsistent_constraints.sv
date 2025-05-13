class c_918_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_918_6;
    c_918_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011zx00xx101z0z1x1101111z0z101zzzzzzzzzxxxxzzzxzxzzzxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

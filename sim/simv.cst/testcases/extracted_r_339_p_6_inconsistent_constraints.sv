class c_339_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_339_6;
    c_339_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0100011xzz00xz100z100zzz11x11zxxzzxxxxzzzzxxzzzzzzxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

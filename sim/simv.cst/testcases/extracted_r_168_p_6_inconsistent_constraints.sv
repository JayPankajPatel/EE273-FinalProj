class c_168_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_168_6;
    c_168_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z00zzzz1x0z00110z01zxzzx011x11xxzzzzzxxxzzxzzzzxzzxzxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

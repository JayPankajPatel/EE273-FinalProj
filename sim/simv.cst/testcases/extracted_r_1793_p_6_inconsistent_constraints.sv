class c_1793_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1793_6;
    c_1793_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxx1xxx1000z01011x11xz0x10101zxzxxxzxzxzxxzzxxxzzxzzzxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

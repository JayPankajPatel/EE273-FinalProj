class c_635_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_635_6;
    c_635_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0x1z1101x0z1xxzz1xzzz0zz1zxxzzxxzxzzxzzxxzxzxxxzzxxxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

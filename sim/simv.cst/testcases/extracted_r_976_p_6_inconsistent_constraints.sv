class c_976_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_976_6;
    c_976_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0zz1101011z111z0011x11xzzx1xzzxxxzxxxzzzxxxzzzxxzxzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

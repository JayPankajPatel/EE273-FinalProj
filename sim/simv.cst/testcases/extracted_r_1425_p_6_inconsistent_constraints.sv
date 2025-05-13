class c_1425_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1425_6;
    c_1425_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzzxx000xx1z0zz1zzz1x000x1zzzxzxzzxzxxxzzzzxzzxzzxxxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

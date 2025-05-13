class c_1588_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1588_6;
    c_1588_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1x1z1110zz10001xxzzz1x100z0zxxzxxxzxxxxxzzxxxxxxzzxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

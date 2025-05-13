class c_249_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_249_6;
    c_249_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z00z1011z1xz10z1z0z1z0zxxzx1zzzzzzzxzzzzzzzzxxzzzxxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

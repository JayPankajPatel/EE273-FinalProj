class c_984_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_984_6;
    c_984_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01111z1x00x1xzxxx10z0zxx1011z0xzzxzxxxzzzzxzxzzxzxxxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

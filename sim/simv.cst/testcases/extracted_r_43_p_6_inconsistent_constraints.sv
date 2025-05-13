class c_43_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_43_6;
    c_43_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010110x1x00x100xz1z11x0xx00x0x1zxxzxxxzxzxxxzxzxzxxxzzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_725_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_725_6;
    c_725_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz10z1xzz111zz1x011z0z1010z1xzxzxzzxxxxzzxxzxxzxxzxzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

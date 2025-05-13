class c_1710_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1710_6;
    c_1710_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zxxzz1z10z10z1zx1010zxzz1zx1zxxxzzzzzzzzxxzzxzzzzzxzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

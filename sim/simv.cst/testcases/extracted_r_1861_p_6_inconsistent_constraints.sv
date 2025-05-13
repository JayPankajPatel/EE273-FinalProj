class c_1861_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1861_6;
    c_1861_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz100z1011xz1x11z1zx1zx0z1xxz10zxzxzzxxxxxzxxxxxzxzxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_128_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_128_6;
    c_128_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z1z1zxxx1xzx10x0xzx100xxz1x0xzxxzxxzxxxxxxzzxxxxzzxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

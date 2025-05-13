class c_404_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_404_6;
    c_404_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz011z1x00xxzz011z1xx1010z101xzzzzxxzxxxxxxxzxzzxxxzxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

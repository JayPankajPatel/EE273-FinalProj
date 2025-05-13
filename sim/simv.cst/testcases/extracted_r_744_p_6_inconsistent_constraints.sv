class c_744_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_744_6;
    c_744_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz001000x11xz1x1xx11zxxzzz1zx10xzzzxxzzxzzxzxzzxzxxxxzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

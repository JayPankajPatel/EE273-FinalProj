class c_1071_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1071_6;
    c_1071_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zz0zx1zxz010xx0100zx11xz1xx0xzzxxxxxxzxxxxxzzxxxxzxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

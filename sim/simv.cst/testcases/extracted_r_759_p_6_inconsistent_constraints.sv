class c_759_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_759_6;
    c_759_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00100z01xzxx1xx0x11011x1zx0xxzzzzxzzxzxzzxxxzxzxzxzxzxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_169_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_169_6;
    c_169_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11z1x001zx0xzxz1xxx101zx0z1xxzzzzzzxzzxzxzzzxzzxzzzxxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

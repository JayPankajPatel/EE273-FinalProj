class c_617_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_617_6;
    c_617_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x01xzzz101zx001z1x1z01101z111xzxzxzzxxxzxxxzzzxzxxxxxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_749_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_749_6;
    c_749_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001x000xxx11zxzx0111xz10010x1z0xzxxxxxzxxxzxzzzzxxxzxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

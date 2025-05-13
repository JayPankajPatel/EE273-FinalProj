class c_527_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_527_6;
    c_527_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz01z1zx11zz01z1xx1zz1xx00xx11xzxzxxzzxzzzzzzxxxxzxzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

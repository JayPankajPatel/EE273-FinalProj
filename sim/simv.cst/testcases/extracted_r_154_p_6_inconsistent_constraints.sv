class c_154_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_154_6;
    c_154_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1xx1zxx1x10x11zxzxx11xxx10xzxzzxzzxxzxzzzxxzxxxzzxzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

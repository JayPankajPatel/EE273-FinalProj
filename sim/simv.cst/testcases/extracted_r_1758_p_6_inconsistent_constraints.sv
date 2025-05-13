class c_1758_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1758_6;
    c_1758_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxz00x1xx1xxzzx0zxx1z0xz01x0xzxxxzxzxxxxzzzzzxzxxxxzxxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

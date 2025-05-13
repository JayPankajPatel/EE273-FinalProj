class c_296_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_296_6;
    c_296_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xz01x01x100zz01x1zz0x0x0z10zxxxxzxxzzxzxzxxxzxxxzxzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

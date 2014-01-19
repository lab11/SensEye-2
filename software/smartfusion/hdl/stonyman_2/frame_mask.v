
module frame_mask (
        in current_row
        in current_col

        in mask_data

        out is_valid
        out mask_addr
    );

    // Keep an array of 112x112 bits
    // This can be stored in a two-port RAM with pipeline off
    //  I believe this will allow for asynchronous reading

    // The other end of the two-port RAM connects to the APB driver

    // Can only give one value at a time to the stonyman driver though

endmodule


module demux1_2(x_in, sel,  y_out0, y_out1);
  
  parameter DATA_WIDTH=16;
  input [DATA_WIDTH-1:0] x_in;
  input sel;
  output [DATA_WIDTH-1:0] y_out0;
  output [DATA_WIDTH-1:0] y_out1;
  logic [DATA_WIDTH-1:0] y_out0;
  logic [DATA_WIDTH-1:0] y_out1;

  always @(sel)
  begin
    case (sel)
    1'b0:
      begin
        // assign y_out0[DATA_WIDTH-1:0]=x_in[DATA_WIDTH-1:0];
         y_out0=x_in;
         // y_out0 <= x_in;

         y_out1 = 16'b0;
      end
    1'b1:
       begin
        //assign y_out1[DATA_WIDTH-1:0]=x_in[DATA_WIDTH-1:0];
         y_out1=x_in;
       // y_out1<=x_in;
       y_out0=16'b0;
      end     
    endcase
  end
endmodule


module mux2_1 ( input [15:0] x_in0,  input [15:0] x_in1, input sel, output [15:0] y_out);              
   assign y_out = sel ? x_in1:x_in0;  
endmodule  



module mux8_1(
      input_d0,
      input_d1,
      input_d2,
      input_d3,
      input_d4,
      input_d5,
      input_d6,
      input_d7,
      sel,
      output_y);

  parameter DATA_WIDTH=16;
// INPUTS
  input [DATA_WIDTH-1:0] input_d0;
  input [DATA_WIDTH-1:0] input_d1;
  input [DATA_WIDTH-1:0] input_d2;
  input [DATA_WIDTH-1:0] input_d3;
  input [DATA_WIDTH-1:0] input_d4;
  input [DATA_WIDTH-1:0] input_d5;
  input [DATA_WIDTH-1:0] input_d6;
  input [DATA_WIDTH-1:0] input_d7;

  input [2:0] sel;

// OUTPUT
  output logic [DATA_WIDTH-1:0] output_y;
  // wire    [1:0] mux_com_out;

  always @(sel)
  begin
    case (sel)
    3'o0:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d0[DATA_WIDTH-1:0];
        output_y = input_d0;
      end
   3'o1:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d1[DATA_WIDTH-1:0];
        output_y = input_d1;
      end
    3'o2:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d2[DATA_WIDTH-1:0];
        output_y = input_d2; 
      end
    3'o3:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d3[DATA_WIDTH-1:0];
        output_y = input_d3;       
      end
    3'o4:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d4[DATA_WIDTH-1:0]; 
        output_y = input_d4;     
      end
    3'o5:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d5[DATA_WIDTH-1:0];
        output_y = input_d5; 
      end
    3'o6:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d0[DATA_WIDTH-1:0]; 
        output_y = input_d6;
      end
    3'o7:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d7[DATA_WIDTH-1:0];
        output_y = input_d7;
      end
    endcase
  end

  // MUX2_1 Instantiation Template
endmodule



module demux1_8(
      input_x,
      sel,
      output_d0,
      output_d1,
      output_d2,
      output_d3,
      output_d4,
      output_d5,
      output_d6,
      output_d7);

  parameter DATA_WIDTH=16;
// OUTPUTS
  output logic [DATA_WIDTH-1:0] output_d0;
  output logic [DATA_WIDTH-1:0] output_d1;
  output logic [DATA_WIDTH-1:0] output_d2;
  output logic [DATA_WIDTH-1:0] output_d3;
  output logic [DATA_WIDTH-1:0] output_d4;
  output logic [DATA_WIDTH-1:0] output_d5;
  output logic [DATA_WIDTH-1:0] output_d6;
  output logic [DATA_WIDTH-1:0] output_d7;

  // reg [DATA_WIDTH-1:0] output_d0;
  // reg [DATA_WIDTH-1:0] output_d1;
  // reg [DATA_WIDTH-1:0] output_d2;
  // reg [DATA_WIDTH-1:0] output_d3;
  // reg [DATA_WIDTH-1:0] output_d4;
  // reg [DATA_WIDTH-1:0] output_d5;
  // reg [DATA_WIDTH-1:0] output_d6;
  // reg [DATA_WIDTH-1:0] output_d7;

  input [2:0] sel;

// INPUT
  input [DATA_WIDTH-1:0] input_x;
  // wire    [1:0] mux_com_out;

  always @(sel)
  begin
    case (sel)
    3'o0:
      begin
        // assign output_d0[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d0=input_x;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d3=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;
      end
   3'o1:
      begin
        // assign output_d1[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d1=input_x;
        output_d0=16'b0;
        output_d2=16'b0;
        output_d3=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;
      end
    3'o2:
      begin
        // assign output_d2[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d2=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d3=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;        
      end
    3'o3:
      begin
        // assign output_d3[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d3=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;        
      end
    3'o4:
      begin
        // assign output_d4[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0]; 
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d4=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d3=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;        
      end
    3'o5:
      begin
        // assign output_d5[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d5=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d4=16'b0;
        output_d3=16'b0;
        output_d6=16'b0;
        output_d7=16'b0;        
      end
    3'o6:
      begin
        // assign output_d6[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0]; 
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d7[DATA_WIDTH-1:0]=16'b0;

        output_d6=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d3=16'b0;
        output_d7=16'b0;        
      end
    3'o7:
      begin
        // assign output_d7[DATA_WIDTH-1:0]=input_x[DATA_WIDTH-1:0];
        // assign output_d0[DATA_WIDTH-1:0]=16'b0;
        // assign output_d1[DATA_WIDTH-1:0]=16'b0;
        // assign output_d2[DATA_WIDTH-1:0]=16'b0;
        // assign output_d3[DATA_WIDTH-1:0]=16'b0;
        // assign output_d4[DATA_WIDTH-1:0]=16'b0;
        // assign output_d5[DATA_WIDTH-1:0]=16'b0;
        // assign output_d6[DATA_WIDTH-1:0]=16'b0;


        output_d7=input_x;
        output_d0=16'b0;
        output_d1=16'b0;
        output_d2=16'b0;
        output_d4=16'b0;
        output_d5=16'b0;
        output_d6=16'b0;
        output_d3=16'b0;     
      end
    endcase
  end

  // MUX2_1 Instantiation Template
endmodule

module mux16_1(
      input_d0,
      input_d1,
      input_d2,
      input_d3,
      input_d4,
      input_d5,
      input_d6,
      input_d7,
      input_d8,
      input_d9,
      input_d10,
      input_d11,
      input_d12,
      input_d13,
      input_d14,
      input_d15,
      sel,
      output_y);

  parameter DATA_WIDTH=16;
// INPUTS
  input [DATA_WIDTH-1:0] input_d0;
  input [DATA_WIDTH-1:0] input_d1;
  input [DATA_WIDTH-1:0] input_d2;
  input [DATA_WIDTH-1:0] input_d3;
  input [DATA_WIDTH-1:0] input_d4;
  input [DATA_WIDTH-1:0] input_d5;
  input [DATA_WIDTH-1:0] input_d6;
  input [DATA_WIDTH-1:0] input_d7;
  input [DATA_WIDTH-1:0] input_d8;
  input [DATA_WIDTH-1:0] input_d9;
  input [DATA_WIDTH-1:0] input_d10;
  input [DATA_WIDTH-1:0] input_d11;
  input [DATA_WIDTH-1:0] input_d12;
  input [DATA_WIDTH-1:0] input_d13;
  input [DATA_WIDTH-1:0] input_d14;
  input [DATA_WIDTH-1:0] input_d15;

  input [3:0] sel;

// OUTPUT
  output logic [DATA_WIDTH-1:0] output_y;
  // wire    [1:0] mux_com_out;

  always @(sel)
  begin
    case (sel)
    4'h0:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d0[DATA_WIDTH-1:0];
        output_y = input_d0;
      end
   4'h1:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d1[DATA_WIDTH-1:0];
          output_y = input_d1;

      end
    4'h2:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d2[DATA_WIDTH-1:0]; 
          output_y = input_d2;

      end
    4'h3:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d3[DATA_WIDTH-1:0];
                output_y = input_d3;
       
      end
    4'h4:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d4[DATA_WIDTH-1:0];
                output_y = input_d4;
      
      end
    4'h5:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d5[DATA_WIDTH-1:0]; 
                output_y = input_d5;

      end
    4'h6:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d0[DATA_WIDTH-1:0]; 
                output_y = input_d6;

      end
    4'h7:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d7[DATA_WIDTH-1:0];
                output_y = input_d7;

      end
    4'h8:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d8[DATA_WIDTH-1:0]; 
                output_y = input_d8;

      end
    4'h9:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d9[DATA_WIDTH-1:0];
                output_y = input_d9;
   
      end
    4'b1010:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d10[DATA_WIDTH-1:0];
                output_y = input_d10;
    
      end
    4'b1011:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d11[DATA_WIDTH-1:0];
                output_y = input_d11;
    
      end
    4'b1100:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d12[DATA_WIDTH-1:0];
                output_y = input_d12;
 
      end
    4'b1101:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d13[DATA_WIDTH-1:0];
                output_y = input_d13;

      end
    4'b1110:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d14[DATA_WIDTH-1:0];
                output_y = input_d14;

      end
    4'b1111:
      begin
        // assign output_y[DATA_WIDTH-1:0]=input_d15[DATA_WIDTH-1:0];
                output_y = input_d15;
 
      end
    endcase
  end

  // MUX2_1 Instantiation Template
endmodule


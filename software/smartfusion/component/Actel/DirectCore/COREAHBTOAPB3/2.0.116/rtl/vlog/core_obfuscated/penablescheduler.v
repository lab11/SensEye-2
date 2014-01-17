// Copyright 2009 Actel Corporation. All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// Revision Information:
// SVN Revision Information:
// SVN $Revision: $
module
CAHBtoAPB3IOl
(
input
wire
HCLK,
input
wire
HRESETN,
input
wire
CAHBtoAPB3Il,
input
wire
CAHBtoAPB3ll,
output
reg
PENABLE
)
;
localparam
CAHBtoAPB3l0
=
2
'b
00
;
localparam
CAHBtoAPB3OOI
=
2
'b
01
;
localparam
CAHBtoAPB3lOl
=
2
'b
10
;
reg
[
1
:
0
]
CAHBtoAPB3OIl
,
CAHBtoAPB3IIl
;
reg
CAHBtoAPB3lIl
;
always
@(*)
begin
CAHBtoAPB3lIl
=
1
'b
0
;
case
(
CAHBtoAPB3OIl
)
CAHBtoAPB3l0
:
begin
if
(
CAHBtoAPB3Il
)
begin
CAHBtoAPB3IIl
<=
CAHBtoAPB3OOI
;
end
else
begin
CAHBtoAPB3IIl
<=
CAHBtoAPB3l0
;
end
end
CAHBtoAPB3OOI
:
begin
CAHBtoAPB3lIl
=
1
'b
1
;
CAHBtoAPB3IIl
<=
CAHBtoAPB3lOl
;
end
CAHBtoAPB3lOl
:
begin
if
(
CAHBtoAPB3ll
)
begin
CAHBtoAPB3IIl
<=
CAHBtoAPB3l0
;
end
else
begin
CAHBtoAPB3lIl
=
1
'b
1
;
CAHBtoAPB3IIl
<=
CAHBtoAPB3lOl
;
end
end
default
:
begin
CAHBtoAPB3lIl
=
1
'b
0
;
CAHBtoAPB3IIl
<=
CAHBtoAPB3l0
;
end
endcase
end
always
@
(
posedge
HCLK
or
negedge
HRESETN
)
begin
if
(
!
HRESETN
)
begin
CAHBtoAPB3OIl
<=
CAHBtoAPB3l0
;
PENABLE
<=
1
'b
0
;
end
else
begin
CAHBtoAPB3OIl
<=
CAHBtoAPB3IIl
;
PENABLE
<=
CAHBtoAPB3lIl
;
end
end
endmodule
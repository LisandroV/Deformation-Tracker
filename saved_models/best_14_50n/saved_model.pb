��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
�
*deformation_tracker_model/dense_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*;
shared_name,*deformation_tracker_model/dense_out/kernel
�
>deformation_tracker_model/dense_out/kernel/Read/ReadVariableOpReadVariableOp*deformation_tracker_model/dense_out/kernel*
_output_shapes

:2*
dtype0
�
(deformation_tracker_model/dense_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(deformation_tracker_model/dense_out/bias
�
<deformation_tracker_model/dense_out/bias/Read/ReadVariableOpReadVariableOp(deformation_tracker_model/dense_out/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
=deformation_tracker_model/first_hidden/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*N
shared_name?=deformation_tracker_model/first_hidden/simple_rnn_cell/kernel
�
Qdeformation_tracker_model/first_hidden/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp=deformation_tracker_model/first_hidden/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
�
Gdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*X
shared_nameIGdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel
�
[deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpGdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
�
;deformation_tracker_model/first_hidden/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*L
shared_name=;deformation_tracker_model/first_hidden/simple_rnn_cell/bias
�
Odeformation_tracker_model/first_hidden/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp;deformation_tracker_model/first_hidden/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
�
@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*Q
shared_nameB@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel
�
Tdeformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel*
_output_shapes

:22*
dtype0
�
Jdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*[
shared_nameLJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel
�
^deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOpJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel*
_output_shapes

:22*
dtype0
�
>deformation_tracker_model/second_hidden/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*O
shared_name@>deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias
�
Rdeformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp>deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias*
_output_shapes
:2*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
1Adam/deformation_tracker_model/dense_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*B
shared_name31Adam/deformation_tracker_model/dense_out/kernel/m
�
EAdam/deformation_tracker_model/dense_out/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/deformation_tracker_model/dense_out/kernel/m*
_output_shapes

:2*
dtype0
�
/Adam/deformation_tracker_model/dense_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/deformation_tracker_model/dense_out/bias/m
�
CAdam/deformation_tracker_model/dense_out/bias/m/Read/ReadVariableOpReadVariableOp/Adam/deformation_tracker_model/dense_out/bias/m*
_output_shapes
:*
dtype0
�
DAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*U
shared_nameFDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/m
�
XAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/m/Read/ReadVariableOpReadVariableOpDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/m*
_output_shapes

:2*
dtype0
�
NAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*_
shared_namePNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/m
�
bAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/m*
_output_shapes

:22*
dtype0
�
BAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/m
�
VAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/m/Read/ReadVariableOpReadVariableOpBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/m*
_output_shapes
:2*
dtype0
�
GAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*X
shared_nameIGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/m
�
[Adam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/m/Read/ReadVariableOpReadVariableOpGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/m*
_output_shapes

:22*
dtype0
�
QAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*b
shared_nameSQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/m
�
eAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/m*
_output_shapes

:22*
dtype0
�
EAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*V
shared_nameGEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m
�
YAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m/Read/ReadVariableOpReadVariableOpEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m*
_output_shapes
:2*
dtype0
�
1Adam/deformation_tracker_model/dense_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*B
shared_name31Adam/deformation_tracker_model/dense_out/kernel/v
�
EAdam/deformation_tracker_model/dense_out/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/deformation_tracker_model/dense_out/kernel/v*
_output_shapes

:2*
dtype0
�
/Adam/deformation_tracker_model/dense_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/deformation_tracker_model/dense_out/bias/v
�
CAdam/deformation_tracker_model/dense_out/bias/v/Read/ReadVariableOpReadVariableOp/Adam/deformation_tracker_model/dense_out/bias/v*
_output_shapes
:*
dtype0
�
DAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*U
shared_nameFDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/v
�
XAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/v/Read/ReadVariableOpReadVariableOpDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/v*
_output_shapes

:2*
dtype0
�
NAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*_
shared_namePNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/v
�
bAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/v*
_output_shapes

:22*
dtype0
�
BAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/v
�
VAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/v/Read/ReadVariableOpReadVariableOpBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/v*
_output_shapes
:2*
dtype0
�
GAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*X
shared_nameIGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/v
�
[Adam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/v/Read/ReadVariableOpReadVariableOpGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/v*
_output_shapes

:22*
dtype0
�
QAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*b
shared_nameSQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/v
�
eAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/v*
_output_shapes

:22*
dtype0
�
EAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*V
shared_nameGEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v
�
YAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v/Read/ReadVariableOpReadVariableOpEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v*
_output_shapes
:2*
dtype0

NoOpNoOp
�@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�?
value�?B�? B�?
�
hidden1
hidden2
output_layer
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
�
%iter

&beta_1

'beta_2
	(decay
)learning_ratemdme*mf+mg,mh-mi.mj/mkvlvm*vn+vo,vp-vq.vr/vs*
<
*0
+1
,2
-3
.4
/5
6
7*
<
*0
+1
,2
-3
.4
/5
6
7*
* 
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

5serving_default* 
�

*kernel
+recurrent_kernel
,bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses*
* 

*0
+1
,2*

*0
+1
,2*
* 
�

=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
�

-kernel
.recurrent_kernel
/bias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses*
* 

-0
.1
/2*

-0
.1
/2*
* 
�

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
rl
VARIABLE_VALUE*deformation_tracker_model/dense_out/kernel.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE(deformation_tracker_model/dense_out/bias,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE=deformation_tracker_model/first_hidden/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE;deformation_tracker_model/first_hidden/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE>deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

U0*
* 
* 
* 

*0
+1
,2*

*0
+1
,2*
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	`total
	acount
b	variables
c	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

b	variables*
��
VARIABLE_VALUE1Adam/deformation_tracker_model/dense_out/kernel/mJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/Adam/deformation_tracker_model/dense_out/bias/mHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/deformation_tracker_model/dense_out/kernel/vJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE/Adam/deformation_tracker_model/dense_out/bias/vHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*+
_output_shapes
:���������d*
dtype0* 
shape:���������d
�
serving_default_input_2Placeholder*+
_output_shapes
:���������d*
dtype0* 
shape:���������d
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2=deformation_tracker_model/first_hidden/simple_rnn_cell/kernel;deformation_tracker_model/first_hidden/simple_rnn_cell/biasGdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel>deformation_tracker_model/second_hidden/simple_rnn_cell_1/biasJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel*deformation_tracker_model/dense_out/kernel(deformation_tracker_model/dense_out/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_473741
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>deformation_tracker_model/dense_out/kernel/Read/ReadVariableOp<deformation_tracker_model/dense_out/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpQdeformation_tracker_model/first_hidden/simple_rnn_cell/kernel/Read/ReadVariableOp[deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpOdeformation_tracker_model/first_hidden/simple_rnn_cell/bias/Read/ReadVariableOpTdeformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/Read/ReadVariableOp^deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpRdeformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpEAdam/deformation_tracker_model/dense_out/kernel/m/Read/ReadVariableOpCAdam/deformation_tracker_model/dense_out/bias/m/Read/ReadVariableOpXAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/m/Read/ReadVariableOpbAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpVAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/m/Read/ReadVariableOp[Adam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/m/Read/ReadVariableOpeAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOpYAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m/Read/ReadVariableOpEAdam/deformation_tracker_model/dense_out/kernel/v/Read/ReadVariableOpCAdam/deformation_tracker_model/dense_out/bias/v/Read/ReadVariableOpXAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/v/Read/ReadVariableOpbAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpVAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/v/Read/ReadVariableOp[Adam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/v/Read/ReadVariableOpeAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOpYAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_474973
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*deformation_tracker_model/dense_out/kernel(deformation_tracker_model/dense_out/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate=deformation_tracker_model/first_hidden/simple_rnn_cell/kernelGdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel;deformation_tracker_model/first_hidden/simple_rnn_cell/bias@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernelJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel>deformation_tracker_model/second_hidden/simple_rnn_cell_1/biastotalcount1Adam/deformation_tracker_model/dense_out/kernel/m/Adam/deformation_tracker_model/dense_out/bias/mDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/mNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/mBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/mGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/mQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/mEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m1Adam/deformation_tracker_model/dense_out/kernel/v/Adam/deformation_tracker_model/dense_out/bias/vDAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/vNAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/vBAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/vGAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/vQAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/vEAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_475076��
�P
�
8deformation_tracker_model_first_hidden_while_body_471694j
fdeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_loop_counterp
ldeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_maximum_iterations<
8deformation_tracker_model_first_hidden_while_placeholder>
:deformation_tracker_model_first_hidden_while_placeholder_1>
:deformation_tracker_model_first_hidden_while_placeholder_2i
edeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_strided_slice_1_0�
�deformation_tracker_model_first_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_first_hidden_tensorarrayunstack_tensorlistfromtensor_0o
]deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0:2l
^deformation_tracker_model_first_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2q
_deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:229
5deformation_tracker_model_first_hidden_while_identity;
7deformation_tracker_model_first_hidden_while_identity_1;
7deformation_tracker_model_first_hidden_while_identity_2;
7deformation_tracker_model_first_hidden_while_identity_3;
7deformation_tracker_model_first_hidden_while_identity_4g
cdeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_strided_slice_1�
�deformation_tracker_model_first_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_first_hidden_tensorarrayunstack_tensorlistfromtensorm
[deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_readvariableop_resource:2j
\deformation_tracker_model_first_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource:2o
]deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource:22��Sdeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp�Rdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp�Tdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
^deformation_tracker_model/first_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Pdeformation_tracker_model/first_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�deformation_tracker_model_first_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_first_hidden_tensorarrayunstack_tensorlistfromtensor_08deformation_tracker_model_first_hidden_while_placeholdergdeformation_tracker_model/first_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Rdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp]deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
Cdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMulMatMulWdeformation_tracker_model/first_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0Zdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Sdeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp^deformation_tracker_model_first_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
Ddeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAddBiasAddMdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul:product:0[deformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Tdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp_deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
Edeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1MatMul:deformation_tracker_model_first_hidden_while_placeholder_2\deformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
@deformation_tracker_model/first_hidden/while/simple_rnn_cell/addAddV2Mdeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd:output:0Odeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
Adeformation_tracker_model/first_hidden/while/simple_rnn_cell/TanhTanhDdeformation_tracker_model/first_hidden/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
Qdeformation_tracker_model/first_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem:deformation_tracker_model_first_hidden_while_placeholder_18deformation_tracker_model_first_hidden_while_placeholderEdeformation_tracker_model/first_hidden/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���t
2deformation_tracker_model/first_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
0deformation_tracker_model/first_hidden/while/addAddV28deformation_tracker_model_first_hidden_while_placeholder;deformation_tracker_model/first_hidden/while/add/y:output:0*
T0*
_output_shapes
: v
4deformation_tracker_model/first_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
2deformation_tracker_model/first_hidden/while/add_1AddV2fdeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_loop_counter=deformation_tracker_model/first_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
5deformation_tracker_model/first_hidden/while/IdentityIdentity6deformation_tracker_model/first_hidden/while/add_1:z:02^deformation_tracker_model/first_hidden/while/NoOp*
T0*
_output_shapes
: �
7deformation_tracker_model/first_hidden/while/Identity_1Identityldeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_maximum_iterations2^deformation_tracker_model/first_hidden/while/NoOp*
T0*
_output_shapes
: �
7deformation_tracker_model/first_hidden/while/Identity_2Identity4deformation_tracker_model/first_hidden/while/add:z:02^deformation_tracker_model/first_hidden/while/NoOp*
T0*
_output_shapes
: �
7deformation_tracker_model/first_hidden/while/Identity_3Identityadeformation_tracker_model/first_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^deformation_tracker_model/first_hidden/while/NoOp*
T0*
_output_shapes
: :����
7deformation_tracker_model/first_hidden/while/Identity_4IdentityEdeformation_tracker_model/first_hidden/while/simple_rnn_cell/Tanh:y:02^deformation_tracker_model/first_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
1deformation_tracker_model/first_hidden/while/NoOpNoOpT^deformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOpS^deformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOpU^deformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
cdeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_strided_slice_1edeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_strided_slice_1_0"w
5deformation_tracker_model_first_hidden_while_identity>deformation_tracker_model/first_hidden/while/Identity:output:0"{
7deformation_tracker_model_first_hidden_while_identity_1@deformation_tracker_model/first_hidden/while/Identity_1:output:0"{
7deformation_tracker_model_first_hidden_while_identity_2@deformation_tracker_model/first_hidden/while/Identity_2:output:0"{
7deformation_tracker_model_first_hidden_while_identity_3@deformation_tracker_model/first_hidden/while/Identity_3:output:0"{
7deformation_tracker_model_first_hidden_while_identity_4@deformation_tracker_model/first_hidden/while/Identity_4:output:0"�
\deformation_tracker_model_first_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource^deformation_tracker_model_first_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
]deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
[deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_readvariableop_resource]deformation_tracker_model_first_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0"�
�deformation_tracker_model_first_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_first_hidden_tensorarrayunstack_tensorlistfromtensor�deformation_tracker_model_first_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_first_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2�
Sdeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOpSdeformation_tracker_model/first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp2�
Rdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOpRdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp2�
Tdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOpTdeformation_tracker_model/first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_474042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474042___redundant_placeholder04
0while_while_cond_474042___redundant_placeholder14
0while_while_cond_474042___redundant_placeholder24
0while_while_cond_474042___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474839

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�
�	
9deformation_tracker_model_second_hidden_while_cond_471797l
hdeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_loop_counterr
ndeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_maximum_iterations=
9deformation_tracker_model_second_hidden_while_placeholder?
;deformation_tracker_model_second_hidden_while_placeholder_1?
;deformation_tracker_model_second_hidden_while_placeholder_2n
jdeformation_tracker_model_second_hidden_while_less_deformation_tracker_model_second_hidden_strided_slice_1�
�deformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_cond_471797___redundant_placeholder0�
�deformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_cond_471797___redundant_placeholder1�
�deformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_cond_471797___redundant_placeholder2�
�deformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_cond_471797___redundant_placeholder3:
6deformation_tracker_model_second_hidden_while_identity
�
2deformation_tracker_model/second_hidden/while/LessLess9deformation_tracker_model_second_hidden_while_placeholderjdeformation_tracker_model_second_hidden_while_less_deformation_tracker_model_second_hidden_strided_slice_1*
T0*
_output_shapes
: �
6deformation_tracker_model/second_hidden/while/IdentityIdentity6deformation_tracker_model/second_hidden/while/Less:z:0*
T0
*
_output_shapes
: "y
6deformation_tracker_model_second_hidden_while_identity?deformation_tracker_model/second_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�,
�
while_body_474519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�

�
$__inference_signature_wrapper_473741
input_1
input_2
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:2
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_471890s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�7
�
first_hidden_while_body_4732806
2first_hidden_while_first_hidden_while_loop_counter<
8first_hidden_while_first_hidden_while_maximum_iterations"
first_hidden_while_placeholder$
 first_hidden_while_placeholder_1$
 first_hidden_while_placeholder_25
1first_hidden_while_first_hidden_strided_slice_1_0q
mfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0U
Cfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0:2R
Dfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2W
Efirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
first_hidden_while_identity!
first_hidden_while_identity_1!
first_hidden_while_identity_2!
first_hidden_while_identity_3!
first_hidden_while_identity_43
/first_hidden_while_first_hidden_strided_slice_1o
kfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensorS
Afirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource:2P
Bfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource:2U
Cfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource:22��9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp�8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp�:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Dfirst_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6first_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0first_hidden_while_placeholderMfirst_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpCfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
)first_hidden/while/simple_rnn_cell/MatMulMatMul=first_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0@first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpDfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
*first_hidden/while/simple_rnn_cell/BiasAddBiasAdd3first_hidden/while/simple_rnn_cell/MatMul:product:0Afirst_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpEfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
+first_hidden/while/simple_rnn_cell/MatMul_1MatMul first_hidden_while_placeholder_2Bfirst_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&first_hidden/while/simple_rnn_cell/addAddV23first_hidden/while/simple_rnn_cell/BiasAdd:output:05first_hidden/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
'first_hidden/while/simple_rnn_cell/TanhTanh*first_hidden/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
7first_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem first_hidden_while_placeholder_1first_hidden_while_placeholder+first_hidden/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
first_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
first_hidden/while/addAddV2first_hidden_while_placeholder!first_hidden/while/add/y:output:0*
T0*
_output_shapes
: \
first_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
first_hidden/while/add_1AddV22first_hidden_while_first_hidden_while_loop_counter#first_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
first_hidden/while/IdentityIdentityfirst_hidden/while/add_1:z:0^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_1Identity8first_hidden_while_first_hidden_while_maximum_iterations^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_2Identityfirst_hidden/while/add:z:0^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_3IdentityGfirst_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^first_hidden/while/NoOp*
T0*
_output_shapes
: :����
first_hidden/while/Identity_4Identity+first_hidden/while/simple_rnn_cell/Tanh:y:0^first_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
first_hidden/while/NoOpNoOp:^first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp9^first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp;^first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/first_hidden_while_first_hidden_strided_slice_11first_hidden_while_first_hidden_strided_slice_1_0"C
first_hidden_while_identity$first_hidden/while/Identity:output:0"G
first_hidden_while_identity_1&first_hidden/while/Identity_1:output:0"G
first_hidden_while_identity_2&first_hidden/while/Identity_2:output:0"G
first_hidden_while_identity_3&first_hidden/while/Identity_3:output:0"G
first_hidden_while_identity_4&first_hidden/while/Identity_4:output:0"�
Bfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resourceDfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Cfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resourceEfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
Afirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resourceCfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0"�
kfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensormfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2v
9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp2t
8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp2x
:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_dense_out_layer_call_and_return_conditional_losses_474732

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d2�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�
�
while_cond_472640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472640___redundant_placeholder04
0while_while_cond_472640___redundant_placeholder14
0while_while_cond_472640___redundant_placeholder24
0while_while_cond_472640___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474856

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�3
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_472173

inputs(
simple_rnn_cell_472098:2$
simple_rnn_cell_472100:2(
simple_rnn_cell_472102:22
identity��'simple_rnn_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_472098simple_rnn_cell_472100simple_rnn_cell_472102*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_472058n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_472098simple_rnn_cell_472100simple_rnn_cell_472102*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472110*
condR
while_cond_472109*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
.__inference_second_hidden_layer_call_fn_474250

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472707s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�R
�
__inference__traced_save_474973
file_prefixI
Esavev2_deformation_tracker_model_dense_out_kernel_read_readvariableopG
Csavev2_deformation_tracker_model_dense_out_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop\
Xsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_read_readvariableopf
bsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_read_readvariableopZ
Vsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_read_readvariableop_
[savev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_read_readvariableopi
esavev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_read_readvariableop]
Ysavev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopP
Lsavev2_adam_deformation_tracker_model_dense_out_kernel_m_read_readvariableopN
Jsavev2_adam_deformation_tracker_model_dense_out_bias_m_read_readvariableopc
_savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_m_read_readvariableopm
isavev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_m_read_readvariableopa
]savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_m_read_readvariableopf
bsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_m_read_readvariableopp
lsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableopd
`savev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_m_read_readvariableopP
Lsavev2_adam_deformation_tracker_model_dense_out_kernel_v_read_readvariableopN
Jsavev2_adam_deformation_tracker_model_dense_out_bias_v_read_readvariableopc
_savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_v_read_readvariableopm
isavev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_v_read_readvariableopa
]savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_v_read_readvariableopf
bsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_v_read_readvariableopp
lsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableopd
`savev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_deformation_tracker_model_dense_out_kernel_read_readvariableopCsavev2_deformation_tracker_model_dense_out_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopXsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_read_readvariableopbsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_read_readvariableopVsavev2_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_read_readvariableop[savev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_read_readvariableopesavev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_read_readvariableopYsavev2_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopLsavev2_adam_deformation_tracker_model_dense_out_kernel_m_read_readvariableopJsavev2_adam_deformation_tracker_model_dense_out_bias_m_read_readvariableop_savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_m_read_readvariableopisavev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_m_read_readvariableop]savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_m_read_readvariableopbsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_m_read_readvariableoplsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableop`savev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_m_read_readvariableopLsavev2_adam_deformation_tracker_model_dense_out_kernel_v_read_readvariableopJsavev2_adam_deformation_tracker_model_dense_out_bias_v_read_readvariableop_savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_v_read_readvariableopisavev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_v_read_readvariableop]savev2_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_v_read_readvariableopbsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_v_read_readvariableoplsavev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableop`savev2_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :2:: : : : : :2:22:2:22:22:2: : :2::2:22:2:22:22:2:2::2:22:2:22:22:2: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2:$	 

_output_shapes

:22: 


_output_shapes
:2:$ 

_output_shapes

:22:$ 

_output_shapes

:22: 

_output_shapes
:2:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22:$ 

_output_shapes

:22: 

_output_shapes
:2: 

_output_shapes
: 
�
�
-__inference_first_hidden_layer_call_fn_473752
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_472014|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_472965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472965___redundant_placeholder04
0while_while_cond_472965___redundant_placeholder14
0while_while_cond_472965___redundant_placeholder24
0while_while_cond_472965___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�

�
:__inference_deformation_tracker_model_layer_call_fn_473133
input_1
input_2
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:2
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473092s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�

�
first_hidden_while_cond_4732796
2first_hidden_while_first_hidden_while_loop_counter<
8first_hidden_while_first_hidden_while_maximum_iterations"
first_hidden_while_placeholder$
 first_hidden_while_placeholder_1$
 first_hidden_while_placeholder_28
4first_hidden_while_less_first_hidden_strided_slice_1N
Jfirst_hidden_while_first_hidden_while_cond_473279___redundant_placeholder0N
Jfirst_hidden_while_first_hidden_while_cond_473279___redundant_placeholder1N
Jfirst_hidden_while_first_hidden_while_cond_473279___redundant_placeholder2N
Jfirst_hidden_while_first_hidden_while_cond_473279___redundant_placeholder3
first_hidden_while_identity
�
first_hidden/while/LessLessfirst_hidden_while_placeholder4first_hidden_while_less_first_hidden_strided_slice_1*
T0*
_output_shapes
: e
first_hidden/while/IdentityIdentityfirst_hidden/while/Less:z:0*
T0
*
_output_shapes
: "C
first_hidden_while_identity$first_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�<
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_473032

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472966*
condR
while_cond_472965*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
-__inference_first_hidden_layer_call_fn_473763
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_472173|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�,
�
while_body_472641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_472525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472525___redundant_placeholder04
0while_while_cond_472525___redundant_placeholder14
0while_while_cond_472525___redundant_placeholder24
0while_while_cond_472525___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�,
�
while_body_474627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�4
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_472306

inputs*
simple_rnn_cell_1_472231:22&
simple_rnn_cell_1_472233:2*
simple_rnn_cell_1_472235:22
identity��)simple_rnn_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_472231simple_rnn_cell_1_472233simple_rnn_cell_1_472235*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472230n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_472231simple_rnn_cell_1_472233simple_rnn_cell_1_472235*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472243*
condR
while_cond_472242*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�

�
0__inference_simple_rnn_cell_layer_call_fn_474746

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_471938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�

�
0__inference_simple_rnn_cell_layer_call_fn_474760

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_472058o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�
�
while_cond_474410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474410___redundant_placeholder04
0while_while_cond_474410___redundant_placeholder14
0while_while_cond_474410___redundant_placeholder24
0while_while_cond_474410___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�

�
2__inference_simple_rnn_cell_1_layer_call_fn_474808

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472230o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�
�
while_cond_474150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474150___redundant_placeholder04
0while_while_cond_474150___redundant_placeholder14
0while_while_cond_474150___redundant_placeholder24
0while_while_cond_474150___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_473826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_473826___redundant_placeholder04
0while_while_cond_473826___redundant_placeholder14
0while_while_cond_473826___redundant_placeholder24
0while_while_cond_473826___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�+
�
while_body_474043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�!
�
while_body_472402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_472424_0:22.
 while_simple_rnn_cell_1_472426_0:22
 while_simple_rnn_cell_1_472428_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_472424:22,
while_simple_rnn_cell_1_472426:20
while_simple_rnn_cell_1_472428:22��/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_472424_0 while_simple_rnn_cell_1_472426_0 while_simple_rnn_cell_1_472428_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472350�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_472424 while_simple_rnn_cell_1_472424_0"B
while_simple_rnn_cell_1_472426 while_simple_rnn_cell_1_472426_0"B
while_simple_rnn_cell_1_472428 while_simple_rnn_cell_1_472428_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474794

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�=
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_473893
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_473827*
condR
while_cond_473826*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_472835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472835___redundant_placeholder04
0while_while_cond_472835___redundant_placeholder14
0while_while_cond_472835___redundant_placeholder24
0while_while_cond_472835___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�Q
�
9deformation_tracker_model_second_hidden_while_body_471798l
hdeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_loop_counterr
ndeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_maximum_iterations=
9deformation_tracker_model_second_hidden_while_placeholder?
;deformation_tracker_model_second_hidden_while_placeholder_1?
;deformation_tracker_model_second_hidden_while_placeholder_2k
gdeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_strided_slice_1_0�
�deformation_tracker_model_second_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_second_hidden_tensorarrayunstack_tensorlistfromtensor_0r
`deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22o
adeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2t
bdeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22:
6deformation_tracker_model_second_hidden_while_identity<
8deformation_tracker_model_second_hidden_while_identity_1<
8deformation_tracker_model_second_hidden_while_identity_2<
8deformation_tracker_model_second_hidden_while_identity_3<
8deformation_tracker_model_second_hidden_while_identity_4i
edeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_strided_slice_1�
�deformation_tracker_model_second_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_second_hidden_tensorarrayunstack_tensorlistfromtensorp
^deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource:22m
_deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource:2r
`deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��Vdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�Udeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp�Wdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
_deformation_tracker_model/second_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Qdeformation_tracker_model/second_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�deformation_tracker_model_second_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_second_hidden_tensorarrayunstack_tensorlistfromtensor_09deformation_tracker_model_second_hidden_while_placeholderhdeformation_tracker_model/second_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
Udeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp`deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
Fdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMulMatMulXdeformation_tracker_model/second_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0]deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Vdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpadeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
Gdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAddBiasAddPdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul:product:0^deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Wdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpbdeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
Hdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1MatMul;deformation_tracker_model_second_hidden_while_placeholder_2_deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Cdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/addAddV2Pdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd:output:0Rdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
Ddeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/TanhTanhGdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
Rdeformation_tracker_model/second_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem;deformation_tracker_model_second_hidden_while_placeholder_19deformation_tracker_model_second_hidden_while_placeholderHdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���u
3deformation_tracker_model/second_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
1deformation_tracker_model/second_hidden/while/addAddV29deformation_tracker_model_second_hidden_while_placeholder<deformation_tracker_model/second_hidden/while/add/y:output:0*
T0*
_output_shapes
: w
5deformation_tracker_model/second_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
3deformation_tracker_model/second_hidden/while/add_1AddV2hdeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_loop_counter>deformation_tracker_model/second_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
6deformation_tracker_model/second_hidden/while/IdentityIdentity7deformation_tracker_model/second_hidden/while/add_1:z:03^deformation_tracker_model/second_hidden/while/NoOp*
T0*
_output_shapes
: �
8deformation_tracker_model/second_hidden/while/Identity_1Identityndeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_while_maximum_iterations3^deformation_tracker_model/second_hidden/while/NoOp*
T0*
_output_shapes
: �
8deformation_tracker_model/second_hidden/while/Identity_2Identity5deformation_tracker_model/second_hidden/while/add:z:03^deformation_tracker_model/second_hidden/while/NoOp*
T0*
_output_shapes
: �
8deformation_tracker_model/second_hidden/while/Identity_3Identitybdeformation_tracker_model/second_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^deformation_tracker_model/second_hidden/while/NoOp*
T0*
_output_shapes
: :����
8deformation_tracker_model/second_hidden/while/Identity_4IdentityHdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/Tanh:y:03^deformation_tracker_model/second_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
2deformation_tracker_model/second_hidden/while/NoOpNoOpW^deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpV^deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOpX^deformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
edeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_strided_slice_1gdeformation_tracker_model_second_hidden_while_deformation_tracker_model_second_hidden_strided_slice_1_0"y
6deformation_tracker_model_second_hidden_while_identity?deformation_tracker_model/second_hidden/while/Identity:output:0"}
8deformation_tracker_model_second_hidden_while_identity_1Adeformation_tracker_model/second_hidden/while/Identity_1:output:0"}
8deformation_tracker_model_second_hidden_while_identity_2Adeformation_tracker_model/second_hidden/while/Identity_2:output:0"}
8deformation_tracker_model_second_hidden_while_identity_3Adeformation_tracker_model/second_hidden/while/Identity_3:output:0"}
8deformation_tracker_model_second_hidden_while_identity_4Adeformation_tracker_model/second_hidden/while/Identity_4:output:0"�
_deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resourceadeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
`deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resourcebdeformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
^deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource`deformation_tracker_model_second_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
�deformation_tracker_model_second_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_second_hidden_tensorarrayunstack_tensorlistfromtensor�deformation_tracker_model_second_hidden_while_tensorarrayv2read_tensorlistgetitem_deformation_tracker_model_second_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2�
Vdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpVdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2�
Udeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOpUdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp2�
Wdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpWdeformation_tracker_model/second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
��
�	
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473476
model_input_0
model_input_1M
;first_hidden_simple_rnn_cell_matmul_readvariableop_resource:2J
<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource:2O
=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource:22P
>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource:22M
?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource:2R
@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource:22=
+dense_out_tensordot_readvariableop_resource:27
)dense_out_biasadd_readvariableop_resource:
identity�� dense_out/BiasAdd/ReadVariableOp�"dense_out/Tensordot/ReadVariableOp�3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp�2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp�4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp�first_hidden/while�6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp�5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp�7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp�second_hidden/whileY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2model_input_0model_input_1 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d]
first_hidden/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:j
 first_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"first_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"first_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_sliceStridedSlicefirst_hidden/Shape:output:0)first_hidden/strided_slice/stack:output:0+first_hidden/strided_slice/stack_1:output:0+first_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
first_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
first_hidden/zeros/packedPack#first_hidden/strided_slice:output:0$first_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
first_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
first_hidden/zerosFill"first_hidden/zeros/packed:output:0!first_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2p
first_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
first_hidden/transpose	Transposeconcatenate/concat:output:0$first_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d���������^
first_hidden/Shape_1Shapefirst_hidden/transpose:y:0*
T0*
_output_shapes
:l
"first_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$first_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_1StridedSlicefirst_hidden/Shape_1:output:0+first_hidden/strided_slice_1/stack:output:0-first_hidden/strided_slice_1/stack_1:output:0-first_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(first_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
first_hidden/TensorArrayV2TensorListReserve1first_hidden/TensorArrayV2/element_shape:output:0%first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bfirst_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4first_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorfirst_hidden/transpose:y:0Kfirst_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"first_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$first_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_2StridedSlicefirst_hidden/transpose:y:0+first_hidden/strided_slice_2/stack:output:0-first_hidden/strided_slice_2/stack_1:output:0-first_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
2first_hidden/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp;first_hidden_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
#first_hidden/simple_rnn_cell/MatMulMatMul%first_hidden/strided_slice_2:output:0:first_hidden/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
$first_hidden/simple_rnn_cell/BiasAddBiasAdd-first_hidden/simple_rnn_cell/MatMul:product:0;first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
%first_hidden/simple_rnn_cell/MatMul_1MatMulfirst_hidden/zeros:output:0<first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
 first_hidden/simple_rnn_cell/addAddV2-first_hidden/simple_rnn_cell/BiasAdd:output:0/first_hidden/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
!first_hidden/simple_rnn_cell/TanhTanh$first_hidden/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2{
*first_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
first_hidden/TensorArrayV2_1TensorListReserve3first_hidden/TensorArrayV2_1/element_shape:output:0%first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
first_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%first_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
first_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
first_hidden/whileWhile(first_hidden/while/loop_counter:output:0.first_hidden/while/maximum_iterations:output:0first_hidden/time:output:0%first_hidden/TensorArrayV2_1:handle:0first_hidden/zeros:output:0%first_hidden/strided_slice_1:output:0Dfirst_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0;first_hidden_simple_rnn_cell_matmul_readvariableop_resource<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
first_hidden_while_body_473280**
cond"R 
first_hidden_while_cond_473279*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
=first_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/first_hidden/TensorArrayV2Stack/TensorListStackTensorListStackfirst_hidden/while:output:3Ffirst_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0u
"first_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$first_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_3StridedSlice8first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0+first_hidden/strided_slice_3/stack:output:0-first_hidden/strided_slice_3/stack_1:output:0-first_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskr
first_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
first_hidden/transpose_1	Transpose8first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0&first_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2_
second_hidden/ShapeShapefirst_hidden/transpose_1:y:0*
T0*
_output_shapes
:k
!second_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#second_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#second_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_sliceStridedSlicesecond_hidden/Shape:output:0*second_hidden/strided_slice/stack:output:0,second_hidden/strided_slice/stack_1:output:0,second_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
second_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
second_hidden/zeros/packedPack$second_hidden/strided_slice:output:0%second_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
second_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
second_hidden/zerosFill#second_hidden/zeros/packed:output:0"second_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2q
second_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
second_hidden/transpose	Transposefirst_hidden/transpose_1:y:0%second_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d���������2`
second_hidden/Shape_1Shapesecond_hidden/transpose:y:0*
T0*
_output_shapes
:m
#second_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%second_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_1StridedSlicesecond_hidden/Shape_1:output:0,second_hidden/strided_slice_1/stack:output:0.second_hidden/strided_slice_1/stack_1:output:0.second_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)second_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
second_hidden/TensorArrayV2TensorListReserve2second_hidden/TensorArrayV2/element_shape:output:0&second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csecond_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
5second_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsecond_hidden/transpose:y:0Lsecond_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#second_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%second_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_2StridedSlicesecond_hidden/transpose:y:0,second_hidden/strided_slice_2/stack:output:0.second_hidden/strided_slice_2/stack_1:output:0.second_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
&second_hidden/simple_rnn_cell_1/MatMulMatMul&second_hidden/strided_slice_2:output:0=second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
'second_hidden/simple_rnn_cell_1/BiasAddBiasAdd0second_hidden/simple_rnn_cell_1/MatMul:product:0>second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
(second_hidden/simple_rnn_cell_1/MatMul_1MatMulsecond_hidden/zeros:output:0?second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
#second_hidden/simple_rnn_cell_1/addAddV20second_hidden/simple_rnn_cell_1/BiasAdd:output:02second_hidden/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
$second_hidden/simple_rnn_cell_1/TanhTanh'second_hidden/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2|
+second_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
second_hidden/TensorArrayV2_1TensorListReserve4second_hidden/TensorArrayV2_1/element_shape:output:0&second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
second_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&second_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 second_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
second_hidden/whileWhile)second_hidden/while/loop_counter:output:0/second_hidden/while/maximum_iterations:output:0second_hidden/time:output:0&second_hidden/TensorArrayV2_1:handle:0second_hidden/zeros:output:0&second_hidden/strided_slice_1:output:0Esecond_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
second_hidden_while_body_473384*+
cond#R!
second_hidden_while_cond_473383*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
>second_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0second_hidden/TensorArrayV2Stack/TensorListStackTensorListStacksecond_hidden/while:output:3Gsecond_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0v
#second_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%second_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_3StridedSlice9second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0,second_hidden/strided_slice_3/stack:output:0.second_hidden/strided_slice_3/stack_1:output:0.second_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_masks
second_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
second_hidden/transpose_1	Transpose9second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0'second_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2�
"dense_out/Tensordot/ReadVariableOpReadVariableOp+dense_out_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0b
dense_out/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_out/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense_out/Tensordot/ShapeShapesecond_hidden/transpose_1:y:0*
T0*
_output_shapes
:c
!dense_out/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/GatherV2GatherV2"dense_out/Tensordot/Shape:output:0!dense_out/Tensordot/free:output:0*dense_out/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_out/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/GatherV2_1GatherV2"dense_out/Tensordot/Shape:output:0!dense_out/Tensordot/axes:output:0,dense_out/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_out/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_out/Tensordot/ProdProd%dense_out/Tensordot/GatherV2:output:0"dense_out/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_out/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_out/Tensordot/Prod_1Prod'dense_out/Tensordot/GatherV2_1:output:0$dense_out/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_out/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/concatConcatV2!dense_out/Tensordot/free:output:0!dense_out/Tensordot/axes:output:0(dense_out/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_out/Tensordot/stackPack!dense_out/Tensordot/Prod:output:0#dense_out/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_out/Tensordot/transpose	Transposesecond_hidden/transpose_1:y:0#dense_out/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d2�
dense_out/Tensordot/ReshapeReshape!dense_out/Tensordot/transpose:y:0"dense_out/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_out/Tensordot/MatMulMatMul$dense_out/Tensordot/Reshape:output:0*dense_out/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
dense_out/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:c
!dense_out/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/concat_1ConcatV2%dense_out/Tensordot/GatherV2:output:0$dense_out/Tensordot/Const_2:output:0*dense_out/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_out/TensordotReshape$dense_out/Tensordot/MatMul:product:0%dense_out/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
 dense_out/BiasAdd/ReadVariableOpReadVariableOp)dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_out/BiasAddBiasAdddense_out/Tensordot:output:0(dense_out/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dm
IdentityIdentitydense_out/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp!^dense_out/BiasAdd/ReadVariableOp#^dense_out/Tensordot/ReadVariableOp4^first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp3^first_hidden/simple_rnn_cell/MatMul/ReadVariableOp5^first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp^first_hidden/while7^second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp6^second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp8^second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp^second_hidden/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2D
 dense_out/BiasAdd/ReadVariableOp dense_out/BiasAdd/ReadVariableOp2H
"dense_out/Tensordot/ReadVariableOp"dense_out/Tensordot/ReadVariableOp2j
3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp2h
2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp2l
4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp2(
first_hidden/whilefirst_hidden/while2p
6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp2n
5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp2r
7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp2*
second_hidden/whilesecond_hidden/while:Z V
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/0:ZV
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/1
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474777

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�
�
while_cond_474626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474626___redundant_placeholder04
0while_while_cond_474626___redundant_placeholder14
0while_while_cond_474626___redundant_placeholder24
0while_while_cond_474626___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_472707

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472641*
condR
while_cond_472640*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�
�
:__inference_deformation_tracker_model_layer_call_fn_473213
model_input_0
model_input_1
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:2
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodel_input_0model_input_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_472752s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/0:ZV
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/1
�
�
while_cond_471950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_471950___redundant_placeholder04
0while_while_cond_471950___redundant_placeholder14
0while_while_cond_471950___redundant_placeholder24
0while_while_cond_471950___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_472242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472242___redundant_placeholder04
0while_while_cond_472242___redundant_placeholder14
0while_while_cond_472242___redundant_placeholder24
0while_while_cond_472242___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
� 
�
while_body_472110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_472132_0:2,
while_simple_rnn_cell_472134_0:20
while_simple_rnn_cell_472136_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_472132:2*
while_simple_rnn_cell_472134:2.
while_simple_rnn_cell_472136:22��-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_472132_0while_simple_rnn_cell_472134_0while_simple_rnn_cell_472136_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_472058�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_472132while_simple_rnn_cell_472132_0">
while_simple_rnn_cell_472134while_simple_rnn_cell_472134_0">
while_simple_rnn_cell_472136while_simple_rnn_cell_472136_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_dense_out_layer_call_and_return_conditional_losses_472745

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d2�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_471938

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472230

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�<
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_472592

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472526*
condR
while_cond_472525*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�+
�
while_body_472966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_first_hidden_layer_call_fn_473785

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_473032s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_472401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472401___redundant_placeholder04
0while_while_cond_472401___redundant_placeholder14
0while_while_cond_472401___redundant_placeholder24
0while_while_cond_472401___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_472902

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472836*
condR
while_cond_472835*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
��
�	
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473717
model_input_0
model_input_1M
;first_hidden_simple_rnn_cell_matmul_readvariableop_resource:2J
<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource:2O
=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource:22P
>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource:22M
?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource:2R
@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource:22=
+dense_out_tensordot_readvariableop_resource:27
)dense_out_biasadd_readvariableop_resource:
identity�� dense_out/BiasAdd/ReadVariableOp�"dense_out/Tensordot/ReadVariableOp�3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp�2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp�4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp�first_hidden/while�6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp�5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp�7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp�second_hidden/whileY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2model_input_0model_input_1 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d]
first_hidden/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:j
 first_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"first_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"first_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_sliceStridedSlicefirst_hidden/Shape:output:0)first_hidden/strided_slice/stack:output:0+first_hidden/strided_slice/stack_1:output:0+first_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
first_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
first_hidden/zeros/packedPack#first_hidden/strided_slice:output:0$first_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
first_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
first_hidden/zerosFill"first_hidden/zeros/packed:output:0!first_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2p
first_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
first_hidden/transpose	Transposeconcatenate/concat:output:0$first_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d���������^
first_hidden/Shape_1Shapefirst_hidden/transpose:y:0*
T0*
_output_shapes
:l
"first_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$first_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_1StridedSlicefirst_hidden/Shape_1:output:0+first_hidden/strided_slice_1/stack:output:0-first_hidden/strided_slice_1/stack_1:output:0-first_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(first_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
first_hidden/TensorArrayV2TensorListReserve1first_hidden/TensorArrayV2/element_shape:output:0%first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bfirst_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4first_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorfirst_hidden/transpose:y:0Kfirst_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"first_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$first_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_2StridedSlicefirst_hidden/transpose:y:0+first_hidden/strided_slice_2/stack:output:0-first_hidden/strided_slice_2/stack_1:output:0-first_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
2first_hidden/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp;first_hidden_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
#first_hidden/simple_rnn_cell/MatMulMatMul%first_hidden/strided_slice_2:output:0:first_hidden/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
$first_hidden/simple_rnn_cell/BiasAddBiasAdd-first_hidden/simple_rnn_cell/MatMul:product:0;first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
%first_hidden/simple_rnn_cell/MatMul_1MatMulfirst_hidden/zeros:output:0<first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
 first_hidden/simple_rnn_cell/addAddV2-first_hidden/simple_rnn_cell/BiasAdd:output:0/first_hidden/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
!first_hidden/simple_rnn_cell/TanhTanh$first_hidden/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2{
*first_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
first_hidden/TensorArrayV2_1TensorListReserve3first_hidden/TensorArrayV2_1/element_shape:output:0%first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
first_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%first_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
first_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
first_hidden/whileWhile(first_hidden/while/loop_counter:output:0.first_hidden/while/maximum_iterations:output:0first_hidden/time:output:0%first_hidden/TensorArrayV2_1:handle:0first_hidden/zeros:output:0%first_hidden/strided_slice_1:output:0Dfirst_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0;first_hidden_simple_rnn_cell_matmul_readvariableop_resource<first_hidden_simple_rnn_cell_biasadd_readvariableop_resource=first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
first_hidden_while_body_473521**
cond"R 
first_hidden_while_cond_473520*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
=first_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
/first_hidden/TensorArrayV2Stack/TensorListStackTensorListStackfirst_hidden/while:output:3Ffirst_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0u
"first_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$first_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$first_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
first_hidden/strided_slice_3StridedSlice8first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0+first_hidden/strided_slice_3/stack:output:0-first_hidden/strided_slice_3/stack_1:output:0-first_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maskr
first_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
first_hidden/transpose_1	Transpose8first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0&first_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2_
second_hidden/ShapeShapefirst_hidden/transpose_1:y:0*
T0*
_output_shapes
:k
!second_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#second_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#second_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_sliceStridedSlicesecond_hidden/Shape:output:0*second_hidden/strided_slice/stack:output:0,second_hidden/strided_slice/stack_1:output:0,second_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
second_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
second_hidden/zeros/packedPack$second_hidden/strided_slice:output:0%second_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
second_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
second_hidden/zerosFill#second_hidden/zeros/packed:output:0"second_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2q
second_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
second_hidden/transpose	Transposefirst_hidden/transpose_1:y:0%second_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d���������2`
second_hidden/Shape_1Shapesecond_hidden/transpose:y:0*
T0*
_output_shapes
:m
#second_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%second_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_1StridedSlicesecond_hidden/Shape_1:output:0,second_hidden/strided_slice_1/stack:output:0.second_hidden/strided_slice_1/stack_1:output:0.second_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)second_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
second_hidden/TensorArrayV2TensorListReserve2second_hidden/TensorArrayV2/element_shape:output:0&second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csecond_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
5second_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsecond_hidden/transpose:y:0Lsecond_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#second_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%second_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_2StridedSlicesecond_hidden/transpose:y:0,second_hidden/strided_slice_2/stack:output:0.second_hidden/strided_slice_2/stack_1:output:0.second_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
&second_hidden/simple_rnn_cell_1/MatMulMatMul&second_hidden/strided_slice_2:output:0=second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
'second_hidden/simple_rnn_cell_1/BiasAddBiasAdd0second_hidden/simple_rnn_cell_1/MatMul:product:0>second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
(second_hidden/simple_rnn_cell_1/MatMul_1MatMulsecond_hidden/zeros:output:0?second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
#second_hidden/simple_rnn_cell_1/addAddV20second_hidden/simple_rnn_cell_1/BiasAdd:output:02second_hidden/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
$second_hidden/simple_rnn_cell_1/TanhTanh'second_hidden/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2|
+second_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
second_hidden/TensorArrayV2_1TensorListReserve4second_hidden/TensorArrayV2_1/element_shape:output:0&second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
second_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&second_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 second_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
second_hidden/whileWhile)second_hidden/while/loop_counter:output:0/second_hidden/while/maximum_iterations:output:0second_hidden/time:output:0&second_hidden/TensorArrayV2_1:handle:0second_hidden/zeros:output:0&second_hidden/strided_slice_1:output:0Esecond_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0>second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource?second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource@second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
second_hidden_while_body_473625*+
cond#R!
second_hidden_while_cond_473624*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
>second_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0second_hidden/TensorArrayV2Stack/TensorListStackTensorListStacksecond_hidden/while:output:3Gsecond_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0v
#second_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%second_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%second_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
second_hidden/strided_slice_3StridedSlice9second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0,second_hidden/strided_slice_3/stack:output:0.second_hidden/strided_slice_3/stack_1:output:0.second_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_masks
second_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
second_hidden/transpose_1	Transpose9second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0'second_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2�
"dense_out/Tensordot/ReadVariableOpReadVariableOp+dense_out_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0b
dense_out/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_out/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense_out/Tensordot/ShapeShapesecond_hidden/transpose_1:y:0*
T0*
_output_shapes
:c
!dense_out/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/GatherV2GatherV2"dense_out/Tensordot/Shape:output:0!dense_out/Tensordot/free:output:0*dense_out/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_out/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/GatherV2_1GatherV2"dense_out/Tensordot/Shape:output:0!dense_out/Tensordot/axes:output:0,dense_out/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_out/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_out/Tensordot/ProdProd%dense_out/Tensordot/GatherV2:output:0"dense_out/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_out/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_out/Tensordot/Prod_1Prod'dense_out/Tensordot/GatherV2_1:output:0$dense_out/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_out/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/concatConcatV2!dense_out/Tensordot/free:output:0!dense_out/Tensordot/axes:output:0(dense_out/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_out/Tensordot/stackPack!dense_out/Tensordot/Prod:output:0#dense_out/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_out/Tensordot/transpose	Transposesecond_hidden/transpose_1:y:0#dense_out/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d2�
dense_out/Tensordot/ReshapeReshape!dense_out/Tensordot/transpose:y:0"dense_out/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_out/Tensordot/MatMulMatMul$dense_out/Tensordot/Reshape:output:0*dense_out/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
dense_out/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:c
!dense_out/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_out/Tensordot/concat_1ConcatV2%dense_out/Tensordot/GatherV2:output:0$dense_out/Tensordot/Const_2:output:0*dense_out/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_out/TensordotReshape$dense_out/Tensordot/MatMul:product:0%dense_out/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
 dense_out/BiasAdd/ReadVariableOpReadVariableOp)dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_out/BiasAddBiasAdddense_out/Tensordot:output:0(dense_out/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dm
IdentityIdentitydense_out/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp!^dense_out/BiasAdd/ReadVariableOp#^dense_out/Tensordot/ReadVariableOp4^first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp3^first_hidden/simple_rnn_cell/MatMul/ReadVariableOp5^first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp^first_hidden/while7^second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp6^second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp8^second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp^second_hidden/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2D
 dense_out/BiasAdd/ReadVariableOp dense_out/BiasAdd/ReadVariableOp2H
"dense_out/Tensordot/ReadVariableOp"dense_out/Tensordot/ReadVariableOp2j
3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp3first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp2h
2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp2first_hidden/simple_rnn_cell/MatMul/ReadVariableOp2l
4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp4first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp2(
first_hidden/whilefirst_hidden/while2p
6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp6second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp2n
5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp5second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp2r
7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp7second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp2*
second_hidden/whilesecond_hidden/while:Z V
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/0:ZV
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/1
�
�
while_cond_474518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474518___redundant_placeholder04
0while_while_cond_474518___redundant_placeholder14
0while_while_cond_474518___redundant_placeholder24
0while_while_cond_474518___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
.__inference_second_hidden_layer_call_fn_474228
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472306|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473159
input_1
input_2%
first_hidden_473139:2!
first_hidden_473141:2%
first_hidden_473143:22&
second_hidden_473146:22"
second_hidden_473148:2&
second_hidden_473150:22"
dense_out_473153:2
dense_out_473155:
identity��!dense_out/StatefulPartitionedCall�$first_hidden/StatefulPartitionedCall�%second_hidden/StatefulPartitionedCallY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2input_1input_2 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d�
$first_hidden/StatefulPartitionedCallStatefulPartitionedCallconcatenate/concat:output:0first_hidden_473139first_hidden_473141first_hidden_473143*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_472592�
%second_hidden/StatefulPartitionedCallStatefulPartitionedCall-first_hidden/StatefulPartitionedCall:output:0second_hidden_473146second_hidden_473148second_hidden_473150*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472707�
!dense_out/StatefulPartitionedCallStatefulPartitionedCall.second_hidden/StatefulPartitionedCall:output:0dense_out_473153dense_out_473155*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_out_layer_call_and_return_conditional_losses_472745}
IdentityIdentity*dense_out/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp"^dense_out/StatefulPartitionedCall%^first_hidden/StatefulPartitionedCall&^second_hidden/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2F
!dense_out/StatefulPartitionedCall!dense_out/StatefulPartitionedCall2L
$first_hidden/StatefulPartitionedCall$first_hidden/StatefulPartitionedCall2N
%second_hidden/StatefulPartitionedCall%second_hidden/StatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�<
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_474109

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474043*
condR
while_cond_474042*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
.__inference_second_hidden_layer_call_fn_474239
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472465|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�
�
*__inference_dense_out_layer_call_fn_474702

inputs
unknown:2
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_out_layer_call_and_return_conditional_losses_472745s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�!
�
while_body_472243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_472265_0:22.
 while_simple_rnn_cell_1_472267_0:22
 while_simple_rnn_cell_1_472269_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_472265:22,
while_simple_rnn_cell_1_472267:20
while_simple_rnn_cell_1_472269:22��/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_472265_0 while_simple_rnn_cell_1_472267_0 while_simple_rnn_cell_1_472269_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472230�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_472265 while_simple_rnn_cell_1_472265_0"B
while_simple_rnn_cell_1_472267 while_simple_rnn_cell_1_472267_0"B
while_simple_rnn_cell_1_472269 while_simple_rnn_cell_1_472269_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474369
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474303*
condR
while_cond_474302*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�4
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_472465

inputs*
simple_rnn_cell_1_472390:22&
simple_rnn_cell_1_472392:2*
simple_rnn_cell_1_472394:22
identity��)simple_rnn_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_472390simple_rnn_cell_1_472392simple_rnn_cell_1_472394*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472350n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_472390simple_rnn_cell_1_472392simple_rnn_cell_1_472394*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_472402*
condR
while_cond_472401*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������2
 
_user_specified_nameinputs
�9
�
second_hidden_while_body_4733848
4second_hidden_while_second_hidden_while_loop_counter>
:second_hidden_while_second_hidden_while_maximum_iterations#
second_hidden_while_placeholder%
!second_hidden_while_placeholder_1%
!second_hidden_while_placeholder_27
3second_hidden_while_second_hidden_strided_slice_1_0s
osecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0X
Fsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22U
Gsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2Z
Hsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22 
second_hidden_while_identity"
second_hidden_while_identity_1"
second_hidden_while_identity_2"
second_hidden_while_identity_3"
second_hidden_while_identity_45
1second_hidden_while_second_hidden_strided_slice_1q
msecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensorV
Dsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource:22S
Esecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource:2X
Fsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp�=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Esecond_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
7second_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0second_hidden_while_placeholderNsecond_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpFsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
,second_hidden/while/simple_rnn_cell_1/MatMulMatMul>second_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0Csecond_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpGsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
-second_hidden/while/simple_rnn_cell_1/BiasAddBiasAdd6second_hidden/while/simple_rnn_cell_1/MatMul:product:0Dsecond_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpHsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
.second_hidden/while/simple_rnn_cell_1/MatMul_1MatMul!second_hidden_while_placeholder_2Esecond_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)second_hidden/while/simple_rnn_cell_1/addAddV26second_hidden/while/simple_rnn_cell_1/BiasAdd:output:08second_hidden/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
*second_hidden/while/simple_rnn_cell_1/TanhTanh-second_hidden/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
8second_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!second_hidden_while_placeholder_1second_hidden_while_placeholder.second_hidden/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
second_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
second_hidden/while/addAddV2second_hidden_while_placeholder"second_hidden/while/add/y:output:0*
T0*
_output_shapes
: ]
second_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
second_hidden/while/add_1AddV24second_hidden_while_second_hidden_while_loop_counter$second_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
second_hidden/while/IdentityIdentitysecond_hidden/while/add_1:z:0^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_1Identity:second_hidden_while_second_hidden_while_maximum_iterations^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_2Identitysecond_hidden/while/add:z:0^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_3IdentityHsecond_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^second_hidden/while/NoOp*
T0*
_output_shapes
: :����
second_hidden/while/Identity_4Identity.second_hidden/while/simple_rnn_cell_1/Tanh:y:0^second_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
second_hidden/while/NoOpNoOp=^second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp<^second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp>^second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
second_hidden_while_identity%second_hidden/while/Identity:output:0"I
second_hidden_while_identity_1'second_hidden/while/Identity_1:output:0"I
second_hidden_while_identity_2'second_hidden/while/Identity_2:output:0"I
second_hidden_while_identity_3'second_hidden/while/Identity_3:output:0"I
second_hidden_while_identity_4'second_hidden/while/Identity_4:output:0"h
1second_hidden_while_second_hidden_strided_slice_13second_hidden_while_second_hidden_strided_slice_1_0"�
Esecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resourceGsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Fsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceHsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Dsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resourceFsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
msecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensorosecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2|
<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2z
;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp2~
=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�

�
second_hidden_while_cond_4736248
4second_hidden_while_second_hidden_while_loop_counter>
:second_hidden_while_second_hidden_while_maximum_iterations#
second_hidden_while_placeholder%
!second_hidden_while_placeholder_1%
!second_hidden_while_placeholder_2:
6second_hidden_while_less_second_hidden_strided_slice_1P
Lsecond_hidden_while_second_hidden_while_cond_473624___redundant_placeholder0P
Lsecond_hidden_while_second_hidden_while_cond_473624___redundant_placeholder1P
Lsecond_hidden_while_second_hidden_while_cond_473624___redundant_placeholder2P
Lsecond_hidden_while_second_hidden_while_cond_473624___redundant_placeholder3 
second_hidden_while_identity
�
second_hidden/while/LessLesssecond_hidden_while_placeholder6second_hidden_while_less_second_hidden_strided_slice_1*
T0*
_output_shapes
: g
second_hidden/while/IdentityIdentitysecond_hidden/while/Less:z:0*
T0
*
_output_shapes
: "E
second_hidden_while_identity%second_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�+
�
while_body_472526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_first_hidden_layer_call_fn_473774

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_472592s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
:__inference_deformation_tracker_model_layer_call_fn_473235
model_input_0
model_input_1
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:2
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodel_input_0model_input_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473092s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/0:ZV
+
_output_shapes
:���������d
'
_user_specified_namemodel_input/1
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474585

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474519*
condR
while_cond_474518*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�=
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_474001
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_473935*
condR
while_cond_473934*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�<
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_474217

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474151*
condR
while_cond_474150*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
first_hidden_while_cond_4735206
2first_hidden_while_first_hidden_while_loop_counter<
8first_hidden_while_first_hidden_while_maximum_iterations"
first_hidden_while_placeholder$
 first_hidden_while_placeholder_1$
 first_hidden_while_placeholder_28
4first_hidden_while_less_first_hidden_strided_slice_1N
Jfirst_hidden_while_first_hidden_while_cond_473520___redundant_placeholder0N
Jfirst_hidden_while_first_hidden_while_cond_473520___redundant_placeholder1N
Jfirst_hidden_while_first_hidden_while_cond_473520___redundant_placeholder2N
Jfirst_hidden_while_first_hidden_while_cond_473520___redundant_placeholder3
first_hidden_while_identity
�
first_hidden/while/LessLessfirst_hidden_while_placeholder4first_hidden_while_less_first_hidden_strided_slice_1*
T0*
_output_shapes
: e
first_hidden/while/IdentityIdentityfirst_hidden/while/Less:z:0*
T0
*
_output_shapes
: "C
first_hidden_while_identity$first_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_474302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_474302___redundant_placeholder04
0while_while_cond_474302___redundant_placeholder14
0while_while_cond_474302___redundant_placeholder24
0while_while_cond_474302___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�,
�
while_body_474411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�

�
:__inference_deformation_tracker_model_layer_call_fn_472771
input_1
input_2
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:2
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_472752s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�3
�
H__inference_first_hidden_layer_call_and_return_conditional_losses_472014

inputs(
simple_rnn_cell_471939:2$
simple_rnn_cell_471941:2(
simple_rnn_cell_471943:22
identity��'simple_rnn_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_471939simple_rnn_cell_471941simple_rnn_cell_471943*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_471938n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_471939simple_rnn_cell_471941simple_rnn_cell_471943*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_471951*
condR
while_cond_471950*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�+
�
while_body_473827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_472058

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474693

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474627*
condR
while_cond_474626*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�,
�
while_body_474303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_472109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_472109___redundant_placeholder04
0while_while_cond_472109___redundant_placeholder14
0while_while_cond_472109___redundant_placeholder24
0while_while_cond_472109___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473185
input_1
input_2%
first_hidden_473165:2!
first_hidden_473167:2%
first_hidden_473169:22&
second_hidden_473172:22"
second_hidden_473174:2&
second_hidden_473176:22"
dense_out_473179:2
dense_out_473181:
identity��!dense_out/StatefulPartitionedCall�$first_hidden/StatefulPartitionedCall�%second_hidden/StatefulPartitionedCallY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2input_1input_2 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d�
$first_hidden/StatefulPartitionedCallStatefulPartitionedCallconcatenate/concat:output:0first_hidden_473165first_hidden_473167first_hidden_473169*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_473032�
%second_hidden/StatefulPartitionedCallStatefulPartitionedCall-first_hidden/StatefulPartitionedCall:output:0second_hidden_473172second_hidden_473174second_hidden_473176*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472902�
!dense_out/StatefulPartitionedCallStatefulPartitionedCall.second_hidden/StatefulPartitionedCall:output:0dense_out_473179dense_out_473181*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_out_layer_call_and_return_conditional_losses_472745}
IdentityIdentity*dense_out/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp"^dense_out/StatefulPartitionedCall%^first_hidden/StatefulPartitionedCall&^second_hidden/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2F
!dense_out/StatefulPartitionedCall!dense_out/StatefulPartitionedCall2L
$first_hidden/StatefulPartitionedCall$first_hidden/StatefulPartitionedCall2N
%second_hidden/StatefulPartitionedCall%second_hidden/StatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�
�
.__inference_second_hidden_layer_call_fn_474261

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472902s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d2
 
_user_specified_nameinputs
�7
�
first_hidden_while_body_4735216
2first_hidden_while_first_hidden_while_loop_counter<
8first_hidden_while_first_hidden_while_maximum_iterations"
first_hidden_while_placeholder$
 first_hidden_while_placeholder_1$
 first_hidden_while_placeholder_25
1first_hidden_while_first_hidden_strided_slice_1_0q
mfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0U
Cfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0:2R
Dfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2W
Efirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
first_hidden_while_identity!
first_hidden_while_identity_1!
first_hidden_while_identity_2!
first_hidden_while_identity_3!
first_hidden_while_identity_43
/first_hidden_while_first_hidden_strided_slice_1o
kfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensorS
Afirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource:2P
Bfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource:2U
Cfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource:22��9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp�8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp�:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Dfirst_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6first_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0first_hidden_while_placeholderMfirst_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpCfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
)first_hidden/while/simple_rnn_cell/MatMulMatMul=first_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0@first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpDfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
*first_hidden/while/simple_rnn_cell/BiasAddBiasAdd3first_hidden/while/simple_rnn_cell/MatMul:product:0Afirst_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpEfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
+first_hidden/while/simple_rnn_cell/MatMul_1MatMul first_hidden_while_placeholder_2Bfirst_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&first_hidden/while/simple_rnn_cell/addAddV23first_hidden/while/simple_rnn_cell/BiasAdd:output:05first_hidden/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
'first_hidden/while/simple_rnn_cell/TanhTanh*first_hidden/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
7first_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem first_hidden_while_placeholder_1first_hidden_while_placeholder+first_hidden/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
first_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
first_hidden/while/addAddV2first_hidden_while_placeholder!first_hidden/while/add/y:output:0*
T0*
_output_shapes
: \
first_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
first_hidden/while/add_1AddV22first_hidden_while_first_hidden_while_loop_counter#first_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
first_hidden/while/IdentityIdentityfirst_hidden/while/add_1:z:0^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_1Identity8first_hidden_while_first_hidden_while_maximum_iterations^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_2Identityfirst_hidden/while/add:z:0^first_hidden/while/NoOp*
T0*
_output_shapes
: �
first_hidden/while/Identity_3IdentityGfirst_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^first_hidden/while/NoOp*
T0*
_output_shapes
: :����
first_hidden/while/Identity_4Identity+first_hidden/while/simple_rnn_cell/Tanh:y:0^first_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
first_hidden/while/NoOpNoOp:^first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp9^first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp;^first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/first_hidden_while_first_hidden_strided_slice_11first_hidden_while_first_hidden_strided_slice_1_0"C
first_hidden_while_identity$first_hidden/while/Identity:output:0"G
first_hidden_while_identity_1&first_hidden/while/Identity_1:output:0"G
first_hidden_while_identity_2&first_hidden/while/Identity_2:output:0"G
first_hidden_while_identity_3&first_hidden/while/Identity_3:output:0"G
first_hidden_while_identity_4&first_hidden/while/Identity_4:output:0"�
Bfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resourceDfirst_hidden_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Cfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resourceEfirst_hidden_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
Afirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resourceCfirst_hidden_while_simple_rnn_cell_matmul_readvariableop_resource_0"�
kfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensormfirst_hidden_while_tensorarrayv2read_tensorlistgetitem_first_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2v
9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp9first_hidden/while/simple_rnn_cell/BiasAdd/ReadVariableOp2t
8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp8first_hidden/while/simple_rnn_cell/MatMul/ReadVariableOp2x
:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp:first_hidden/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
� 
�
while_body_471951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_471973_0:2,
while_simple_rnn_cell_471975_0:20
while_simple_rnn_cell_471977_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_471973:2*
while_simple_rnn_cell_471975:2.
while_simple_rnn_cell_471977:22��-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_471973_0while_simple_rnn_cell_471975_0while_simple_rnn_cell_471977_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_471938�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_471973while_simple_rnn_cell_471973_0">
while_simple_rnn_cell_471975while_simple_rnn_cell_471975_0">
while_simple_rnn_cell_471977while_simple_rnn_cell_471977_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�

�
2__inference_simple_rnn_cell_1_layer_call_fn_474822

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�,
�
while_body_472836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:22E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:2J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���}
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_472752
model_input
model_input_1%
first_hidden_472593:2!
first_hidden_472595:2%
first_hidden_472597:22&
second_hidden_472708:22"
second_hidden_472710:2&
second_hidden_472712:22"
dense_out_472746:2
dense_out_472748:
identity��!dense_out/StatefulPartitionedCall�$first_hidden/StatefulPartitionedCall�%second_hidden/StatefulPartitionedCallY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2model_inputmodel_input_1 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d�
$first_hidden/StatefulPartitionedCallStatefulPartitionedCallconcatenate/concat:output:0first_hidden_472593first_hidden_472595first_hidden_472597*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_472592�
%second_hidden/StatefulPartitionedCallStatefulPartitionedCall-first_hidden/StatefulPartitionedCall:output:0second_hidden_472708second_hidden_472710second_hidden_472712*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472707�
!dense_out/StatefulPartitionedCallStatefulPartitionedCall.second_hidden/StatefulPartitionedCall:output:0dense_out_472746dense_out_472748*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_out_layer_call_and_return_conditional_losses_472745}
IdentityIdentity*dense_out/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp"^dense_out/StatefulPartitionedCall%^first_hidden/StatefulPartitionedCall&^second_hidden/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2F
!dense_out/StatefulPartitionedCall!dense_out/StatefulPartitionedCall2L
$first_hidden/StatefulPartitionedCall$first_hidden/StatefulPartitionedCall2N
%second_hidden/StatefulPartitionedCall%second_hidden/StatefulPartitionedCall:X T
+
_output_shapes
:���������d
%
_user_specified_namemodel_input:XT
+
_output_shapes
:���������d
%
_user_specified_namemodel_input
�+
�
while_body_473935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
ŋ
�
"__inference__traced_restore_475076
file_prefixM
;assignvariableop_deformation_tracker_model_dense_out_kernel:2I
;assignvariableop_1_deformation_tracker_model_dense_out_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: b
Passignvariableop_7_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel:2l
Zassignvariableop_8_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel:22\
Nassignvariableop_9_deformation_tracker_model_first_hidden_simple_rnn_cell_bias:2f
Tassignvariableop_10_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel:22p
^assignvariableop_11_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel:22`
Rassignvariableop_12_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias:2#
assignvariableop_13_total: #
assignvariableop_14_count: W
Eassignvariableop_15_adam_deformation_tracker_model_dense_out_kernel_m:2Q
Cassignvariableop_16_adam_deformation_tracker_model_dense_out_bias_m:j
Xassignvariableop_17_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_m:2t
bassignvariableop_18_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_m:22d
Vassignvariableop_19_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_m:2m
[assignvariableop_20_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_m:22w
eassignvariableop_21_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_m:22g
Yassignvariableop_22_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_m:2W
Eassignvariableop_23_adam_deformation_tracker_model_dense_out_kernel_v:2Q
Cassignvariableop_24_adam_deformation_tracker_model_dense_out_bias_v:j
Xassignvariableop_25_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_v:2t
bassignvariableop_26_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_v:22d
Vassignvariableop_27_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_v:2m
[assignvariableop_28_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_v:22w
eassignvariableop_29_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_v:22g
Yassignvariableop_30_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_v:2
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp;assignvariableop_deformation_tracker_model_dense_out_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp;assignvariableop_1_deformation_tracker_model_dense_out_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpPassignvariableop_7_deformation_tracker_model_first_hidden_simple_rnn_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpZassignvariableop_8_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpNassignvariableop_9_deformation_tracker_model_first_hidden_simple_rnn_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpTassignvariableop_10_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp^assignvariableop_11_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpRassignvariableop_12_deformation_tracker_model_second_hidden_simple_rnn_cell_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpEassignvariableop_15_adam_deformation_tracker_model_dense_out_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpCassignvariableop_16_adam_deformation_tracker_model_dense_out_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpXassignvariableop_17_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpbassignvariableop_18_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpVassignvariableop_19_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp[assignvariableop_20_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpeassignvariableop_21_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpYassignvariableop_22_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpEassignvariableop_23_adam_deformation_tracker_model_dense_out_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpCassignvariableop_24_adam_deformation_tracker_model_dense_out_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpXassignvariableop_25_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpbassignvariableop_26_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpVassignvariableop_27_adam_deformation_tracker_model_first_hidden_simple_rnn_cell_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp[assignvariableop_28_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpeassignvariableop_29_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpYassignvariableop_30_adam_deformation_tracker_model_second_hidden_simple_rnn_cell_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
!__inference__wrapped_model_471890
input_1
input_2g
Udeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_readvariableop_resource:2d
Vdeformation_tracker_model_first_hidden_simple_rnn_cell_biasadd_readvariableop_resource:2i
Wdeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource:22j
Xdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource:22g
Ydeformation_tracker_model_second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource:2l
Zdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource:22W
Edeformation_tracker_model_dense_out_tensordot_readvariableop_resource:2Q
Cdeformation_tracker_model_dense_out_biasadd_readvariableop_resource:
identity��:deformation_tracker_model/dense_out/BiasAdd/ReadVariableOp�<deformation_tracker_model/dense_out/Tensordot/ReadVariableOp�Mdeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp�Ldeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOp�Ndeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp�,deformation_tracker_model/first_hidden/while�Pdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp�Odeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp�Qdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp�-deformation_tracker_model/second_hidden/whiles
1deformation_tracker_model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
,deformation_tracker_model/concatenate/concatConcatV2input_1input_2:deformation_tracker_model/concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d�
,deformation_tracker_model/first_hidden/ShapeShape5deformation_tracker_model/concatenate/concat:output:0*
T0*
_output_shapes
:�
:deformation_tracker_model/first_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<deformation_tracker_model/first_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<deformation_tracker_model/first_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4deformation_tracker_model/first_hidden/strided_sliceStridedSlice5deformation_tracker_model/first_hidden/Shape:output:0Cdeformation_tracker_model/first_hidden/strided_slice/stack:output:0Edeformation_tracker_model/first_hidden/strided_slice/stack_1:output:0Edeformation_tracker_model/first_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5deformation_tracker_model/first_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
3deformation_tracker_model/first_hidden/zeros/packedPack=deformation_tracker_model/first_hidden/strided_slice:output:0>deformation_tracker_model/first_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:w
2deformation_tracker_model/first_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
,deformation_tracker_model/first_hidden/zerosFill<deformation_tracker_model/first_hidden/zeros/packed:output:0;deformation_tracker_model/first_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2�
5deformation_tracker_model/first_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0deformation_tracker_model/first_hidden/transpose	Transpose5deformation_tracker_model/concatenate/concat:output:0>deformation_tracker_model/first_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d����������
.deformation_tracker_model/first_hidden/Shape_1Shape4deformation_tracker_model/first_hidden/transpose:y:0*
T0*
_output_shapes
:�
<deformation_tracker_model/first_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>deformation_tracker_model/first_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>deformation_tracker_model/first_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6deformation_tracker_model/first_hidden/strided_slice_1StridedSlice7deformation_tracker_model/first_hidden/Shape_1:output:0Edeformation_tracker_model/first_hidden/strided_slice_1/stack:output:0Gdeformation_tracker_model/first_hidden/strided_slice_1/stack_1:output:0Gdeformation_tracker_model/first_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bdeformation_tracker_model/first_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
4deformation_tracker_model/first_hidden/TensorArrayV2TensorListReserveKdeformation_tracker_model/first_hidden/TensorArrayV2/element_shape:output:0?deformation_tracker_model/first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
\deformation_tracker_model/first_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ndeformation_tracker_model/first_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor4deformation_tracker_model/first_hidden/transpose:y:0edeformation_tracker_model/first_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
<deformation_tracker_model/first_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>deformation_tracker_model/first_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>deformation_tracker_model/first_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6deformation_tracker_model/first_hidden/strided_slice_2StridedSlice4deformation_tracker_model/first_hidden/transpose:y:0Edeformation_tracker_model/first_hidden/strided_slice_2/stack:output:0Gdeformation_tracker_model/first_hidden/strided_slice_2/stack_1:output:0Gdeformation_tracker_model/first_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Ldeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpUdeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
=deformation_tracker_model/first_hidden/simple_rnn_cell/MatMulMatMul?deformation_tracker_model/first_hidden/strided_slice_2:output:0Tdeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Mdeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpVdeformation_tracker_model_first_hidden_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
>deformation_tracker_model/first_hidden/simple_rnn_cell/BiasAddBiasAddGdeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul:product:0Udeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Ndeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpWdeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
?deformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1MatMul5deformation_tracker_model/first_hidden/zeros:output:0Vdeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
:deformation_tracker_model/first_hidden/simple_rnn_cell/addAddV2Gdeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd:output:0Ideformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
;deformation_tracker_model/first_hidden/simple_rnn_cell/TanhTanh>deformation_tracker_model/first_hidden/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
Ddeformation_tracker_model/first_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
6deformation_tracker_model/first_hidden/TensorArrayV2_1TensorListReserveMdeformation_tracker_model/first_hidden/TensorArrayV2_1/element_shape:output:0?deformation_tracker_model/first_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
+deformation_tracker_model/first_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : �
?deformation_tracker_model/first_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������{
9deformation_tracker_model/first_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �	
,deformation_tracker_model/first_hidden/whileWhileBdeformation_tracker_model/first_hidden/while/loop_counter:output:0Hdeformation_tracker_model/first_hidden/while/maximum_iterations:output:04deformation_tracker_model/first_hidden/time:output:0?deformation_tracker_model/first_hidden/TensorArrayV2_1:handle:05deformation_tracker_model/first_hidden/zeros:output:0?deformation_tracker_model/first_hidden/strided_slice_1:output:0^deformation_tracker_model/first_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0Udeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_readvariableop_resourceVdeformation_tracker_model_first_hidden_simple_rnn_cell_biasadd_readvariableop_resourceWdeformation_tracker_model_first_hidden_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *D
body<R:
8deformation_tracker_model_first_hidden_while_body_471694*D
cond<R:
8deformation_tracker_model_first_hidden_while_cond_471693*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
Wdeformation_tracker_model/first_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Ideformation_tracker_model/first_hidden/TensorArrayV2Stack/TensorListStackTensorListStack5deformation_tracker_model/first_hidden/while:output:3`deformation_tracker_model/first_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0�
<deformation_tracker_model/first_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
>deformation_tracker_model/first_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
>deformation_tracker_model/first_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6deformation_tracker_model/first_hidden/strided_slice_3StridedSliceRdeformation_tracker_model/first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0Edeformation_tracker_model/first_hidden/strided_slice_3/stack:output:0Gdeformation_tracker_model/first_hidden/strided_slice_3/stack_1:output:0Gdeformation_tracker_model/first_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
7deformation_tracker_model/first_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
2deformation_tracker_model/first_hidden/transpose_1	TransposeRdeformation_tracker_model/first_hidden/TensorArrayV2Stack/TensorListStack:tensor:0@deformation_tracker_model/first_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2�
-deformation_tracker_model/second_hidden/ShapeShape6deformation_tracker_model/first_hidden/transpose_1:y:0*
T0*
_output_shapes
:�
;deformation_tracker_model/second_hidden/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=deformation_tracker_model/second_hidden/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=deformation_tracker_model/second_hidden/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5deformation_tracker_model/second_hidden/strided_sliceStridedSlice6deformation_tracker_model/second_hidden/Shape:output:0Ddeformation_tracker_model/second_hidden/strided_slice/stack:output:0Fdeformation_tracker_model/second_hidden/strided_slice/stack_1:output:0Fdeformation_tracker_model/second_hidden/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6deformation_tracker_model/second_hidden/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
4deformation_tracker_model/second_hidden/zeros/packedPack>deformation_tracker_model/second_hidden/strided_slice:output:0?deformation_tracker_model/second_hidden/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:x
3deformation_tracker_model/second_hidden/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-deformation_tracker_model/second_hidden/zerosFill=deformation_tracker_model/second_hidden/zeros/packed:output:0<deformation_tracker_model/second_hidden/zeros/Const:output:0*
T0*'
_output_shapes
:���������2�
6deformation_tracker_model/second_hidden/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
1deformation_tracker_model/second_hidden/transpose	Transpose6deformation_tracker_model/first_hidden/transpose_1:y:0?deformation_tracker_model/second_hidden/transpose/perm:output:0*
T0*+
_output_shapes
:d���������2�
/deformation_tracker_model/second_hidden/Shape_1Shape5deformation_tracker_model/second_hidden/transpose:y:0*
T0*
_output_shapes
:�
=deformation_tracker_model/second_hidden/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?deformation_tracker_model/second_hidden/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?deformation_tracker_model/second_hidden/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7deformation_tracker_model/second_hidden/strided_slice_1StridedSlice8deformation_tracker_model/second_hidden/Shape_1:output:0Fdeformation_tracker_model/second_hidden/strided_slice_1/stack:output:0Hdeformation_tracker_model/second_hidden/strided_slice_1/stack_1:output:0Hdeformation_tracker_model/second_hidden/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Cdeformation_tracker_model/second_hidden/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
5deformation_tracker_model/second_hidden/TensorArrayV2TensorListReserveLdeformation_tracker_model/second_hidden/TensorArrayV2/element_shape:output:0@deformation_tracker_model/second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
]deformation_tracker_model/second_hidden/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Odeformation_tracker_model/second_hidden/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor5deformation_tracker_model/second_hidden/transpose:y:0fdeformation_tracker_model/second_hidden/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=deformation_tracker_model/second_hidden/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?deformation_tracker_model/second_hidden/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?deformation_tracker_model/second_hidden/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7deformation_tracker_model/second_hidden/strided_slice_2StridedSlice5deformation_tracker_model/second_hidden/transpose:y:0Fdeformation_tracker_model/second_hidden/strided_slice_2/stack:output:0Hdeformation_tracker_model/second_hidden/strided_slice_2/stack_1:output:0Hdeformation_tracker_model/second_hidden/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
Odeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpXdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
@deformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMulMatMul@deformation_tracker_model/second_hidden/strided_slice_2:output:0Wdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Pdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpYdeformation_tracker_model_second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
Adeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAddBiasAddJdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul:product:0Xdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Qdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpZdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
Bdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1MatMul6deformation_tracker_model/second_hidden/zeros:output:0Ydeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
=deformation_tracker_model/second_hidden/simple_rnn_cell_1/addAddV2Jdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd:output:0Ldeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
>deformation_tracker_model/second_hidden/simple_rnn_cell_1/TanhTanhAdeformation_tracker_model/second_hidden/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
Edeformation_tracker_model/second_hidden/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
7deformation_tracker_model/second_hidden/TensorArrayV2_1TensorListReserveNdeformation_tracker_model/second_hidden/TensorArrayV2_1/element_shape:output:0@deformation_tracker_model/second_hidden/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
,deformation_tracker_model/second_hidden/timeConst*
_output_shapes
: *
dtype0*
value	B : �
@deformation_tracker_model/second_hidden/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������|
:deformation_tracker_model/second_hidden/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �	
-deformation_tracker_model/second_hidden/whileWhileCdeformation_tracker_model/second_hidden/while/loop_counter:output:0Ideformation_tracker_model/second_hidden/while/maximum_iterations:output:05deformation_tracker_model/second_hidden/time:output:0@deformation_tracker_model/second_hidden/TensorArrayV2_1:handle:06deformation_tracker_model/second_hidden/zeros:output:0@deformation_tracker_model/second_hidden/strided_slice_1:output:0_deformation_tracker_model/second_hidden/TensorArrayUnstack/TensorListFromTensor:output_handle:0Xdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_readvariableop_resourceYdeformation_tracker_model_second_hidden_simple_rnn_cell_1_biasadd_readvariableop_resourceZdeformation_tracker_model_second_hidden_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *E
body=R;
9deformation_tracker_model_second_hidden_while_body_471798*E
cond=R;
9deformation_tracker_model_second_hidden_while_cond_471797*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
Xdeformation_tracker_model/second_hidden/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
Jdeformation_tracker_model/second_hidden/TensorArrayV2Stack/TensorListStackTensorListStack6deformation_tracker_model/second_hidden/while:output:3adeformation_tracker_model/second_hidden/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d���������2*
element_dtype0�
=deformation_tracker_model/second_hidden/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
?deformation_tracker_model/second_hidden/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
?deformation_tracker_model/second_hidden/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7deformation_tracker_model/second_hidden/strided_slice_3StridedSliceSdeformation_tracker_model/second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0Fdeformation_tracker_model/second_hidden/strided_slice_3/stack:output:0Hdeformation_tracker_model/second_hidden/strided_slice_3/stack_1:output:0Hdeformation_tracker_model/second_hidden/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
8deformation_tracker_model/second_hidden/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
3deformation_tracker_model/second_hidden/transpose_1	TransposeSdeformation_tracker_model/second_hidden/TensorArrayV2Stack/TensorListStack:tensor:0Adeformation_tracker_model/second_hidden/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d2�
<deformation_tracker_model/dense_out/Tensordot/ReadVariableOpReadVariableOpEdeformation_tracker_model_dense_out_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0|
2deformation_tracker_model/dense_out/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
2deformation_tracker_model/dense_out/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
3deformation_tracker_model/dense_out/Tensordot/ShapeShape7deformation_tracker_model/second_hidden/transpose_1:y:0*
T0*
_output_shapes
:}
;deformation_tracker_model/dense_out/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6deformation_tracker_model/dense_out/Tensordot/GatherV2GatherV2<deformation_tracker_model/dense_out/Tensordot/Shape:output:0;deformation_tracker_model/dense_out/Tensordot/free:output:0Ddeformation_tracker_model/dense_out/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
=deformation_tracker_model/dense_out/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
8deformation_tracker_model/dense_out/Tensordot/GatherV2_1GatherV2<deformation_tracker_model/dense_out/Tensordot/Shape:output:0;deformation_tracker_model/dense_out/Tensordot/axes:output:0Fdeformation_tracker_model/dense_out/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
3deformation_tracker_model/dense_out/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
2deformation_tracker_model/dense_out/Tensordot/ProdProd?deformation_tracker_model/dense_out/Tensordot/GatherV2:output:0<deformation_tracker_model/dense_out/Tensordot/Const:output:0*
T0*
_output_shapes
: 
5deformation_tracker_model/dense_out/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
4deformation_tracker_model/dense_out/Tensordot/Prod_1ProdAdeformation_tracker_model/dense_out/Tensordot/GatherV2_1:output:0>deformation_tracker_model/dense_out/Tensordot/Const_1:output:0*
T0*
_output_shapes
: {
9deformation_tracker_model/dense_out/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4deformation_tracker_model/dense_out/Tensordot/concatConcatV2;deformation_tracker_model/dense_out/Tensordot/free:output:0;deformation_tracker_model/dense_out/Tensordot/axes:output:0Bdeformation_tracker_model/dense_out/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
3deformation_tracker_model/dense_out/Tensordot/stackPack;deformation_tracker_model/dense_out/Tensordot/Prod:output:0=deformation_tracker_model/dense_out/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
7deformation_tracker_model/dense_out/Tensordot/transpose	Transpose7deformation_tracker_model/second_hidden/transpose_1:y:0=deformation_tracker_model/dense_out/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d2�
5deformation_tracker_model/dense_out/Tensordot/ReshapeReshape;deformation_tracker_model/dense_out/Tensordot/transpose:y:0<deformation_tracker_model/dense_out/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
4deformation_tracker_model/dense_out/Tensordot/MatMulMatMul>deformation_tracker_model/dense_out/Tensordot/Reshape:output:0Ddeformation_tracker_model/dense_out/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
5deformation_tracker_model/dense_out/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}
;deformation_tracker_model/dense_out/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6deformation_tracker_model/dense_out/Tensordot/concat_1ConcatV2?deformation_tracker_model/dense_out/Tensordot/GatherV2:output:0>deformation_tracker_model/dense_out/Tensordot/Const_2:output:0Ddeformation_tracker_model/dense_out/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
-deformation_tracker_model/dense_out/TensordotReshape>deformation_tracker_model/dense_out/Tensordot/MatMul:product:0?deformation_tracker_model/dense_out/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
:deformation_tracker_model/dense_out/BiasAdd/ReadVariableOpReadVariableOpCdeformation_tracker_model_dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+deformation_tracker_model/dense_out/BiasAddBiasAdd6deformation_tracker_model/dense_out/Tensordot:output:0Bdeformation_tracker_model/dense_out/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d�
IdentityIdentity4deformation_tracker_model/dense_out/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp;^deformation_tracker_model/dense_out/BiasAdd/ReadVariableOp=^deformation_tracker_model/dense_out/Tensordot/ReadVariableOpN^deformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOpM^deformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOpO^deformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp-^deformation_tracker_model/first_hidden/whileQ^deformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOpP^deformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOpR^deformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp.^deformation_tracker_model/second_hidden/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2x
:deformation_tracker_model/dense_out/BiasAdd/ReadVariableOp:deformation_tracker_model/dense_out/BiasAdd/ReadVariableOp2|
<deformation_tracker_model/dense_out/Tensordot/ReadVariableOp<deformation_tracker_model/dense_out/Tensordot/ReadVariableOp2�
Mdeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOpMdeformation_tracker_model/first_hidden/simple_rnn_cell/BiasAdd/ReadVariableOp2�
Ldeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOpLdeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul/ReadVariableOp2�
Ndeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOpNdeformation_tracker_model/first_hidden/simple_rnn_cell/MatMul_1/ReadVariableOp2\
,deformation_tracker_model/first_hidden/while,deformation_tracker_model/first_hidden/while2�
Pdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOpPdeformation_tracker_model/second_hidden/simple_rnn_cell_1/BiasAdd/ReadVariableOp2�
Odeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOpOdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul/ReadVariableOp2�
Qdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOpQdeformation_tracker_model/second_hidden/simple_rnn_cell_1/MatMul_1/ReadVariableOp2^
-deformation_tracker_model/second_hidden/while-deformation_tracker_model/second_hidden/while:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1:TP
+
_output_shapes
:���������d
!
_user_specified_name	input_2
�
�
while_cond_473934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_473934___redundant_placeholder04
0while_while_cond_473934___redundant_placeholder14
0while_while_cond_473934___redundant_placeholder24
0while_while_cond_473934___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473092
model_input
model_input_1%
first_hidden_473072:2!
first_hidden_473074:2%
first_hidden_473076:22&
second_hidden_473079:22"
second_hidden_473081:2&
second_hidden_473083:22"
dense_out_473086:2
dense_out_473088:
identity��!dense_out/StatefulPartitionedCall�$first_hidden/StatefulPartitionedCall�%second_hidden/StatefulPartitionedCallY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2model_inputmodel_input_1 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������d�
$first_hidden/StatefulPartitionedCallStatefulPartitionedCallconcatenate/concat:output:0first_hidden_473072first_hidden_473074first_hidden_473076*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_first_hidden_layer_call_and_return_conditional_losses_473032�
%second_hidden/StatefulPartitionedCallStatefulPartitionedCall-first_hidden/StatefulPartitionedCall:output:0second_hidden_473079second_hidden_473081second_hidden_473083*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_second_hidden_layer_call_and_return_conditional_losses_472902�
!dense_out/StatefulPartitionedCallStatefulPartitionedCall.second_hidden/StatefulPartitionedCall:output:0dense_out_473086dense_out_473088*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_out_layer_call_and_return_conditional_losses_472745}
IdentityIdentity*dense_out/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp"^dense_out/StatefulPartitionedCall%^first_hidden/StatefulPartitionedCall&^second_hidden/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������d:���������d: : : : : : : : 2F
!dense_out/StatefulPartitionedCall!dense_out/StatefulPartitionedCall2L
$first_hidden/StatefulPartitionedCall$first_hidden/StatefulPartitionedCall2N
%second_hidden/StatefulPartitionedCall%second_hidden/StatefulPartitionedCall:X T
+
_output_shapes
:���������d
%
_user_specified_namemodel_input:XT
+
_output_shapes
:���������d
%
_user_specified_namemodel_input
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_472350

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������2:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�9
�
second_hidden_while_body_4736258
4second_hidden_while_second_hidden_while_loop_counter>
:second_hidden_while_second_hidden_while_maximum_iterations#
second_hidden_while_placeholder%
!second_hidden_while_placeholder_1%
!second_hidden_while_placeholder_27
3second_hidden_while_second_hidden_strided_slice_1_0s
osecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0X
Fsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:22U
Gsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:2Z
Hsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:22 
second_hidden_while_identity"
second_hidden_while_identity_1"
second_hidden_while_identity_2"
second_hidden_while_identity_3"
second_hidden_while_identity_45
1second_hidden_while_second_hidden_strided_slice_1q
msecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensorV
Dsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource:22S
Esecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource:2X
Fsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:22��<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp�=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Esecond_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
7second_hidden/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0second_hidden_while_placeholderNsecond_hidden/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������2*
element_dtype0�
;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpFsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
,second_hidden/while/simple_rnn_cell_1/MatMulMatMul>second_hidden/while/TensorArrayV2Read/TensorListGetItem:item:0Csecond_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpGsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
-second_hidden/while/simple_rnn_cell_1/BiasAddBiasAdd6second_hidden/while/simple_rnn_cell_1/MatMul:product:0Dsecond_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpHsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
.second_hidden/while/simple_rnn_cell_1/MatMul_1MatMul!second_hidden_while_placeholder_2Esecond_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)second_hidden/while/simple_rnn_cell_1/addAddV26second_hidden/while/simple_rnn_cell_1/BiasAdd:output:08second_hidden/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
*second_hidden/while/simple_rnn_cell_1/TanhTanh-second_hidden/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2�
8second_hidden/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!second_hidden_while_placeholder_1second_hidden_while_placeholder.second_hidden/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
second_hidden/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
second_hidden/while/addAddV2second_hidden_while_placeholder"second_hidden/while/add/y:output:0*
T0*
_output_shapes
: ]
second_hidden/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
second_hidden/while/add_1AddV24second_hidden_while_second_hidden_while_loop_counter$second_hidden/while/add_1/y:output:0*
T0*
_output_shapes
: �
second_hidden/while/IdentityIdentitysecond_hidden/while/add_1:z:0^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_1Identity:second_hidden_while_second_hidden_while_maximum_iterations^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_2Identitysecond_hidden/while/add:z:0^second_hidden/while/NoOp*
T0*
_output_shapes
: �
second_hidden/while/Identity_3IdentityHsecond_hidden/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^second_hidden/while/NoOp*
T0*
_output_shapes
: :����
second_hidden/while/Identity_4Identity.second_hidden/while/simple_rnn_cell_1/Tanh:y:0^second_hidden/while/NoOp*
T0*'
_output_shapes
:���������2�
second_hidden/while/NoOpNoOp=^second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp<^second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp>^second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
second_hidden_while_identity%second_hidden/while/Identity:output:0"I
second_hidden_while_identity_1'second_hidden/while/Identity_1:output:0"I
second_hidden_while_identity_2'second_hidden/while/Identity_2:output:0"I
second_hidden_while_identity_3'second_hidden/while/Identity_3:output:0"I
second_hidden_while_identity_4'second_hidden/while/Identity_4:output:0"h
1second_hidden_while_second_hidden_strided_slice_13second_hidden_while_second_hidden_strided_slice_1_0"�
Esecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resourceGsecond_hidden_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Fsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceHsecond_hidden_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Dsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resourceFsecond_hidden_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
msecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensorosecond_hidden_while_tensorarrayv2read_tensorlistgetitem_second_hidden_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2|
<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp<second_hidden/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2z
;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp;second_hidden/while/simple_rnn_cell_1/MatMul/ReadVariableOp2~
=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp=second_hidden/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�+
�
while_body_474151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�	
8deformation_tracker_model_first_hidden_while_cond_471693j
fdeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_loop_counterp
ldeformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_maximum_iterations<
8deformation_tracker_model_first_hidden_while_placeholder>
:deformation_tracker_model_first_hidden_while_placeholder_1>
:deformation_tracker_model_first_hidden_while_placeholder_2l
hdeformation_tracker_model_first_hidden_while_less_deformation_tracker_model_first_hidden_strided_slice_1�
~deformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_cond_471693___redundant_placeholder0�
~deformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_cond_471693___redundant_placeholder1�
~deformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_cond_471693___redundant_placeholder2�
~deformation_tracker_model_first_hidden_while_deformation_tracker_model_first_hidden_while_cond_471693___redundant_placeholder39
5deformation_tracker_model_first_hidden_while_identity
�
1deformation_tracker_model/first_hidden/while/LessLess8deformation_tracker_model_first_hidden_while_placeholderhdeformation_tracker_model_first_hidden_while_less_deformation_tracker_model_first_hidden_strided_slice_1*
T0*
_output_shapes
: �
5deformation_tracker_model/first_hidden/while/IdentityIdentity5deformation_tracker_model/first_hidden/while/Less:z:0*
T0
*
_output_shapes
: "w
5deformation_tracker_model_first_hidden_while_identity>deformation_tracker_model/first_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�=
�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474477
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:22?
1simple_rnn_cell_1_biasadd_readvariableop_resource:2D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:22
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_474411*
condR
while_cond_474410*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������2�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������2: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������2
"
_user_specified_name
inputs/0
�

�
second_hidden_while_cond_4733838
4second_hidden_while_second_hidden_while_loop_counter>
:second_hidden_while_second_hidden_while_maximum_iterations#
second_hidden_while_placeholder%
!second_hidden_while_placeholder_1%
!second_hidden_while_placeholder_2:
6second_hidden_while_less_second_hidden_strided_slice_1P
Lsecond_hidden_while_second_hidden_while_cond_473383___redundant_placeholder0P
Lsecond_hidden_while_second_hidden_while_cond_473383___redundant_placeholder1P
Lsecond_hidden_while_second_hidden_while_cond_473383___redundant_placeholder2P
Lsecond_hidden_while_second_hidden_while_cond_473383___redundant_placeholder3 
second_hidden_while_identity
�
second_hidden/while/LessLesssecond_hidden_while_placeholder6second_hidden_while_less_second_hidden_strided_slice_1*
T0*
_output_shapes
: g
second_hidden/while/IdentityIdentitysecond_hidden/while/Less:z:0*
T0
*
_output_shapes
: "E
second_hidden_while_identity%second_hidden/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������d
?
input_24
serving_default_input_2:0���������d@
output_14
StatefulPartitionedCall:0���������dtensorflow/serving/predict:��
�
hidden1
hidden2
output_layer
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%iter

&beta_1

'beta_2
	(decay
)learning_ratemdme*mf+mg,mh-mi.mj/mkvlvm*vn+vo,vp-vq.vr/vs"
	optimizer
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�2�
:__inference_deformation_tracker_model_layer_call_fn_472771
:__inference_deformation_tracker_model_layer_call_fn_473213
:__inference_deformation_tracker_model_layer_call_fn_473235
:__inference_deformation_tracker_model_layer_call_fn_473133�
���
FullArgSpec.
args&�#
jself
jmodel_input

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473476
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473717
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473159
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473185�
���
FullArgSpec.
args&�#
jself
jmodel_input

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference__wrapped_model_471890input_1input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
5serving_default"
signature_map
�

*kernel
+recurrent_kernel
,bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_first_hidden_layer_call_fn_473752
-__inference_first_hidden_layer_call_fn_473763
-__inference_first_hidden_layer_call_fn_473774
-__inference_first_hidden_layer_call_fn_473785�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_first_hidden_layer_call_and_return_conditional_losses_473893
H__inference_first_hidden_layer_call_and_return_conditional_losses_474001
H__inference_first_hidden_layer_call_and_return_conditional_losses_474109
H__inference_first_hidden_layer_call_and_return_conditional_losses_474217�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�

-kernel
.recurrent_kernel
/bias
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_second_hidden_layer_call_fn_474228
.__inference_second_hidden_layer_call_fn_474239
.__inference_second_hidden_layer_call_fn_474250
.__inference_second_hidden_layer_call_fn_474261�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474369
I__inference_second_hidden_layer_call_and_return_conditional_losses_474477
I__inference_second_hidden_layer_call_and_return_conditional_losses_474585
I__inference_second_hidden_layer_call_and_return_conditional_losses_474693�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
<::22*deformation_tracker_model/dense_out/kernel
6:42(deformation_tracker_model/dense_out/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_out_layer_call_fn_474702�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_out_layer_call_and_return_conditional_losses_474732�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
O:M22=deformation_tracker_model/first_hidden/simple_rnn_cell/kernel
Y:W222Gdeformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel
I:G22;deformation_tracker_model/first_hidden/simple_rnn_cell/bias
R:P222@deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel
\:Z222Jdeformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel
L:J22>deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_473741input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
0__inference_simple_rnn_cell_layer_call_fn_474746
0__inference_simple_rnn_cell_layer_call_fn_474760�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474777
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474794�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
2__inference_simple_rnn_cell_1_layer_call_fn_474808
2__inference_simple_rnn_cell_1_layer_call_fn_474822�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474839
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474856�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	`total
	acount
b	variables
c	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
`0
a1"
trackable_list_wrapper
-
b	variables"
_generic_user_object
A:?221Adam/deformation_tracker_model/dense_out/kernel/m
;:92/Adam/deformation_tracker_model/dense_out/bias/m
T:R22DAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/m
^:\222NAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/m
N:L22BAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/m
W:U222GAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/m
a:_222QAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/m
Q:O22EAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/m
A:?221Adam/deformation_tracker_model/dense_out/kernel/v
;:92/Adam/deformation_tracker_model/dense_out/bias/v
T:R22DAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/kernel/v
^:\222NAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/recurrent_kernel/v
N:L22BAdam/deformation_tracker_model/first_hidden/simple_rnn_cell/bias/v
W:U222GAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/kernel/v
a:_222QAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/recurrent_kernel/v
Q:O22EAdam/deformation_tracker_model/second_hidden/simple_rnn_cell_1/bias/v�
!__inference__wrapped_model_471890�*,+-/.`�]
V�S
Q�N
%�"
input_1���������d
%�"
input_2���������d
� "7�4
2
output_1&�#
output_1���������d�
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473159�*,+-/.d�a
Z�W
Q�N
%�"
input_1���������d
%�"
input_2���������d
p 
� ")�&
�
0���������d
� �
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473185�*,+-/.d�a
Z�W
Q�N
%�"
input_1���������d
%�"
input_2���������d
p
� ")�&
�
0���������d
� �
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473476�*,+-/.p�m
f�c
]�Z
+�(
model_input/0���������d
+�(
model_input/1���������d
p 
� ")�&
�
0���������d
� �
U__inference_deformation_tracker_model_layer_call_and_return_conditional_losses_473717�*,+-/.p�m
f�c
]�Z
+�(
model_input/0���������d
+�(
model_input/1���������d
p
� ")�&
�
0���������d
� �
:__inference_deformation_tracker_model_layer_call_fn_472771�*,+-/.d�a
Z�W
Q�N
%�"
input_1���������d
%�"
input_2���������d
p 
� "����������d�
:__inference_deformation_tracker_model_layer_call_fn_473133�*,+-/.d�a
Z�W
Q�N
%�"
input_1���������d
%�"
input_2���������d
p
� "����������d�
:__inference_deformation_tracker_model_layer_call_fn_473213�*,+-/.p�m
f�c
]�Z
+�(
model_input/0���������d
+�(
model_input/1���������d
p 
� "����������d�
:__inference_deformation_tracker_model_layer_call_fn_473235�*,+-/.p�m
f�c
]�Z
+�(
model_input/0���������d
+�(
model_input/1���������d
p
� "����������d�
E__inference_dense_out_layer_call_and_return_conditional_losses_474732d3�0
)�&
$�!
inputs���������d2
� ")�&
�
0���������d
� �
*__inference_dense_out_layer_call_fn_474702W3�0
)�&
$�!
inputs���������d2
� "����������d�
H__inference_first_hidden_layer_call_and_return_conditional_losses_473893�*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������2
� �
H__inference_first_hidden_layer_call_and_return_conditional_losses_474001�*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������2
� �
H__inference_first_hidden_layer_call_and_return_conditional_losses_474109q*,+?�<
5�2
$�!
inputs���������d

 
p 

 
� ")�&
�
0���������d2
� �
H__inference_first_hidden_layer_call_and_return_conditional_losses_474217q*,+?�<
5�2
$�!
inputs���������d

 
p

 
� ")�&
�
0���������d2
� �
-__inference_first_hidden_layer_call_fn_473752}*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������2�
-__inference_first_hidden_layer_call_fn_473763}*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������2�
-__inference_first_hidden_layer_call_fn_473774d*,+?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������d2�
-__inference_first_hidden_layer_call_fn_473785d*,+?�<
5�2
$�!
inputs���������d

 
p

 
� "����������d2�
I__inference_second_hidden_layer_call_and_return_conditional_losses_474369�-/.O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "2�/
(�%
0������������������2
� �
I__inference_second_hidden_layer_call_and_return_conditional_losses_474477�-/.O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "2�/
(�%
0������������������2
� �
I__inference_second_hidden_layer_call_and_return_conditional_losses_474585q-/.?�<
5�2
$�!
inputs���������d2

 
p 

 
� ")�&
�
0���������d2
� �
I__inference_second_hidden_layer_call_and_return_conditional_losses_474693q-/.?�<
5�2
$�!
inputs���������d2

 
p

 
� ")�&
�
0���������d2
� �
.__inference_second_hidden_layer_call_fn_474228}-/.O�L
E�B
4�1
/�,
inputs/0������������������2

 
p 

 
� "%�"������������������2�
.__inference_second_hidden_layer_call_fn_474239}-/.O�L
E�B
4�1
/�,
inputs/0������������������2

 
p

 
� "%�"������������������2�
.__inference_second_hidden_layer_call_fn_474250d-/.?�<
5�2
$�!
inputs���������d2

 
p 

 
� "����������d2�
.__inference_second_hidden_layer_call_fn_474261d-/.?�<
5�2
$�!
inputs���������d2

 
p

 
� "����������d2�
$__inference_signature_wrapper_473741�*,+-/.q�n
� 
g�d
0
input_1%�"
input_1���������d
0
input_2%�"
input_2���������d"7�4
2
output_1&�#
output_1���������d�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474839�-/.\�Y
R�O
 �
inputs���������2
'�$
"�
states/0���������2
p 
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_474856�-/.\�Y
R�O
 �
inputs���������2
'�$
"�
states/0���������2
p
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
2__inference_simple_rnn_cell_1_layer_call_fn_474808�-/.\�Y
R�O
 �
inputs���������2
'�$
"�
states/0���������2
p 
� "D�A
�
0���������2
"�
�
1/0���������2�
2__inference_simple_rnn_cell_1_layer_call_fn_474822�-/.\�Y
R�O
 �
inputs���������2
'�$
"�
states/0���������2
p
� "D�A
�
0���������2
"�
�
1/0���������2�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474777�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p 
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_474794�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
0__inference_simple_rnn_cell_layer_call_fn_474746�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p 
� "D�A
�
0���������2
"�
�
1/0���������2�
0__inference_simple_rnn_cell_layer_call_fn_474760�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p
� "D�A
�
0���������2
"�
�
1/0���������2
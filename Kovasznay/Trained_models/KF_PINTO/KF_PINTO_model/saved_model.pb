З┴(
¤╤
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
$
DisableCopyOnRead
resourceИ
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
о
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8╘▀ 
Г
op2/biasVarHandleOp*
_output_shapes
: *

debug_name	op2/bias/*
dtype0*
shape:@*
shared_name
op2/bias
a
op2/bias/Read/ReadVariableOpReadVariableOpop2/bias*
_output_shapes
:@*
dtype0
Н

op2/kernelVarHandleOp*
_output_shapes
: *

debug_nameop2/kernel/*
dtype0*
shape
:@@*
shared_name
op2/kernel
i
op2/kernel/Read/ReadVariableOpReadVariableOp
op2/kernel*
_output_shapes

:@@*
dtype0
Г
op1/biasVarHandleOp*
_output_shapes
: *

debug_name	op1/bias/*
dtype0*
shape:@*
shared_name
op1/bias
a
op1/bias/Read/ReadVariableOpReadVariableOpop1/bias*
_output_shapes
:@*
dtype0
Н

op1/kernelVarHandleOp*
_output_shapes
: *

debug_nameop1/kernel/*
dtype0*
shape
:@@*
shared_name
op1/kernel
i
op1/kernel/Read/ReadVariableOpReadVariableOp
op1/kernel*
_output_shapes

:@@*
dtype0
Г
ov2/biasVarHandleOp*
_output_shapes
: *

debug_name	ov2/bias/*
dtype0*
shape:@*
shared_name
ov2/bias
a
ov2/bias/Read/ReadVariableOpReadVariableOpov2/bias*
_output_shapes
:@*
dtype0
Н

ov2/kernelVarHandleOp*
_output_shapes
: *

debug_nameov2/kernel/*
dtype0*
shape
:@@*
shared_name
ov2/kernel
i
ov2/kernel/Read/ReadVariableOpReadVariableOp
ov2/kernel*
_output_shapes

:@@*
dtype0
Г
ov1/biasVarHandleOp*
_output_shapes
: *

debug_name	ov1/bias/*
dtype0*
shape:@*
shared_name
ov1/bias
a
ov1/bias/Read/ReadVariableOpReadVariableOpov1/bias*
_output_shapes
:@*
dtype0
Н

ov1/kernelVarHandleOp*
_output_shapes
: *

debug_nameov1/kernel/*
dtype0*
shape
:@@*
shared_name
ov1/kernel
i
ov1/kernel/Read/ReadVariableOpReadVariableOp
ov1/kernel*
_output_shapes

:@@*
dtype0
Г
ou2/biasVarHandleOp*
_output_shapes
: *

debug_name	ou2/bias/*
dtype0*
shape:@*
shared_name
ou2/bias
a
ou2/bias/Read/ReadVariableOpReadVariableOpou2/bias*
_output_shapes
:@*
dtype0
Н

ou2/kernelVarHandleOp*
_output_shapes
: *

debug_nameou2/kernel/*
dtype0*
shape
:@@*
shared_name
ou2/kernel
i
ou2/kernel/Read/ReadVariableOpReadVariableOp
ou2/kernel*
_output_shapes

:@@*
dtype0
Г
ou1/biasVarHandleOp*
_output_shapes
: *

debug_name	ou1/bias/*
dtype0*
shape:@*
shared_name
ou1/bias
a
ou1/bias/Read/ReadVariableOpReadVariableOpou1/bias*
_output_shapes
:@*
dtype0
Н

ou1/kernelVarHandleOp*
_output_shapes
: *

debug_nameou1/kernel/*
dtype0*
shape
:@@*
shared_name
ou1/kernel
i
ou1/kernel/Read/ReadVariableOpReadVariableOp
ou1/kernel*
_output_shapes

:@@*
dtype0
щ
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *;

debug_name-+multi_head_attention/attention_output/bias/*
dtype0*
shape:@*;
shared_name,*multi_head_attention/attention_output/bias
е
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
ў
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention/attention_output/kernel/*
dtype0*
shape:@@*=
shared_name.,multi_head_attention/attention_output/kernel
▒
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:@@*
dtype0
╠
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/value/bias/*
dtype0*
shape
:@*0
shared_name!multi_head_attention/value/bias
У
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:@*
dtype0
╓
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/value/kernel/*
dtype0*
shape:@@*2
shared_name#!multi_head_attention/value/kernel
Ы
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:@@*
dtype0
╞
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *.

debug_name multi_head_attention/key/bias/*
dtype0*
shape
:@*.
shared_namemulti_head_attention/key/bias
П
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:@*
dtype0
╨
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/key/kernel/*
dtype0*
shape:@@*0
shared_name!multi_head_attention/key/kernel
Ч
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:@@*
dtype0
╠
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/query/bias/*
dtype0*
shape
:@*0
shared_name!multi_head_attention/query/bias
У
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:@*
dtype0
╓
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/query/kernel/*
dtype0*
shape:@@*2
shared_name#!multi_head_attention/query/kernel
Ы
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:@@*
dtype0
д
spatial_layer2/biasVarHandleOp*
_output_shapes
: *$

debug_namespatial_layer2/bias/*
dtype0*
shape:@*$
shared_namespatial_layer2/bias
w
'spatial_layer2/bias/Read/ReadVariableOpReadVariableOpspatial_layer2/bias*
_output_shapes
:@*
dtype0
о
spatial_layer2/kernelVarHandleOp*
_output_shapes
: *&

debug_namespatial_layer2/kernel/*
dtype0*
shape
:@@*&
shared_namespatial_layer2/kernel

)spatial_layer2/kernel/Read/ReadVariableOpReadVariableOpspatial_layer2/kernel*
_output_shapes

:@@*
dtype0
д
spatial_layer1/biasVarHandleOp*
_output_shapes
: *$

debug_namespatial_layer1/bias/*
dtype0*
shape:@*$
shared_namespatial_layer1/bias
w
'spatial_layer1/bias/Read/ReadVariableOpReadVariableOpspatial_layer1/bias*
_output_shapes
:@*
dtype0
о
spatial_layer1/kernelVarHandleOp*
_output_shapes
: *&

debug_namespatial_layer1/kernel/*
dtype0*
shape
:@*&
shared_namespatial_layer1/kernel

)spatial_layer1/kernel/Read/ReadVariableOpReadVariableOpspatial_layer1/kernel*
_output_shapes

:@*
dtype0
Т
output_p/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput_p/bias/*
dtype0*
shape:*
shared_nameoutput_p/bias
k
!output_p/bias/Read/ReadVariableOpReadVariableOpoutput_p/bias*
_output_shapes
:*
dtype0
Ь
output_p/kernelVarHandleOp*
_output_shapes
: * 

debug_nameoutput_p/kernel/*
dtype0*
shape
:@* 
shared_nameoutput_p/kernel
s
#output_p/kernel/Read/ReadVariableOpReadVariableOpoutput_p/kernel*
_output_shapes

:@*
dtype0
Т
output_v/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput_v/bias/*
dtype0*
shape:*
shared_nameoutput_v/bias
k
!output_v/bias/Read/ReadVariableOpReadVariableOpoutput_v/bias*
_output_shapes
:*
dtype0
Ь
output_v/kernelVarHandleOp*
_output_shapes
: * 

debug_nameoutput_v/kernel/*
dtype0*
shape
:@* 
shared_nameoutput_v/kernel
s
#output_v/kernel/Read/ReadVariableOpReadVariableOpoutput_v/kernel*
_output_shapes

:@*
dtype0
Т
output_u/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput_u/bias/*
dtype0*
shape:*
shared_nameoutput_u/bias
k
!output_u/bias/Read/ReadVariableOpReadVariableOpoutput_u/bias*
_output_shapes
:*
dtype0
Ь
output_u/kernelVarHandleOp*
_output_shapes
: * 

debug_nameoutput_u/kernel/*
dtype0*
shape
:@* 
shared_nameoutput_u/kernel
s
#output_u/kernel/Read/ReadVariableOpReadVariableOpoutput_u/kernel*
_output_shapes

:@*
dtype0
П
dense_4/biasVarHandleOp*
_output_shapes
: *

debug_namedense_4/bias/*
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
Щ
dense_4/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_4/kernel/*
dtype0*
shape
:@@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@@*
dtype0
П
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
Щ
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape
:@@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@@*
dtype0
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
Щ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
П
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
Щ
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
Й

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
У
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
Ц
serving_default_Pbc_layerPlaceholder*4
_output_shapes"
 :                  *
dtype0*)
shape :                  
Ц
serving_default_Ubc_layerPlaceholder*4
_output_shapes"
 :                  *
dtype0*)
shape :                  
Ц
serving_default_Vbc_layerPlaceholder*4
_output_shapes"
 :                  *
dtype0*)
shape :                  
z
serving_default_X_layerPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ц
serving_default_Xbc_layerPlaceholder*4
_output_shapes"
 :                  *
dtype0*)
shape :                  
z
serving_default_Y_layerPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ц
serving_default_Ybc_layerPlaceholder*4
_output_shapes"
 :                  *
dtype0*)
shape :                  
─

StatefulPartitionedCallStatefulPartitionedCallserving_default_Pbc_layerserving_default_Ubc_layerserving_default_Vbc_layerserving_default_X_layerserving_default_Xbc_layerserving_default_Y_layerserving_default_Ybc_layerdense_2/kerneldense_2/biasdense/kernel
dense/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biasdense_4/kerneldense_4/bias
op1/kernelop1/bias
op2/kernelop2/bias
ov1/kernelov1/bias
ov2/kernelov2/bias
ou1/kernelou1/bias
ou2/kernelou2/biasoutput_p/kerneloutput_p/biasoutput_v/kerneloutput_v/biasoutput_u/kerneloutput_u/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_7473365

NoOpNoOp
Хў
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╧Ў
value─ЎB└Ў B╕Ў
м
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-0
layer-15
layer_with_weights-1
layer-16
layer_with_weights-2
layer-17
layer_with_weights-3
layer-18
layer_with_weights-4
layer-19
layer_with_weights-5
layer-20
layer-21
layer_with_weights-6
layer-22
layer-23
layer_with_weights-7
layer-24
layer_with_weights-8
layer-25
layer_with_weights-9
layer-26
layer_with_weights-10
layer-27
layer_with_weights-11
layer-28
layer_with_weights-12
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&
signatures*
* 
* 
* 
* 
О
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
О
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
О
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
* 
* 
* 
О
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
О
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
О
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
О
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
ж
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias*
ж
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
°
glayer_with_weights-0
glayer-0
hlayer-1
ilayer_with_weights-1
ilayer-2
jlayer-3
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
ж
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias*
з
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	Аbias*
Е
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_query_dense
И
_key_dense
Й_value_dense
К_softmax
Л_dropout_layer
М_output_dense*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
о
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias*
Ф
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses* 
Д
бlayer_with_weights-0
бlayer-0
вlayer-1
гlayer_with_weights-1
гlayer-2
дlayer-3
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses*
Д
лlayer_with_weights-0
лlayer-0
мlayer-1
нlayer_with_weights-1
нlayer-2
оlayer-3
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses*
Д
╡layer_with_weights-0
╡layer-0
╢layer-1
╖layer_with_weights-1
╖layer-2
╕layer-3
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses*
о
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
┼kernel
	╞bias*
о
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═kernel
	╬bias*
о
╧	variables
╨trainable_variables
╤regularization_losses
╥	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses
╒kernel
	╓bias*
█
]0
^1
e2
f3
╫4
╪5
┘6
┌7
w8
x9
10
А11
█12
▄13
▌14
▐15
▀16
р17
с18
т19
Щ20
Ъ21
у22
ф23
х24
ц25
ч26
ш27
щ28
ъ29
ы30
ь31
э32
ю33
┼34
╞35
═36
╬37
╒38
╓39*
█
]0
^1
e2
f3
╫4
╪5
┘6
┌7
w8
x9
10
А11
█12
▄13
▌14
▐15
▀16
р17
с18
т19
Щ20
Ъ21
у22
ф23
х24
ц25
ч26
ш27
щ28
ъ29
ы30
ь31
э32
ю33
┼34
╞35
═36
╬37
╒38
╓39*
* 
╡
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Їtrace_0
їtrace_1* 

Ўtrace_0
ўtrace_1* 
* 

°serving_default* 
* 
* 
* 
Ц
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

■trace_0* 

 trace_0* 
* 
* 
* 
Ц
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
Ц
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 
* 
* 
* 
Ц
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

бtrace_0* 

вtrace_0* 
* 
* 
* 
Ц
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

иtrace_0* 

йtrace_0* 
* 
* 
* 
Ц
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

пtrace_0* 

░trace_0* 

]0
^1*

]0
^1*
* 
Ш
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
* 
Ш
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

╜trace_0* 

╛trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
о
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
╫kernel
	╪bias*
Ф
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses* 
о
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses
┘kernel
	┌bias*
Ф
╤	variables
╥trainable_variables
╙regularization_losses
╘	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses* 
$
╫0
╪1
┘2
┌3*
$
╫0
╪1
┘2
┌3*
* 
Ш
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

▄trace_0
▌trace_1* 

▐trace_0
▀trace_1* 

w0
x1*

w0
x1*
* 
Ш
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

хtrace_0* 

цtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
А1*

0
А1*
* 
Ш
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

ьtrace_0* 

эtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
D
█0
▄1
▌2
▐3
▀4
р5
с6
т7*
D
█0
▄1
▌2
▐3
▀4
р5
с6
т7*
* 
Ю
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*

єtrace_0
Їtrace_1* 

їtrace_0
Ўtrace_1* 
с
ў	variables
°trainable_variables
∙regularization_losses
·	keras_api
√__call__
+№&call_and_return_all_conditional_losses
¤partial_output_shape
■full_output_shape
█kernel
	▄bias*
с
 	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
Еpartial_output_shape
Жfull_output_shape
▌kernel
	▐bias*
с
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Нpartial_output_shape
Оfull_output_shape
▀kernel
	рbias*
Ф
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses* 
м
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ы_random_generator* 
с
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
вpartial_output_shape
гfull_output_shape
сkernel
	тbias*
* 
* 
* 
Ь
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

йtrace_0* 

кtrace_0* 

Щ0
Ъ1*

Щ0
Ъ1*
* 
Ю
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses* 

╖trace_0* 

╕trace_0* 
о
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses
уkernel
	фbias*
Ф
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses* 
о
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
хkernel
	цbias*
Ф
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses* 
$
у0
ф1
х2
ц3*
$
у0
ф1
х2
ц3*
* 
Ю
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

╓trace_0
╫trace_1* 

╪trace_0
┘trace_1* 
о
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses
чkernel
	шbias*
Ф
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses* 
о
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses
щkernel
	ъbias*
Ф
ь	variables
эtrainable_variables
юregularization_losses
я	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses* 
$
ч0
ш1
щ2
ъ3*
$
ч0
ш1
щ2
ъ3*
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses*

ўtrace_0
°trace_1* 

∙trace_0
·trace_1* 
о
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses
ыkernel
	ьbias*
Ф
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 
о
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
эkernel
	юbias*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
$
ы0
ь1
э2
ю3*
$
ы0
ь1
э2
ю3*
* 
Ю
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses*

Шtrace_0
Щtrace_1* 

Ъtrace_0
Ыtrace_1* 

┼0
╞1*

┼0
╞1*
* 
Ю
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
`Z
VARIABLE_VALUEoutput_u/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEoutput_u/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

═0
╬1*

═0
╬1*
* 
Ю
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
`Z
VARIABLE_VALUEoutput_v/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEoutput_v/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

╒0
╓1*

╒0
╓1*
* 
Ю
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
╧	variables
╨trainable_variables
╤regularization_losses
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses*

пtrace_0* 

░trace_0* 
`Z
VARIABLE_VALUEoutput_p/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEoutput_p/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention/query/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/query/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/key/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEmulti_head_attention/key/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention/value/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/value/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention/attention_output/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*multi_head_attention/attention_output/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ou1/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEou1/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ou2/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEou2/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ov1/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEov1/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ov2/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEov2/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
op1/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEop1/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
op2/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEop2/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
* 
ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29*
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
* 
* 
* 
* 
* 
* 
* 
* 

╫0
╪1*

╫0
╪1*
* 
Ю
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
* 
* 
* 
Ь
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses* 

╜trace_0* 

╛trace_0* 

┘0
┌1*

┘0
┌1*
* 
Ю
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses*

─trace_0* 

┼trace_0* 
* 
* 
* 
Ь
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
╤	variables
╥trainable_variables
╙regularization_losses
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses* 

╦trace_0* 

╠trace_0* 
* 
 
g0
h1
i2
j3*
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
* 
* 
4
З0
И1
Й2
К3
Л4
М5*
* 
* 
* 
* 
* 
* 
* 

█0
▄1*

█0
▄1*
* 
Ю
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
ў	variables
°trainable_variables
∙regularization_losses
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses*
* 
* 
* 
* 

▌0
▐1*

▌0
▐1*
* 
Ю
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
 	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*
* 
* 
* 
* 

▀0
р1*

▀0
р1*
* 
Ю
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses* 
* 
* 
* 

с0
т1*

с0
т1*
* 
Ю
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses*
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
* 
* 
* 
* 
* 

у0
ф1*

у0
ф1*
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses*

Ёtrace_0* 

ёtrace_0* 
* 
* 
* 
Ь
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses* 

ўtrace_0* 

°trace_0* 

х0
ц1*

х0
ц1*
* 
Ю
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses*

■trace_0* 

 trace_0* 
* 
* 
* 
Ь
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
$
б0
в1
г2
д3*
* 
* 
* 
* 
* 
* 
* 

ч0
ш1*

ч0
ш1*
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
* 
* 
* 
Ь
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 

щ0
ъ1*

щ0
ъ1*
* 
Ю
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses*

Ъtrace_0* 

Ыtrace_0* 
* 
* 
* 
Ь
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
ь	variables
эtrainable_variables
юregularization_losses
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses* 

бtrace_0* 

вtrace_0* 
* 
$
л0
м1
н2
о3*
* 
* 
* 
* 
* 
* 
* 

ы0
ь1*

ы0
ь1*
* 
Ю
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
* 
* 
* 
Ь
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

пtrace_0* 

░trace_0* 

э0
ю1*

э0
ю1*
* 
Ю
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
* 
* 
* 
Ь
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

╜trace_0* 

╛trace_0* 
* 
$
╡0
╢1
╖2
╕3*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╖
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_2/kerneldense_2/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasoutput_u/kerneloutput_u/biasoutput_v/kerneloutput_v/biasoutput_p/kerneloutput_p/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/bias
ov1/kernelov1/bias
ov2/kernelov2/bias
op1/kernelop1/bias
op2/kernelop2/biasConst*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_save_7475575
▓
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_2/kerneldense_2/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasoutput_u/kerneloutput_u/biasoutput_v/kerneloutput_v/biasoutput_p/kerneloutput_p/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/bias
ov1/kernelov1/bias
ov2/kernelov2/bias
op1/kernelop1/bias
op2/kernelop2/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__traced_restore_7475704■ы
Щ+
╚

'__inference_model_layer_call_fn_7473001
x_layer
y_layer
	xbc_layer
	ybc_layer
	ubc_layer
	vbc_layer
	pbc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:@@

unknown_26:@

unknown_27:@@

unknown_28:@

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:

unknown_35:@

unknown_36:

unknown_37:@

unknown_38:
identity

identity_1

identity_2ИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallx_layery_layer	xbc_layer	ybc_layer	ubc_layer	vbc_layer	pbc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_7472755o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         :         :                  :                  :                  :                  :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'.#
!
_user_specified_name	7472993:'-#
!
_user_specified_name	7472991:',#
!
_user_specified_name	7472989:'+#
!
_user_specified_name	7472987:'*#
!
_user_specified_name	7472985:')#
!
_user_specified_name	7472983:'(#
!
_user_specified_name	7472981:''#
!
_user_specified_name	7472979:'&#
!
_user_specified_name	7472977:'%#
!
_user_specified_name	7472975:'$#
!
_user_specified_name	7472973:'##
!
_user_specified_name	7472971:'"#
!
_user_specified_name	7472969:'!#
!
_user_specified_name	7472967:' #
!
_user_specified_name	7472965:'#
!
_user_specified_name	7472963:'#
!
_user_specified_name	7472961:'#
!
_user_specified_name	7472959:'#
!
_user_specified_name	7472957:'#
!
_user_specified_name	7472955:'#
!
_user_specified_name	7472953:'#
!
_user_specified_name	7472951:'#
!
_user_specified_name	7472949:'#
!
_user_specified_name	7472947:'#
!
_user_specified_name	7472945:'#
!
_user_specified_name	7472943:'#
!
_user_specified_name	7472941:'#
!
_user_specified_name	7472939:'#
!
_user_specified_name	7472937:'#
!
_user_specified_name	7472935:'#
!
_user_specified_name	7472933:'#
!
_user_specified_name	7472931:'#
!
_user_specified_name	7472929:'#
!
_user_specified_name	7472927:'#
!
_user_specified_name	7472925:'#
!
_user_specified_name	7472923:'
#
!
_user_specified_name	7472921:'	#
!
_user_specified_name	7472919:'#
!
_user_specified_name	7472917:'#
!
_user_specified_name	7472915:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:P L
'
_output_shapes
:         
!
_user_specified_name	X_layer
╞
Ю
$__inference_internal_grad_fn_7474613
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
ї
Ч
*__inference_output_u_layer_call_fn_7473868

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_7472746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473864:'#
!
_user_specified_name	7473862:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╒
l
@__inference_add_layer_call_and_return_conditional_losses_7473800
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:         @S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:         @:         @:UQ
+
_output_shapes
:         @
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:         @
"
_user_specified_name
inputs_0
┬
Ї
6__inference_multi_head_attention_layer_call_fn_7473693	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472604s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	7473689:'	#
!
_user_specified_name	7473687:'#
!
_user_specified_name	7473685:'#
!
_user_specified_name	7473683:'#
!
_user_specified_name	7473681:'#
!
_user_specified_name	7473679:'#
!
_user_specified_name	7473677:'#
!
_user_specified_name	7473675:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
Д#
¤
D__inference_dense_1_layer_call_and_return_conditional_losses_7473622

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473613*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
а
Я
$__inference_internal_grad_fn_7474829
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1h
mulMulmul_betamul_biasadd^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @Y
mul_1Mulmul_betamul_biasadd*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @S
SquareSquaremul_biasadd*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:TP
+
_output_shapes
:         @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Н
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7473392

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐N
mulMulinputsCast:y:0*
T0*'
_output_shapes
:         Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ы
Т
%__inference_ou1_layer_call_fn_7474039

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_7471914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474035:'#
!
_user_specified_name	7474033:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474586
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╘
╗
$__inference_internal_grad_fn_7475207
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_3_beta
mul_model_dense_3_biasadd
identity

identity_1Н
mulMulmul_model_dense_3_betamul_model_dense_3_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @~
mul_1Mulmul_model_dense_3_betamul_model_dense_3_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @j
SquareSquaremul_model_dense_3_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:kg
4
_output_shapes"
 :                  @
/
_user_specified_namemodel/dense_3/BiasAdd:JF

_output_shapes
: 
,
_user_specified_namemodel/dense_3/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
┌
g
I__inference_activation_7_layer_call_and_return_conditional_losses_7472225

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472216*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Г
Ц
)__inference_dense_4_layer_call_fn_7473809

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_7472667s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473805:'#
!
_user_specified_name	7473803:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╘
╗
$__inference_internal_grad_fn_7475072
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_2_beta
mul_model_dense_2_biasadd
identity

identity_1Н
mulMulmul_model_dense_2_betamul_model_dense_2_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @~
mul_1Mulmul_model_dense_2_betamul_model_dense_2_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @j
SquareSquaremul_model_dense_2_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:kg
4
_output_shapes"
 :                  @
/
_user_specified_namemodel/dense_2/BiasAdd:JF

_output_shapes
: 
,
_user_specified_namemodel/dense_2/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
є	
ё
@__inference_ou1_layer_call_and_return_conditional_losses_7474049

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
з
Ц
)__inference_dense_1_layer_call_fn_7473583

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7472519|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473579:'#
!
_user_specified_name	7473577:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
б
В
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7472352

inputs
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :М
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :                  :                  :\X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
а
Я
$__inference_internal_grad_fn_7474802
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1h
mulMulmul_betamul_biasadd^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @Y
mul_1Mulmul_betamul_biasadd*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @S
SquareSquaremul_biasadd*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:TP
+
_output_shapes
:         @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
И
Р
>__inference_U_layer_call_and_return_conditional_losses_7471964
	ou1_input
ou1_7471915:@@
ou1_7471917:@
ou2_7471944:@@
ou2_7471946:@
identityИвou1/StatefulPartitionedCallвou2/StatefulPartitionedCallх
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_7471915ou1_7471917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_7471914т
activation_2/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_7471932Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0ou2_7471944ou2_7471946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_7471943т
activation_3/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_7471961t
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	7471946:'#
!
_user_specified_name	7471944:'#
!
_user_specified_name	7471917:'#
!
_user_specified_name	7471915:R N
'
_output_shapes
:         @
#
_user_specified_name	ou1_input
┬
Ї
6__inference_multi_head_attention_layer_call_fn_7473716	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472836s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	7473712:'	#
!
_user_specified_name	7473710:'#
!
_user_specified_name	7473708:'#
!
_user_specified_name	7473706:'#
!
_user_specified_name	7473704:'#
!
_user_specified_name	7473702:'#
!
_user_specified_name	7473700:'#
!
_user_specified_name	7473698:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
■
g
I__inference_activation_1_layer_call_and_return_conditional_losses_7474030

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
mulMulbeta:output:0inputs*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @╗
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474021*D
_output_shapes2
0:         @:         @: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_5_layer_call_and_return_conditional_losses_7472093

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472084*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°	
Ў
E__inference_output_u_layer_call_and_return_conditional_losses_7472746

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ы
Т
%__inference_ov2_layer_call_fn_7474150

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov2_layer_call_and_return_conditional_losses_7472075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474146:'#
!
_user_specified_name	7474144:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Т
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7473445
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Д
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:                  :                  :^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
╒
Я
$__inference_internal_grad_fn_7474883
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
к
J
.__inference_activation_2_layer_call_fn_7474054

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_7471932`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╢
H
,__inference_activation_layer_call_fn_7473960

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_7471780d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_6_layer_call_and_return_conditional_losses_7472196

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472187*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╝
`
D__inference_flatten_layer_call_and_return_conditional_losses_7473859

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         @X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╞
b
F__inference_rescaling_layer_call_and_return_conditional_losses_7473378

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛U
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:         Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▄
└
$__inference_internal_grad_fn_7475369
result_grads_0
result_grads_1
result_grads_2!
mul_model_u_activation_2_beta
mul_model_u_ou1_biasadd
identity

identity_1Е
mulMulmul_model_u_activation_2_betamul_model_u_ou1_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_u_activation_2_betamul_model_u_ou1_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_u_ou1_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/U/ou1/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/U/activation_2/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
И
Р
>__inference_P_layer_call_and_return_conditional_losses_7472244
	op1_input
op1_7472231:@@
op1_7472233:@
op2_7472237:@@
op2_7472239:@
identityИвop1/StatefulPartitionedCallвop2/StatefulPartitionedCallх
op1/StatefulPartitionedCallStatefulPartitionedCall	op1_inputop1_7472231op1_7472233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op1_layer_call_and_return_conditional_losses_7472178т
activation_6/PartitionedCallPartitionedCall$op1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_7472196Б
op2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0op2_7472237op2_7472239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op2_layer_call_and_return_conditional_losses_7472207т
activation_7/PartitionedCallPartitionedCall$op2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_7472225t
IdentityIdentity%activation_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^op1/StatefulPartitionedCall^op2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
op1/StatefulPartitionedCallop1/StatefulPartitionedCall2:
op2/StatefulPartitionedCallop2/StatefulPartitionedCall:'#
!
_user_specified_name	7472239:'#
!
_user_specified_name	7472237:'#
!
_user_specified_name	7472233:'#
!
_user_specified_name	7472231:R N
'
_output_shapes
:         @
#
_user_specified_name	op1_input
к
J
.__inference_activation_5_layer_call_fn_7474165

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_7472093`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ї
Ч
*__inference_output_v_layer_call_fn_7473887

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_v_layer_call_and_return_conditional_losses_7472731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473883:'#
!
_user_specified_name	7473881:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
└
$__inference_internal_grad_fn_7475396
result_grads_0
result_grads_1
result_grads_2!
mul_model_u_activation_3_beta
mul_model_u_ou2_biasadd
identity

identity_1Е
mulMulmul_model_u_activation_3_betamul_model_u_ou2_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_u_activation_3_betamul_model_u_ou2_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_u_ou2_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/U/ou2/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/U/activation_3/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
И
Р
>__inference_P_layer_call_and_return_conditional_losses_7472228
	op1_input
op1_7472179:@@
op1_7472181:@
op2_7472208:@@
op2_7472210:@
identityИвop1/StatefulPartitionedCallвop2/StatefulPartitionedCallх
op1/StatefulPartitionedCallStatefulPartitionedCall	op1_inputop1_7472179op1_7472181*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op1_layer_call_and_return_conditional_losses_7472178т
activation_6/PartitionedCallPartitionedCall$op1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_7472196Б
op2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0op2_7472208op2_7472210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op2_layer_call_and_return_conditional_losses_7472207т
activation_7/PartitionedCallPartitionedCall$op2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_7472225t
IdentityIdentity%activation_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^op1/StatefulPartitionedCall^op2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
op1/StatefulPartitionedCallop1/StatefulPartitionedCall2:
op2/StatefulPartitionedCallop2/StatefulPartitionedCall:'#
!
_user_specified_name	7472210:'#
!
_user_specified_name	7472208:'#
!
_user_specified_name	7472181:'#
!
_user_specified_name	7472179:R N
'
_output_shapes
:         @
#
_user_specified_name	op1_input
╬
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7473419

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐[
mulMulinputsCast:y:0*
T0*4
_output_shapes"
 :                  g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  \
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Я
є
$__inference_internal_grad_fn_7475126
result_grads_0
result_grads_1
result_grads_24
0mul_model_spatial_transformation_activation_beta;
7mul_model_spatial_transformation_spatial_layer1_biasadd
identity

identity_1╝
mulMul0mul_model_spatial_transformation_activation_beta7mul_model_spatial_transformation_spatial_layer1_biasadd^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @н
mul_1Mul0mul_model_spatial_transformation_activation_beta7mul_model_spatial_transformation_spatial_layer1_biasadd*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @
SquareSquare7mul_model_spatial_transformation_spatial_layer1_biasadd*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:А|
+
_output_shapes
:         @
M
_user_specified_name53model/spatial_transformation/spatial_layer1/BiasAdd:d`

_output_shapes
: 
F
_user_specified_name.,model/spatial_transformation/activation/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
є	
ё
@__inference_op2_layer_call_and_return_conditional_losses_7472207

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
к
J
.__inference_activation_7_layer_call_fn_7474239

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_7472225`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╜.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472836	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИв#attention_output/add/ReadVariableOpв-attention_output/einsum/Einsum/ReadVariableOpвkey/add/ReadVariableOpв key/einsum/Einsum/ReadVariableOpвquery/add/ReadVariableOpв"query/einsum/Einsum/ReadVariableOpвvalue/add/ReadVariableOpв"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0░
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:         @*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0│
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╣
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:         @Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"                  *
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"                  z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"                  й
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:         @*
equationacbe,aecd->abcdи
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╒
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:         @*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0н
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:         @┤
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
╜.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473752	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИв#attention_output/add/ReadVariableOpв-attention_output/einsum/Einsum/ReadVariableOpвkey/add/ReadVariableOpв key/einsum/Einsum/ReadVariableOpвquery/add/ReadVariableOpв"query/einsum/Einsum/ReadVariableOpвvalue/add/ReadVariableOpв"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0░
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:         @*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0│
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╣
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:         @Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"                  *
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"                  z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"                  й
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:         @*
equationacbe,aecd->abcdи
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╒
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:         @*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0н
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:         @┤
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
╞
Ю
$__inference_internal_grad_fn_7474451
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╞
Є
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832
spatial_layer1_input(
spatial_layer1_7471763:@$
spatial_layer1_7471765:@(
spatial_layer2_7471812:@@$
spatial_layer2_7471814:@
identityИв&spatial_layer1/StatefulPartitionedCallв&spatial_layer2/StatefulPartitionedCallа
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_7471763spatial_layer1_7471765*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7471762э
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_7471780п
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_7471812spatial_layer2_7471814*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7471811ё
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_7471829x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	7471814:'#
!
_user_specified_name	7471812:'#
!
_user_specified_name	7471765:'#
!
_user_specified_name	7471763:a ]
+
_output_shapes
:         
.
_user_specified_namespatial_layer1_input
к
J
.__inference_activation_3_layer_call_fn_7474091

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_7471961`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ы
Т
%__inference_ou2_layer_call_fn_7474076

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_7471943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474072:'#
!
_user_specified_name	7474070:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Й
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7472314

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :                  g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  \
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
э

`
D__inference_reshape_layer_call_and_return_conditional_losses_7473478

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
         П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є	
ё
@__inference_ov2_layer_call_and_return_conditional_losses_7472075

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╒
Я
$__inference_internal_grad_fn_7474991
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
╜.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473788	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИв#attention_output/add/ReadVariableOpв-attention_output/einsum/Einsum/ReadVariableOpвkey/add/ReadVariableOpв key/einsum/Einsum/ReadVariableOpвquery/add/ReadVariableOpв"query/einsum/Einsum/ReadVariableOpвvalue/add/ReadVariableOpв"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0░
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:         @*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0│
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╣
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:         @Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"                  *
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"                  z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"                  й
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:         @*
equationacbe,aecd->abcdи
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╒
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:         @*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0н
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:         @┤
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
╞
Ю
$__inference_internal_grad_fn_7474559
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╞
Ю
$__inference_internal_grad_fn_7474667
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╞
Ю
$__inference_internal_grad_fn_7474505
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Ц	
╔
#__inference_P_layer_call_fn_7472257
	op1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	op1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_P_layer_call_and_return_conditional_losses_7472228o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7472253:'#
!
_user_specified_name	7472251:'#
!
_user_specified_name	7472249:'#
!
_user_specified_name	7472247:R N
'
_output_shapes
:         @
#
_user_specified_name	op1_input
Ц"
¤
D__inference_dense_4_layer_call_and_return_conditional_losses_7472667

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
mulMulbeta:output:0BiasAdd:output:0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @a
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @┼
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472658*D
_output_shapes2
0:         @:         @: g

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
з
ї
$__inference_internal_grad_fn_7475153
result_grads_0
result_grads_1
result_grads_26
2mul_model_spatial_transformation_activation_1_beta;
7mul_model_spatial_transformation_spatial_layer2_biasadd
identity

identity_1╛
mulMul2mul_model_spatial_transformation_activation_1_beta7mul_model_spatial_transformation_spatial_layer2_biasadd^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @п
mul_1Mul2mul_model_spatial_transformation_activation_1_beta7mul_model_spatial_transformation_spatial_layer2_biasadd*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @
SquareSquare7mul_model_spatial_transformation_spatial_layer2_biasadd*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:А|
+
_output_shapes
:         @
M
_user_specified_name53model/spatial_transformation/spatial_layer2/BiasAdd:fb

_output_shapes
: 
H
_user_specified_name0.model/spatial_transformation/activation_1/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
є	
ё
@__inference_ov1_layer_call_and_return_conditional_losses_7472046

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ы
Т
%__inference_op2_layer_call_fn_7474224

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op2_layer_call_and_return_conditional_losses_7472207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474220:'#
!
_user_specified_name	7474218:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╡
Q
%__inference_add_layer_call_fn_7473794
inputs_0
inputs_1
identity┐
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_7472627d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:         @:         @:UQ
+
_output_shapes
:         @
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:         @
"
_user_specified_name
inputs_0
к
J
.__inference_activation_4_layer_call_fn_7474128

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_7472064`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7471762

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Щ+
╚

'__inference_model_layer_call_fn_7473096
x_layer
y_layer
	xbc_layer
	ybc_layer
	ubc_layer
	vbc_layer
	pbc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:@@

unknown_26:@

unknown_27:@@

unknown_28:@

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:

unknown_35:@

unknown_36:

unknown_37:@

unknown_38:
identity

identity_1

identity_2ИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallx_layery_layer	xbc_layer	ybc_layer	ubc_layer	vbc_layer	pbc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_7472906o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         :         :                  :                  :                  :                  :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'.#
!
_user_specified_name	7473088:'-#
!
_user_specified_name	7473086:',#
!
_user_specified_name	7473084:'+#
!
_user_specified_name	7473082:'*#
!
_user_specified_name	7473080:')#
!
_user_specified_name	7473078:'(#
!
_user_specified_name	7473076:''#
!
_user_specified_name	7473074:'&#
!
_user_specified_name	7473072:'%#
!
_user_specified_name	7473070:'$#
!
_user_specified_name	7473068:'##
!
_user_specified_name	7473066:'"#
!
_user_specified_name	7473064:'!#
!
_user_specified_name	7473062:' #
!
_user_specified_name	7473060:'#
!
_user_specified_name	7473058:'#
!
_user_specified_name	7473056:'#
!
_user_specified_name	7473054:'#
!
_user_specified_name	7473052:'#
!
_user_specified_name	7473050:'#
!
_user_specified_name	7473048:'#
!
_user_specified_name	7473046:'#
!
_user_specified_name	7473044:'#
!
_user_specified_name	7473042:'#
!
_user_specified_name	7473040:'#
!
_user_specified_name	7473038:'#
!
_user_specified_name	7473036:'#
!
_user_specified_name	7473034:'#
!
_user_specified_name	7473032:'#
!
_user_specified_name	7473030:'#
!
_user_specified_name	7473028:'#
!
_user_specified_name	7473026:'#
!
_user_specified_name	7473024:'#
!
_user_specified_name	7473022:'#
!
_user_specified_name	7473020:'#
!
_user_specified_name	7473018:'
#
!
_user_specified_name	7473016:'	#
!
_user_specified_name	7473014:'#
!
_user_specified_name	7473012:'#
!
_user_specified_name	7473010:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:P L
'
_output_shapes
:         
!
_user_specified_name	X_layer
Й
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7473405

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :                  g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  \
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
В#
√
B__inference_dense_layer_call_and_return_conditional_losses_7472452

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472443*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
№
e
G__inference_activation_layer_call_and_return_conditional_losses_7473973

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
mulMulbeta:output:0inputs*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @╗
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473964*D
_output_shapes2
0:         @:         @: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
и
E
)__inference_flatten_layer_call_fn_7473853

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_7472678`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╘
╗
$__inference_internal_grad_fn_7475180
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_1_beta
mul_model_dense_1_biasadd
identity

identity_1Н
mulMulmul_model_dense_1_betamul_model_dense_1_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @~
mul_1Mulmul_model_dense_1_betamul_model_dense_1_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @j
SquareSquaremul_model_dense_1_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:kg
4
_output_shapes"
 :                  @
/
_user_specified_namemodel/dense_1/BiasAdd:JF

_output_shapes
: 
,
_user_specified_namemodel/dense_1/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
┌
g
I__inference_activation_5_layer_call_and_return_conditional_losses_7474178

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474169*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
╔
#__inference_V_layer_call_fn_7472138
	ov1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	ov1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_V_layer_call_and_return_conditional_losses_7472112o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7472134:'#
!
_user_specified_name	7472132:'#
!
_user_specified_name	7472130:'#
!
_user_specified_name	7472128:R N
'
_output_shapes
:         @
#
_user_specified_name	ov1_input
ё	
щ
8__inference_spatial_transformation_layer_call_fn_7471861
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7471857:'#
!
_user_specified_name	7471855:'#
!
_user_specified_name	7471853:'#
!
_user_specified_name	7471851:a ]
+
_output_shapes
:         
.
_user_specified_namespatial_layer1_input
╬
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7472324

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐[
mulMulinputsCast:y:0*
T0*4
_output_shapes"
 :                  g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  \
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
є	
ё
@__inference_ou2_layer_call_and_return_conditional_losses_7471943

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_3_layer_call_and_return_conditional_losses_7471961

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471952*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┬
╖
$__inference_internal_grad_fn_7475099
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_beta
mul_model_dense_biasadd
identity

identity_1Й
mulMulmul_model_dense_betamul_model_dense_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @z
mul_1Mulmul_model_dense_betamul_model_dense_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @h
SquareSquaremul_model_dense_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:ie
4
_output_shapes"
 :                  @
-
_user_specified_namemodel/dense/BiasAdd:HD

_output_shapes
: 
*
_user_specified_namemodel/dense/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
Я
╗
$__inference_internal_grad_fn_7475234
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_4_beta
mul_model_dense_4_biasadd
identity

identity_1Д
mulMulmul_model_dense_4_betamul_model_dense_4_biasadd^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @u
mul_1Mulmul_model_dense_4_betamul_model_dense_4_biasadd*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @a
SquareSquaremul_model_dense_4_biasadd*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:b^
+
_output_shapes
:         @
/
_user_specified_namemodel/dense_4/BiasAdd:JF

_output_shapes
: 
,
_user_specified_namemodel/dense_4/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
 
[
/__inference_concatenate_1_layer_call_fn_7473438
inputs_0
inputs_1
identity╥
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7472360m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:                  :                  :^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
ы
Т
%__inference_ov1_layer_call_fn_7474113

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov1_layer_call_and_return_conditional_losses_7472046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474109:'#
!
_user_specified_name	7474107:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°	
Ў
E__inference_output_v_layer_call_and_return_conditional_losses_7472731

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╒
Я
$__inference_internal_grad_fn_7474964
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
з
Ц
)__inference_dense_3_layer_call_fn_7473631

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_7472563|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473627:'#
!
_user_specified_name	7473625:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
К
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7472360

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :В
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:                  :                  :\X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ш
i
/__inference_concatenate_2_layer_call_fn_7473452
inputs_0
inputs_1
inputs_2
identity▌
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7472352m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :                  :                  :^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_2:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
С
Э
0__inference_spatial_layer2_layer_call_fn_7473982

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7471811s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473978:'#
!
_user_specified_name	7473976:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
ё	
щ
8__inference_spatial_transformation_layer_call_fn_7471874
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7471870:'#
!
_user_specified_name	7471868:'#
!
_user_specified_name	7471866:'#
!
_user_specified_name	7471864:a ]
+
_output_shapes
:         
.
_user_specified_namespatial_layer1_input
д
G
+__inference_rescaling_layer_call_fn_7473370

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_7472333`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌
g
I__inference_activation_4_layer_call_and_return_conditional_losses_7474141

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474132*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
Р
>__inference_V_layer_call_and_return_conditional_losses_7472112
	ov1_input
ov1_7472099:@@
ov1_7472101:@
ov2_7472105:@@
ov2_7472107:@
identityИвov1/StatefulPartitionedCallвov2/StatefulPartitionedCallх
ov1/StatefulPartitionedCallStatefulPartitionedCall	ov1_inputov1_7472099ov1_7472101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov1_layer_call_and_return_conditional_losses_7472046т
activation_4/PartitionedCallPartitionedCall$ov1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_7472064Б
ov2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ov2_7472105ov2_7472107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov2_layer_call_and_return_conditional_losses_7472075т
activation_5/PartitionedCallPartitionedCall$ov2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_7472093t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^ov1/StatefulPartitionedCall^ov2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
ov1/StatefulPartitionedCallov1/StatefulPartitionedCall2:
ov2/StatefulPartitionedCallov2/StatefulPartitionedCall:'#
!
_user_specified_name	7472107:'#
!
_user_specified_name	7472105:'#
!
_user_specified_name	7472101:'#
!
_user_specified_name	7472099:R N
'
_output_shapes
:         @
#
_user_specified_name	ov1_input
Ы
Ю
$__inference_internal_grad_fn_7474694
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1g
mulMulmul_beta
mul_inputs^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:SO
+
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Д#
¤
D__inference_dense_3_layer_call_and_return_conditional_losses_7472563

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472554*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474370
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Д#
¤
D__inference_dense_3_layer_call_and_return_conditional_losses_7473670

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473661*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
■
g
I__inference_activation_1_layer_call_and_return_conditional_losses_7471829

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
mulMulbeta:output:0inputs*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @╗
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471820*D
_output_shapes2
0:         @:         @: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Д#
¤
D__inference_dense_2_layer_call_and_return_conditional_losses_7473574

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473565*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
▄
└
$__inference_internal_grad_fn_7475288
result_grads_0
result_grads_1
result_grads_2!
mul_model_p_activation_7_beta
mul_model_p_op2_biasadd
identity

identity_1Е
mulMulmul_model_p_activation_7_betamul_model_p_op2_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_p_activation_7_betamul_model_p_op2_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_p_op2_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/P/op2/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/P/activation_7/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
л
Д
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7473460
inputs_0
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :                  :                  :^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_2:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
ї
Ч
*__inference_output_p_layer_call_fn_7473906

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_p_layer_call_and_return_conditional_losses_7472716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473902:'#
!
_user_specified_name	7473900:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
I
-__inference_rescaling_2_layer_call_fn_7473397

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7472314m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ў*
╞

%__inference_signature_wrapper_7473365
	pbc_layer
	ubc_layer
	vbc_layer
x_layer
	xbc_layer
y_layer
	ybc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:@@

unknown_26:@

unknown_27:@@

unknown_28:@

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:

unknown_35:@

unknown_36:

unknown_37:@

unknown_38:
identity

identity_1

identity_2ИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallx_layery_layer	xbc_layer	ybc_layer	ubc_layer	vbc_layer	pbc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_7471730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:                  :                  :                  :         :                  :         :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'.#
!
_user_specified_name	7473357:'-#
!
_user_specified_name	7473355:',#
!
_user_specified_name	7473353:'+#
!
_user_specified_name	7473351:'*#
!
_user_specified_name	7473349:')#
!
_user_specified_name	7473347:'(#
!
_user_specified_name	7473345:''#
!
_user_specified_name	7473343:'&#
!
_user_specified_name	7473341:'%#
!
_user_specified_name	7473339:'$#
!
_user_specified_name	7473337:'##
!
_user_specified_name	7473335:'"#
!
_user_specified_name	7473333:'!#
!
_user_specified_name	7473331:' #
!
_user_specified_name	7473329:'#
!
_user_specified_name	7473327:'#
!
_user_specified_name	7473325:'#
!
_user_specified_name	7473323:'#
!
_user_specified_name	7473321:'#
!
_user_specified_name	7473319:'#
!
_user_specified_name	7473317:'#
!
_user_specified_name	7473315:'#
!
_user_specified_name	7473313:'#
!
_user_specified_name	7473311:'#
!
_user_specified_name	7473309:'#
!
_user_specified_name	7473307:'#
!
_user_specified_name	7473305:'#
!
_user_specified_name	7473303:'#
!
_user_specified_name	7473301:'#
!
_user_specified_name	7473299:'#
!
_user_specified_name	7473297:'#
!
_user_specified_name	7473295:'#
!
_user_specified_name	7473293:'#
!
_user_specified_name	7473291:'#
!
_user_specified_name	7473289:'#
!
_user_specified_name	7473287:'
#
!
_user_specified_name	7473285:'	#
!
_user_specified_name	7473283:'#
!
_user_specified_name	7473281:'#
!
_user_specified_name	7473279:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	X_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_ [
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer
и
I
-__inference_rescaling_1_layer_call_fn_7473383

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7472343`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌
g
I__inference_activation_7_layer_call_and_return_conditional_losses_7474252

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474243*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
╔
#__inference_U_layer_call_fn_7472006
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_7471980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7472002:'#
!
_user_specified_name	7472000:'#
!
_user_specified_name	7471998:'#
!
_user_specified_name	7471996:R N
'
_output_shapes
:         @
#
_user_specified_name	ou1_input
Ы
Ю
$__inference_internal_grad_fn_7474775
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1g
mulMulmul_beta
mul_inputs^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:SO
+
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Мг
°%
"__inference__wrapped_model_7471730
x_layer
y_layer
	xbc_layer
	ybc_layer
	ubc_layer
	vbc_layer
	pbc_layerA
/model_dense_2_tensordot_readvariableop_resource:@;
-model_dense_2_biasadd_readvariableop_resource:@?
-model_dense_tensordot_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer1_tensordot_readvariableop_resource:@Y
Kmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer2_tensordot_readvariableop_resource:@@Y
Kmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource:@A
/model_dense_1_tensordot_readvariableop_resource:@@;
-model_dense_1_biasadd_readvariableop_resource:@A
/model_dense_3_tensordot_readvariableop_resource:@@;
-model_dense_3_biasadd_readvariableop_resource:@\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_query_add_readvariableop_resource:@Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@L
:model_multi_head_attention_key_add_readvariableop_resource:@\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_value_add_readvariableop_resource:@g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:@A
/model_dense_4_tensordot_readvariableop_resource:@@;
-model_dense_4_biasadd_readvariableop_resource:@<
*model_p_op1_matmul_readvariableop_resource:@@9
+model_p_op1_biasadd_readvariableop_resource:@<
*model_p_op2_matmul_readvariableop_resource:@@9
+model_p_op2_biasadd_readvariableop_resource:@<
*model_v_ov1_matmul_readvariableop_resource:@@9
+model_v_ov1_biasadd_readvariableop_resource:@<
*model_v_ov2_matmul_readvariableop_resource:@@9
+model_v_ov2_biasadd_readvariableop_resource:@<
*model_u_ou1_matmul_readvariableop_resource:@@9
+model_u_ou1_biasadd_readvariableop_resource:@<
*model_u_ou2_matmul_readvariableop_resource:@@9
+model_u_ou2_biasadd_readvariableop_resource:@?
-model_output_p_matmul_readvariableop_resource:@<
.model_output_p_biasadd_readvariableop_resource:?
-model_output_v_matmul_readvariableop_resource:@<
.model_output_v_biasadd_readvariableop_resource:?
-model_output_u_matmul_readvariableop_resource:@<
.model_output_u_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ив"model/P/op1/BiasAdd/ReadVariableOpв!model/P/op1/MatMul/ReadVariableOpв"model/P/op2/BiasAdd/ReadVariableOpв!model/P/op2/MatMul/ReadVariableOpв"model/U/ou1/BiasAdd/ReadVariableOpв!model/U/ou1/MatMul/ReadVariableOpв"model/U/ou2/BiasAdd/ReadVariableOpв!model/U/ou2/MatMul/ReadVariableOpв"model/V/ov1/BiasAdd/ReadVariableOpв!model/V/ov1/MatMul/ReadVariableOpв"model/V/ov2/BiasAdd/ReadVariableOpв!model/V/ov2/MatMul/ReadVariableOpв"model/dense/BiasAdd/ReadVariableOpв$model/dense/Tensordot/ReadVariableOpв$model/dense_1/BiasAdd/ReadVariableOpв&model/dense_1/Tensordot/ReadVariableOpв$model/dense_2/BiasAdd/ReadVariableOpв&model/dense_2/Tensordot/ReadVariableOpв$model/dense_3/BiasAdd/ReadVariableOpв&model/dense_3/Tensordot/ReadVariableOpв$model/dense_4/BiasAdd/ReadVariableOpв&model/dense_4/Tensordot/ReadVariableOpв>model/multi_head_attention/attention_output/add/ReadVariableOpвHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpв1model/multi_head_attention/key/add/ReadVariableOpв;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpв3model/multi_head_attention/query/add/ReadVariableOpв=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpв3model/multi_head_attention/value/add/ReadVariableOpв=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpв%model/output_p/BiasAdd/ReadVariableOpв$model/output_p/MatMul/ReadVariableOpв%model/output_u/BiasAdd/ReadVariableOpв$model/output_u/MatMul/ReadVariableOpв%model/output_v/BiasAdd/ReadVariableOpв$model/output_v/MatMul/ReadVariableOpвBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpвDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpвBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpвDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp]
model/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?_
model/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛Й
model/rescaling_2/mulMul	xbc_layer!model/rescaling_2/Cast/x:output:0*
T0*4
_output_shapes"
 :                  Э
model/rescaling_2/addAddV2model/rescaling_2/mul:z:0#model/rescaling_2/Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  Z
model/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :q
model/rescaling_3/CastCast!model/rescaling_3/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: _
model/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐В
model/rescaling_3/mulMul	ybc_layermodel/rescaling_3/Cast:y:0*
T0*4
_output_shapes"
 :                  Э
model/rescaling_3/addAddV2model/rescaling_3/mul:z:0#model/rescaling_3/Cast_1/x:output:0*
T0*4
_output_shapes"
 :                  [
model/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?]
model/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛v
model/rescaling/mulMulx_layermodel/rescaling/Cast/x:output:0*
T0*'
_output_shapes
:         К
model/rescaling/addAddV2model/rescaling/mul:z:0!model/rescaling/Cast_1/x:output:0*
T0*'
_output_shapes
:         Z
model/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :q
model/rescaling_1/CastCast!model/rescaling_1/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: _
model/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐s
model/rescaling_1/mulMuly_layermodel/rescaling_1/Cast:y:0*
T0*'
_output_shapes
:         Р
model/rescaling_1/addAddV2model/rescaling_1/mul:z:0#model/rescaling_1/Cast_1/x:output:0*
T0*'
_output_shapes
:         a
model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╣
model/concatenate_2/concatConcatV2	ubc_layer	vbc_layer	pbc_layer(model/concatenate_2/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╬
model/concatenate_1/concatConcatV2model/rescaling_2/add:z:0model/rescaling_3/add:z:0(model/concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  _
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╗
model/concatenate/concatConcatV2model/rescaling/add:z:0model/rescaling_1/add:z:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ц
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0f
model/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
model/dense_2/Tensordot/ShapeShape#model/concatenate_2/concat:output:0*
T0*
_output_shapes
::э╧g
%model/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : є
 model/dense_2/Tensordot/GatherV2GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/free:output:0.model/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ў
"model/dense_2/Tensordot/GatherV2_1GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/axes:output:00model/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_2/Tensordot/ProdProd)model/dense_2/Tensordot/GatherV2:output:0&model/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_2/Tensordot/Prod_1Prod+model/dense_2/Tensordot/GatherV2_1:output:0(model/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╘
model/dense_2/Tensordot/concatConcatV2%model/dense_2/Tensordot/free:output:0%model/dense_2/Tensordot/axes:output:0,model/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:г
model/dense_2/Tensordot/stackPack%model/dense_2/Tensordot/Prod:output:0'model/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╗
!model/dense_2/Tensordot/transpose	Transpose#model/concatenate_2/concat:output:0'model/dense_2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :                  ┤
model/dense_2/Tensordot/ReshapeReshape%model/dense_2/Tensordot/transpose:y:0&model/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ┤
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @i
model/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
 model/dense_2/Tensordot/concat_1ConcatV2)model/dense_2/Tensordot/GatherV2:output:0(model/dense_2/Tensordot/Const_2:output:0.model/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╢
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0)model/dense_2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @О
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0п
model/dense_2/BiasAddBiasAdd model/dense_2/Tensordot:output:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @W
model/dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ф
model/dense_2/mulMulmodel/dense_2/beta:output:0model/dense_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @v
model/dense_2/SigmoidSigmoidmodel/dense_2/mul:z:0*
T0*4
_output_shapes"
 :                  @Ф
model/dense_2/mul_1Mulmodel/dense_2/BiasAdd:output:0model/dense_2/Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @z
model/dense_2/IdentityIdentitymodel/dense_2/mul_1:z:0*
T0*4
_output_shapes"
 :                  @П
model/dense_2/IdentityN	IdentityNmodel/dense_2/mul_1:z:0model/dense_2/BiasAdd:output:0model/dense_2/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471359*V
_output_shapesD
B:                  @:                  @: Т
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
model/dense/Tensordot/ShapeShape#model/concatenate_1/concat:output:0*
T0*
_output_shapes
::э╧e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Т
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╠
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╖
model/dense/Tensordot/transpose	Transpose#model/concatenate_1/concat:output:0%model/dense/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :                  о
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  о
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:░
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0й
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @U
model/dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
model/dense/mulMulmodel/dense/beta:output:0model/dense/BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @r
model/dense/SigmoidSigmoidmodel/dense/mul:z:0*
T0*4
_output_shapes"
 :                  @О
model/dense/mul_1Mulmodel/dense/BiasAdd:output:0model/dense/Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @v
model/dense/IdentityIdentitymodel/dense/mul_1:z:0*
T0*4
_output_shapes"
 :                  @З
model/dense/IdentityN	IdentityNmodel/dense/mul_1:z:0model/dense/BiasAdd:output:0model/dense/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471394*V
_output_shapesD
B:                  @:                  @: r
model/reshape/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
::э╧k
!model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
         ╟
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Я
model/reshape/ReshapeReshape!model/concatenate/concat:output:0$model/reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:         ╥
Dmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpReadVariableOpMmodel_spatial_transformation_spatial_layer1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0Д
:model/spatial_transformation/spatial_layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:model/spatial_transformation/spatial_layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ч
;model/spatial_transformation/spatial_layer1/Tensordot/ShapeShapemodel/reshape/Reshape:output:0*
T0*
_output_shapes
::э╧Е
Cmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
>model/spatial_transformation/spatial_layer1/Tensordot/GatherV2GatherV2Dmodel/spatial_transformation/spatial_layer1/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/free:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Emodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
@model/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1GatherV2Dmodel/spatial_transformation/spatial_layer1/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/axes:output:0Nmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;model/spatial_transformation/spatial_layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Є
:model/spatial_transformation/spatial_layer1/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
<model/spatial_transformation/spatial_layer1/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╠
<model/spatial_transformation/spatial_layer1/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer1/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¤
;model/spatial_transformation/spatial_layer1/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer1/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:щ
?model/spatial_transformation/spatial_layer1/Tensordot/transpose	Transposemodel/reshape/Reshape:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:         О
=model/spatial_transformation/spatial_layer1/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer1/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  О
<model/spatial_transformation/spatial_layer1/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer1/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
>model/spatial_transformation/spatial_layer1/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer1/TensordotReshapeFmodel/spatial_transformation/spatial_layer1/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @╩
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer1/BiasAddBiasAdd>model/spatial_transformation/spatial_layer1/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @q
,model/spatial_transformation/activation/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▌
+model/spatial_transformation/activation/mulMul5model/spatial_transformation/activation/beta:output:0<model/spatial_transformation/spatial_layer1/BiasAdd:output:0*
T0*+
_output_shapes
:         @б
/model/spatial_transformation/activation/SigmoidSigmoid/model/spatial_transformation/activation/mul:z:0*
T0*+
_output_shapes
:         @▌
-model/spatial_transformation/activation/mul_1Mul<model/spatial_transformation/spatial_layer1/BiasAdd:output:03model/spatial_transformation/activation/Sigmoid:y:0*
T0*+
_output_shapes
:         @е
0model/spatial_transformation/activation/IdentityIdentity1model/spatial_transformation/activation/mul_1:z:0*
T0*+
_output_shapes
:         @щ
1model/spatial_transformation/activation/IdentityN	IdentityN1model/spatial_transformation/activation/mul_1:z:0<model/spatial_transformation/spatial_layer1/BiasAdd:output:05model/spatial_transformation/activation/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471438*D
_output_shapes2
0:         @:         @: ╥
Dmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpReadVariableOpMmodel_spatial_transformation_spatial_layer2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0Д
:model/spatial_transformation/spatial_layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:model/spatial_transformation/spatial_layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       │
;model/spatial_transformation/spatial_layer2/Tensordot/ShapeShape:model/spatial_transformation/activation/IdentityN:output:0*
T0*
_output_shapes
::э╧Е
Cmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
>model/spatial_transformation/spatial_layer2/Tensordot/GatherV2GatherV2Dmodel/spatial_transformation/spatial_layer2/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/free:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Emodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
@model/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1GatherV2Dmodel/spatial_transformation/spatial_layer2/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/axes:output:0Nmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;model/spatial_transformation/spatial_layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Є
:model/spatial_transformation/spatial_layer2/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
<model/spatial_transformation/spatial_layer2/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╠
<model/spatial_transformation/spatial_layer2/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer2/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¤
;model/spatial_transformation/spatial_layer2/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer2/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Е
?model/spatial_transformation/spatial_layer2/Tensordot/transpose	Transpose:model/spatial_transformation/activation/IdentityN:output:0Emodel/spatial_transformation/spatial_layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:         @О
=model/spatial_transformation/spatial_layer2/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer2/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  О
<model/spatial_transformation/spatial_layer2/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer2/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
>model/spatial_transformation/spatial_layer2/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer2/TensordotReshapeFmodel/spatial_transformation/spatial_layer2/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @╩
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer2/BiasAddBiasAdd>model/spatial_transformation/spatial_layer2/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @s
.model/spatial_transformation/activation_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?с
-model/spatial_transformation/activation_1/mulMul7model/spatial_transformation/activation_1/beta:output:0<model/spatial_transformation/spatial_layer2/BiasAdd:output:0*
T0*+
_output_shapes
:         @е
1model/spatial_transformation/activation_1/SigmoidSigmoid1model/spatial_transformation/activation_1/mul:z:0*
T0*+
_output_shapes
:         @с
/model/spatial_transformation/activation_1/mul_1Mul<model/spatial_transformation/spatial_layer2/BiasAdd:output:05model/spatial_transformation/activation_1/Sigmoid:y:0*
T0*+
_output_shapes
:         @й
2model/spatial_transformation/activation_1/IdentityIdentity3model/spatial_transformation/activation_1/mul_1:z:0*
T0*+
_output_shapes
:         @я
3model/spatial_transformation/activation_1/IdentityN	IdentityN3model/spatial_transformation/activation_1/mul_1:z:0<model/spatial_transformation/spatial_layer2/BiasAdd:output:07model/spatial_transformation/activation_1/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471473*D
_output_shapes2
0:         @:         @: Ц
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0f
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
model/dense_1/Tensordot/ShapeShapemodel/dense/IdentityN:output:0*
T0*
_output_shapes
::э╧g
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : є
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ў
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╘
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:г
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╢
!model/dense_1/Tensordot/transpose	Transposemodel/dense/IdentityN:output:0'model/dense_1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @┤
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ┤
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @i
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╢
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @О
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0п
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @W
model/dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ф
model/dense_1/mulMulmodel/dense_1/beta:output:0model/dense_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @v
model/dense_1/SigmoidSigmoidmodel/dense_1/mul:z:0*
T0*4
_output_shapes"
 :                  @Ф
model/dense_1/mul_1Mulmodel/dense_1/BiasAdd:output:0model/dense_1/Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @z
model/dense_1/IdentityIdentitymodel/dense_1/mul_1:z:0*
T0*4
_output_shapes"
 :                  @П
model/dense_1/IdentityN	IdentityNmodel/dense_1/mul_1:z:0model/dense_1/BiasAdd:output:0model/dense_1/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471508*V
_output_shapesD
B:                  @:                  @: Ц
&model/dense_3/Tensordot/ReadVariableOpReadVariableOp/model_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0f
model/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
model/dense_3/Tensordot/ShapeShape model/dense_2/IdentityN:output:0*
T0*
_output_shapes
::э╧g
%model/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : є
 model/dense_3/Tensordot/GatherV2GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/free:output:0.model/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ў
"model/dense_3/Tensordot/GatherV2_1GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/axes:output:00model/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_3/Tensordot/ProdProd)model/dense_3/Tensordot/GatherV2:output:0&model/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_3/Tensordot/Prod_1Prod+model/dense_3/Tensordot/GatherV2_1:output:0(model/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╘
model/dense_3/Tensordot/concatConcatV2%model/dense_3/Tensordot/free:output:0%model/dense_3/Tensordot/axes:output:0,model/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:г
model/dense_3/Tensordot/stackPack%model/dense_3/Tensordot/Prod:output:0'model/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╕
!model/dense_3/Tensordot/transpose	Transpose model/dense_2/IdentityN:output:0'model/dense_3/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @┤
model/dense_3/Tensordot/ReshapeReshape%model/dense_3/Tensordot/transpose:y:0&model/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ┤
model/dense_3/Tensordot/MatMulMatMul(model/dense_3/Tensordot/Reshape:output:0.model/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @i
model/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
 model/dense_3/Tensordot/concat_1ConcatV2)model/dense_3/Tensordot/GatherV2:output:0(model/dense_3/Tensordot/Const_2:output:0.model/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╢
model/dense_3/TensordotReshape(model/dense_3/Tensordot/MatMul:product:0)model/dense_3/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @О
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0п
model/dense_3/BiasAddBiasAdd model/dense_3/Tensordot:output:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @W
model/dense_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ф
model/dense_3/mulMulmodel/dense_3/beta:output:0model/dense_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @v
model/dense_3/SigmoidSigmoidmodel/dense_3/mul:z:0*
T0*4
_output_shapes"
 :                  @Ф
model/dense_3/mul_1Mulmodel/dense_3/BiasAdd:output:0model/dense_3/Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @z
model/dense_3/IdentityIdentitymodel/dense_3/mul_1:z:0*
T0*4
_output_shapes"
 :                  @П
model/dense_3/IdentityN	IdentityNmodel/dense_3/mul_1:z:0model/dense_3/BiasAdd:output:0model/dense_3/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471543*V
_output_shapesD
B:                  @:                  @: ╚
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Э
.model/multi_head_attention/query/einsum/EinsumEinsum<model/spatial_transformation/activation_1/IdentityN:output:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:         @*
equationabc,cde->abde░
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype0с
(model/multi_head_attention/query/add/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @─
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Ж
,model/multi_head_attention/key/einsum/EinsumEinsum model/dense_1/IdentityN:output:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdeм
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype0ф
&model/multi_head_attention/key/add/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @╚
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0К
.model/multi_head_attention/value/einsum/EinsumEinsum model/dense_3/IdentityN:output:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abde░
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype0ъ
(model/multi_head_attention/value/add/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >╕
model/multi_head_attention/MulMul,model/multi_head_attention/query/add/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:         @э
(model/multi_head_attention/einsum/EinsumEinsum*model/multi_head_attention/key/add/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*8
_output_shapes&
$:"                  *
equationaecd,abcd->acbeл
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*8
_output_shapes&
$:"                  ░
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"                  ·
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0,model/multi_head_attention/value/add/add:z:0*
N*
T0*/
_output_shapes
:         @*
equationacbe,aecd->abcd▐
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0ж
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:         @*
equationabcd,cde->abe┬
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0■
3model/multi_head_attention/attention_output/add/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @├
model/add/addAddV2<model/spatial_transformation/activation_1/IdentityN:output:07model/multi_head_attention/attention_output/add/add:z:0*
T0*+
_output_shapes
:         @Ц
&model/dense_4/Tensordot/ReadVariableOpReadVariableOp/model_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0f
model/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
model/dense_4/Tensordot/ShapeShapemodel/add/add:z:0*
T0*
_output_shapes
::э╧g
%model/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : є
 model/dense_4/Tensordot/GatherV2GatherV2&model/dense_4/Tensordot/Shape:output:0%model/dense_4/Tensordot/free:output:0.model/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ў
"model/dense_4/Tensordot/GatherV2_1GatherV2&model/dense_4/Tensordot/Shape:output:0%model/dense_4/Tensordot/axes:output:00model/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_4/Tensordot/ProdProd)model/dense_4/Tensordot/GatherV2:output:0&model/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_4/Tensordot/Prod_1Prod+model/dense_4/Tensordot/GatherV2_1:output:0(model/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╘
model/dense_4/Tensordot/concatConcatV2%model/dense_4/Tensordot/free:output:0%model/dense_4/Tensordot/axes:output:0,model/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:г
model/dense_4/Tensordot/stackPack%model/dense_4/Tensordot/Prod:output:0'model/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:а
!model/dense_4/Tensordot/transpose	Transposemodel/add/add:z:0'model/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:         @┤
model/dense_4/Tensordot/ReshapeReshape%model/dense_4/Tensordot/transpose:y:0&model/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ┤
model/dense_4/Tensordot/MatMulMatMul(model/dense_4/Tensordot/Reshape:output:0.model/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @i
model/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
 model/dense_4/Tensordot/concat_1ConcatV2)model/dense_4/Tensordot/GatherV2:output:0(model/dense_4/Tensordot/Const_2:output:0.model/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:н
model/dense_4/TensordotReshape(model/dense_4/Tensordot/MatMul:product:0)model/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @О
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
model/dense_4/BiasAddBiasAdd model/dense_4/Tensordot:output:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @W
model/dense_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
model/dense_4/mulMulmodel/dense_4/beta:output:0model/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:         @m
model/dense_4/SigmoidSigmoidmodel/dense_4/mul:z:0*
T0*+
_output_shapes
:         @Л
model/dense_4/mul_1Mulmodel/dense_4/BiasAdd:output:0model/dense_4/Sigmoid:y:0*
T0*+
_output_shapes
:         @q
model/dense_4/IdentityIdentitymodel/dense_4/mul_1:z:0*
T0*+
_output_shapes
:         @¤
model/dense_4/IdentityN	IdentityNmodel/dense_4/mul_1:z:0model/dense_4/BiasAdd:output:0model/dense_4/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471609*D
_output_shapes2
0:         @:         @: d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   Т
model/flatten/ReshapeReshape model/dense_4/IdentityN:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:         @М
!model/P/op1/MatMul/ReadVariableOpReadVariableOp*model_p_op1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Щ
model/P/op1/MatMulMatMulmodel/flatten/Reshape:output:0)model/P/op1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/P/op1/BiasAdd/ReadVariableOpReadVariableOp+model_p_op1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/P/op1/BiasAddBiasAddmodel/P/op1/MatMul:product:0*model/P/op1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/P/activation_6/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/P/activation_6/mulMul"model/P/activation_6/beta:output:0model/P/op1/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/P/activation_6/SigmoidSigmoidmodel/P/activation_6/mul:z:0*
T0*'
_output_shapes
:         @У
model/P/activation_6/mul_1Mulmodel/P/op1/BiasAdd:output:0 model/P/activation_6/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/P/activation_6/IdentityIdentitymodel/P/activation_6/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/P/activation_6/IdentityN	IdentityNmodel/P/activation_6/mul_1:z:0model/P/op1/BiasAdd:output:0"model/P/activation_6/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471626*<
_output_shapes*
(:         @:         @: М
!model/P/op2/MatMul/ReadVariableOpReadVariableOp*model_p_op2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0в
model/P/op2/MatMulMatMul'model/P/activation_6/IdentityN:output:0)model/P/op2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/P/op2/BiasAdd/ReadVariableOpReadVariableOp+model_p_op2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/P/op2/BiasAddBiasAddmodel/P/op2/MatMul:product:0*model/P/op2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/P/activation_7/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/P/activation_7/mulMul"model/P/activation_7/beta:output:0model/P/op2/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/P/activation_7/SigmoidSigmoidmodel/P/activation_7/mul:z:0*
T0*'
_output_shapes
:         @У
model/P/activation_7/mul_1Mulmodel/P/op2/BiasAdd:output:0 model/P/activation_7/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/P/activation_7/IdentityIdentitymodel/P/activation_7/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/P/activation_7/IdentityN	IdentityNmodel/P/activation_7/mul_1:z:0model/P/op2/BiasAdd:output:0"model/P/activation_7/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471641*<
_output_shapes*
(:         @:         @: М
!model/V/ov1/MatMul/ReadVariableOpReadVariableOp*model_v_ov1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Щ
model/V/ov1/MatMulMatMulmodel/flatten/Reshape:output:0)model/V/ov1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/V/ov1/BiasAdd/ReadVariableOpReadVariableOp+model_v_ov1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/V/ov1/BiasAddBiasAddmodel/V/ov1/MatMul:product:0*model/V/ov1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/V/activation_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/V/activation_4/mulMul"model/V/activation_4/beta:output:0model/V/ov1/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/V/activation_4/SigmoidSigmoidmodel/V/activation_4/mul:z:0*
T0*'
_output_shapes
:         @У
model/V/activation_4/mul_1Mulmodel/V/ov1/BiasAdd:output:0 model/V/activation_4/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/V/activation_4/IdentityIdentitymodel/V/activation_4/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/V/activation_4/IdentityN	IdentityNmodel/V/activation_4/mul_1:z:0model/V/ov1/BiasAdd:output:0"model/V/activation_4/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471656*<
_output_shapes*
(:         @:         @: М
!model/V/ov2/MatMul/ReadVariableOpReadVariableOp*model_v_ov2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0в
model/V/ov2/MatMulMatMul'model/V/activation_4/IdentityN:output:0)model/V/ov2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/V/ov2/BiasAdd/ReadVariableOpReadVariableOp+model_v_ov2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/V/ov2/BiasAddBiasAddmodel/V/ov2/MatMul:product:0*model/V/ov2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/V/activation_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/V/activation_5/mulMul"model/V/activation_5/beta:output:0model/V/ov2/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/V/activation_5/SigmoidSigmoidmodel/V/activation_5/mul:z:0*
T0*'
_output_shapes
:         @У
model/V/activation_5/mul_1Mulmodel/V/ov2/BiasAdd:output:0 model/V/activation_5/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/V/activation_5/IdentityIdentitymodel/V/activation_5/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/V/activation_5/IdentityN	IdentityNmodel/V/activation_5/mul_1:z:0model/V/ov2/BiasAdd:output:0"model/V/activation_5/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471671*<
_output_shapes*
(:         @:         @: М
!model/U/ou1/MatMul/ReadVariableOpReadVariableOp*model_u_ou1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Щ
model/U/ou1/MatMulMatMulmodel/flatten/Reshape:output:0)model/U/ou1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/U/ou1/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou1/BiasAddBiasAddmodel/U/ou1/MatMul:product:0*model/U/ou1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/U/activation_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/U/activation_2/mulMul"model/U/activation_2/beta:output:0model/U/ou1/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/U/activation_2/SigmoidSigmoidmodel/U/activation_2/mul:z:0*
T0*'
_output_shapes
:         @У
model/U/activation_2/mul_1Mulmodel/U/ou1/BiasAdd:output:0 model/U/activation_2/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/U/activation_2/IdentityIdentitymodel/U/activation_2/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/U/activation_2/IdentityN	IdentityNmodel/U/activation_2/mul_1:z:0model/U/ou1/BiasAdd:output:0"model/U/activation_2/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471686*<
_output_shapes*
(:         @:         @: М
!model/U/ou2/MatMul/ReadVariableOpReadVariableOp*model_u_ou2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0в
model/U/ou2/MatMulMatMul'model/U/activation_2/IdentityN:output:0)model/U/ou2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"model/U/ou2/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou2/BiasAddBiasAddmodel/U/ou2/MatMul:product:0*model/U/ou2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @^
model/U/activation_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/U/activation_3/mulMul"model/U/activation_3/beta:output:0model/U/ou2/BiasAdd:output:0*
T0*'
_output_shapes
:         @w
model/U/activation_3/SigmoidSigmoidmodel/U/activation_3/mul:z:0*
T0*'
_output_shapes
:         @У
model/U/activation_3/mul_1Mulmodel/U/ou2/BiasAdd:output:0 model/U/activation_3/Sigmoid:y:0*
T0*'
_output_shapes
:         @{
model/U/activation_3/IdentityIdentitymodel/U/activation_3/mul_1:z:0*
T0*'
_output_shapes
:         @И
model/U/activation_3/IdentityN	IdentityNmodel/U/activation_3/mul_1:z:0model/U/ou2/BiasAdd:output:0"model/U/activation_3/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471701*<
_output_shapes*
(:         @:         @: Т
$model/output_p/MatMul/ReadVariableOpReadVariableOp-model_output_p_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0и
model/output_p/MatMulMatMul'model/P/activation_7/IdentityN:output:0,model/output_p/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Р
%model/output_p/BiasAdd/ReadVariableOpReadVariableOp.model_output_p_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
model/output_p/BiasAddBiasAddmodel/output_p/MatMul:product:0-model/output_p/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
$model/output_v/MatMul/ReadVariableOpReadVariableOp-model_output_v_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0и
model/output_v/MatMulMatMul'model/V/activation_5/IdentityN:output:0,model/output_v/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Р
%model/output_v/BiasAdd/ReadVariableOpReadVariableOp.model_output_v_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
model/output_v/BiasAddBiasAddmodel/output_v/MatMul:product:0-model/output_v/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
$model/output_u/MatMul/ReadVariableOpReadVariableOp-model_output_u_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0и
model/output_u/MatMulMatMul'model/U/activation_3/IdentityN:output:0,model/output_u/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Р
%model/output_u/BiasAdd/ReadVariableOpReadVariableOp.model_output_u_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
model/output_u/BiasAddBiasAddmodel/output_u/MatMul:product:0-model/output_u/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n
IdentityIdentitymodel/output_p/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         p

Identity_1Identitymodel/output_u/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         p

Identity_2Identitymodel/output_v/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp#^model/P/op1/BiasAdd/ReadVariableOp"^model/P/op1/MatMul/ReadVariableOp#^model/P/op2/BiasAdd/ReadVariableOp"^model/P/op2/MatMul/ReadVariableOp#^model/U/ou1/BiasAdd/ReadVariableOp"^model/U/ou1/MatMul/ReadVariableOp#^model/U/ou2/BiasAdd/ReadVariableOp"^model/U/ou2/MatMul/ReadVariableOp#^model/V/ov1/BiasAdd/ReadVariableOp"^model/V/ov1/MatMul/ReadVariableOp#^model/V/ov2/BiasAdd/ReadVariableOp"^model/V/ov2/MatMul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp'^model/dense_3/Tensordot/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp'^model/dense_4/Tensordot/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOp&^model/output_p/BiasAdd/ReadVariableOp%^model/output_p/MatMul/ReadVariableOp&^model/output_u/BiasAdd/ReadVariableOp%^model/output_u/MatMul/ReadVariableOp&^model/output_v/BiasAdd/ReadVariableOp%^model/output_v/MatMul/ReadVariableOpC^model/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpC^model/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         :         :                  :                  :                  :                  :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"model/P/op1/BiasAdd/ReadVariableOp"model/P/op1/BiasAdd/ReadVariableOp2F
!model/P/op1/MatMul/ReadVariableOp!model/P/op1/MatMul/ReadVariableOp2H
"model/P/op2/BiasAdd/ReadVariableOp"model/P/op2/BiasAdd/ReadVariableOp2F
!model/P/op2/MatMul/ReadVariableOp!model/P/op2/MatMul/ReadVariableOp2H
"model/U/ou1/BiasAdd/ReadVariableOp"model/U/ou1/BiasAdd/ReadVariableOp2F
!model/U/ou1/MatMul/ReadVariableOp!model/U/ou1/MatMul/ReadVariableOp2H
"model/U/ou2/BiasAdd/ReadVariableOp"model/U/ou2/BiasAdd/ReadVariableOp2F
!model/U/ou2/MatMul/ReadVariableOp!model/U/ou2/MatMul/ReadVariableOp2H
"model/V/ov1/BiasAdd/ReadVariableOp"model/V/ov1/BiasAdd/ReadVariableOp2F
!model/V/ov1/MatMul/ReadVariableOp!model/V/ov1/MatMul/ReadVariableOp2H
"model/V/ov2/BiasAdd/ReadVariableOp"model/V/ov2/BiasAdd/ReadVariableOp2F
!model/V/ov2/MatMul/ReadVariableOp!model/V/ov2/MatMul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2P
&model/dense_3/Tensordot/ReadVariableOp&model/dense_3/Tensordot/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2P
&model/dense_4/Tensordot/ReadVariableOp&model/dense_4/Tensordot/ReadVariableOp2А
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2Ф
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2N
%model/output_p/BiasAdd/ReadVariableOp%model/output_p/BiasAdd/ReadVariableOp2L
$model/output_p/MatMul/ReadVariableOp$model/output_p/MatMul/ReadVariableOp2N
%model/output_u/BiasAdd/ReadVariableOp%model/output_u/BiasAdd/ReadVariableOp2L
$model/output_u/MatMul/ReadVariableOp$model/output_u/MatMul/ReadVariableOp2N
%model/output_v/BiasAdd/ReadVariableOp%model/output_v/BiasAdd/ReadVariableOp2L
$model/output_v/MatMul/ReadVariableOp$model/output_v/MatMul/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:(.$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:P L
'
_output_shapes
:         
!
_user_specified_name	X_layer
║
J
.__inference_activation_1_layer_call_fn_7474017

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_7471829d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
И}
┴
B__inference_model_layer_call_and_return_conditional_losses_7472906
x_layer
y_layer
	xbc_layer
	ybc_layer
	ubc_layer
	vbc_layer
	pbc_layer!
dense_2_7472771:@
dense_2_7472773:@
dense_7472776:@
dense_7472778:@0
spatial_transformation_7472782:@,
spatial_transformation_7472784:@0
spatial_transformation_7472786:@@,
spatial_transformation_7472788:@!
dense_1_7472791:@@
dense_1_7472793:@!
dense_3_7472796:@@
dense_3_7472798:@2
multi_head_attention_7472837:@@.
multi_head_attention_7472839:@2
multi_head_attention_7472841:@@.
multi_head_attention_7472843:@2
multi_head_attention_7472845:@@.
multi_head_attention_7472847:@2
multi_head_attention_7472849:@@*
multi_head_attention_7472851:@!
dense_4_7472855:@@
dense_4_7472857:@
	p_7472861:@@
	p_7472863:@
	p_7472865:@@
	p_7472867:@
	v_7472870:@@
	v_7472872:@
	v_7472874:@@
	v_7472876:@
	u_7472879:@@
	u_7472881:@
	u_7472883:@@
	u_7472885:@"
output_p_7472888:@
output_p_7472890:"
output_v_7472893:@
output_v_7472895:"
output_u_7472898:@
output_u_7472900:
identity

identity_1

identity_2ИвP/StatefulPartitionedCallвU/StatefulPartitionedCallвV/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallв,multi_head_attention/StatefulPartitionedCallв output_p/StatefulPartitionedCallв output_u/StatefulPartitionedCallв output_v/StatefulPartitionedCallв.spatial_transformation/StatefulPartitionedCall╥
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7472314╥
rescaling_3/PartitionedCallPartitionedCall	ybc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7472324┐
rescaling/PartitionedCallPartitionedCallx_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_7472333├
rescaling_1/PartitionedCallPartitionedCally_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7472343ю
concatenate_2/PartitionedCallPartitionedCall	ubc_layer	vbc_layer	pbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7472352Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7472360Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_7472368Я
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_2_7472771dense_2_7472773*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7472408Ч
dense/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_7472776dense_7472778*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7472452▄
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_7472470Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_7472782spatial_transformation_7472784spatial_transformation_7472786spatial_transformation_7472788*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848Я
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7472791dense_1_7472793*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7472519б
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7472796dense_3_7472798*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_7472563ё
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0multi_head_attention_7472837multi_head_attention_7472839multi_head_attention_7472841multi_head_attention_7472843multi_head_attention_7472845multi_head_attention_7472847multi_head_attention_7472849multi_head_attention_7472851*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472836Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_7472627М
dense_4/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4_7472855dense_4_7472857*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_7472667▄
flatten/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_7472678О
P/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	p_7472861	p_7472863	p_7472865	p_7472867*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_P_layer_call_and_return_conditional_losses_7472244О
V/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	v_7472870	v_7472872	v_7472874	v_7472876*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_V_layer_call_and_return_conditional_losses_7472112О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_7472879	u_7472881	u_7472883	u_7472885*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_7471980Т
 output_p/StatefulPartitionedCallStatefulPartitionedCall"P/StatefulPartitionedCall:output:0output_p_7472888output_p_7472890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_p_layer_call_and_return_conditional_losses_7472716Т
 output_v/StatefulPartitionedCallStatefulPartitionedCall"V/StatefulPartitionedCall:output:0output_v_7472893output_v_7472895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_v_layer_call_and_return_conditional_losses_7472731Т
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_7472898output_u_7472900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_7472746x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         z

Identity_1Identity)output_v/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         z

Identity_2Identity)output_p/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp^P/StatefulPartitionedCall^U/StatefulPartitionedCall^V/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall!^output_p/StatefulPartitionedCall!^output_u/StatefulPartitionedCall!^output_v/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         :         :                  :                  :                  :                  :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 26
P/StatefulPartitionedCallP/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall26
V/StatefulPartitionedCallV/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2D
 output_p/StatefulPartitionedCall output_p/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2D
 output_v/StatefulPartitionedCall output_v/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:'.#
!
_user_specified_name	7472900:'-#
!
_user_specified_name	7472898:',#
!
_user_specified_name	7472895:'+#
!
_user_specified_name	7472893:'*#
!
_user_specified_name	7472890:')#
!
_user_specified_name	7472888:'(#
!
_user_specified_name	7472885:''#
!
_user_specified_name	7472883:'&#
!
_user_specified_name	7472881:'%#
!
_user_specified_name	7472879:'$#
!
_user_specified_name	7472876:'##
!
_user_specified_name	7472874:'"#
!
_user_specified_name	7472872:'!#
!
_user_specified_name	7472870:' #
!
_user_specified_name	7472867:'#
!
_user_specified_name	7472865:'#
!
_user_specified_name	7472863:'#
!
_user_specified_name	7472861:'#
!
_user_specified_name	7472857:'#
!
_user_specified_name	7472855:'#
!
_user_specified_name	7472851:'#
!
_user_specified_name	7472849:'#
!
_user_specified_name	7472847:'#
!
_user_specified_name	7472845:'#
!
_user_specified_name	7472843:'#
!
_user_specified_name	7472841:'#
!
_user_specified_name	7472839:'#
!
_user_specified_name	7472837:'#
!
_user_specified_name	7472798:'#
!
_user_specified_name	7472796:'#
!
_user_specified_name	7472793:'#
!
_user_specified_name	7472791:'#
!
_user_specified_name	7472788:'#
!
_user_specified_name	7472786:'#
!
_user_specified_name	7472784:'#
!
_user_specified_name	7472782:'
#
!
_user_specified_name	7472778:'	#
!
_user_specified_name	7472776:'#
!
_user_specified_name	7472773:'#
!
_user_specified_name	7472771:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:P L
'
_output_shapes
:         
!
_user_specified_name	X_layer
▄
└
$__inference_internal_grad_fn_7475342
result_grads_0
result_grads_1
result_grads_2!
mul_model_v_activation_5_beta
mul_model_v_ov2_biasadd
identity

identity_1Е
mulMulmul_model_v_activation_5_betamul_model_v_ov2_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_v_activation_5_betamul_model_v_ov2_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_v_ov2_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/V/ov2/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/V/activation_5/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╒
Я
$__inference_internal_grad_fn_7474910
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
╜.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472604	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИв#attention_output/add/ReadVariableOpв-attention_output/einsum/Einsum/ReadVariableOpвkey/add/ReadVariableOpв key/einsum/Einsum/ReadVariableOpвquery/add/ReadVariableOpв"query/einsum/Einsum/ReadVariableOpвvalue/add/ReadVariableOpв"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0░
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:         @*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0│
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╣
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"                  @*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"                  @J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:         @Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"                  *
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"                  z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"                  й
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:         @*
equationacbe,aecd->abcdи
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0╒
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:         @*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0н
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:         @┤
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:         @:                  @:                  @: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :                  @

_user_specified_namekey:[W
4
_output_shapes"
 :                  @

_user_specified_namevalue:R N
+
_output_shapes
:         @

_user_specified_namequery
╒
Я
$__inference_internal_grad_fn_7474937
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
╞
Ю
$__inference_internal_grad_fn_7474640
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
┌
g
I__inference_activation_4_layer_call_and_return_conditional_losses_7472064

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472055*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_6_layer_call_and_return_conditional_losses_7474215

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474206*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
є	
ё
@__inference_ov2_layer_call_and_return_conditional_losses_7474160

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474397
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
┌
g
I__inference_activation_2_layer_call_and_return_conditional_losses_7474067

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474058*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
└
$__inference_internal_grad_fn_7475315
result_grads_0
result_grads_1
result_grads_2!
mul_model_v_activation_4_beta
mul_model_v_ov1_biasadd
identity

identity_1Е
mulMulmul_model_v_activation_4_betamul_model_v_ov1_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_v_activation_4_betamul_model_v_ov1_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_v_ov1_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/V/ov1/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/V/activation_4/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╞
b
F__inference_rescaling_layer_call_and_return_conditional_losses_7472333

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *лкк╛U
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:         Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є	
ё
@__inference_ou1_layer_call_and_return_conditional_losses_7471914

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
I
-__inference_rescaling_3_layer_call_fn_7473410

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7472324m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ы
Т
%__inference_op1_layer_call_fn_7474187

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_op1_layer_call_and_return_conditional_losses_7472178o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7474183:'#
!
_user_specified_name	7474181:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╝
`
D__inference_flatten_layer_call_and_return_conditional_losses_7472678

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         @X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ы
Ю
$__inference_internal_grad_fn_7474748
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1g
mulMulmul_beta
mul_inputs^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:SO
+
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
г
Ф
'__inference_dense_layer_call_fn_7473487

inputs
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7472452|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473483:'#
!
_user_specified_name	7473481:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
═
j
@__inference_add_layer_call_and_return_conditional_losses_7472627

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:         @S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:         @:         @:SO
+
_output_shapes
:         @
 
_user_specified_nameinputs:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Д#
¤
D__inference_dense_2_layer_call_and_return_conditional_losses_7472408

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472399*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
з
Ц
)__inference_dense_2_layer_call_fn_7473535

inputs
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7472408|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473531:'#
!
_user_specified_name	7473529:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474424
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7474012

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
╔
#__inference_U_layer_call_fn_7471993
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_7471964o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7471989:'#
!
_user_specified_name	7471987:'#
!
_user_specified_name	7471985:'#
!
_user_specified_name	7471983:R N
'
_output_shapes
:         @
#
_user_specified_name	ou1_input
шо
о$
 __inference__traced_save_7475575
file_prefix5
#read_disablecopyonread_dense_kernel:@1
#read_1_disablecopyonread_dense_bias:@9
'read_2_disablecopyonread_dense_2_kernel:@3
%read_3_disablecopyonread_dense_2_bias:@9
'read_4_disablecopyonread_dense_1_kernel:@@3
%read_5_disablecopyonread_dense_1_bias:@9
'read_6_disablecopyonread_dense_3_kernel:@@3
%read_7_disablecopyonread_dense_3_bias:@9
'read_8_disablecopyonread_dense_4_kernel:@@3
%read_9_disablecopyonread_dense_4_bias:@;
)read_10_disablecopyonread_output_u_kernel:@5
'read_11_disablecopyonread_output_u_bias:;
)read_12_disablecopyonread_output_v_kernel:@5
'read_13_disablecopyonread_output_v_bias:;
)read_14_disablecopyonread_output_p_kernel:@5
'read_15_disablecopyonread_output_p_bias:A
/read_16_disablecopyonread_spatial_layer1_kernel:@;
-read_17_disablecopyonread_spatial_layer1_bias:@A
/read_18_disablecopyonread_spatial_layer2_kernel:@@;
-read_19_disablecopyonread_spatial_layer2_bias:@Q
;read_20_disablecopyonread_multi_head_attention_query_kernel:@@K
9read_21_disablecopyonread_multi_head_attention_query_bias:@O
9read_22_disablecopyonread_multi_head_attention_key_kernel:@@I
7read_23_disablecopyonread_multi_head_attention_key_bias:@Q
;read_24_disablecopyonread_multi_head_attention_value_kernel:@@K
9read_25_disablecopyonread_multi_head_attention_value_bias:@\
Fread_26_disablecopyonread_multi_head_attention_attention_output_kernel:@@R
Dread_27_disablecopyonread_multi_head_attention_attention_output_bias:@6
$read_28_disablecopyonread_ou1_kernel:@@0
"read_29_disablecopyonread_ou1_bias:@6
$read_30_disablecopyonread_ou2_kernel:@@0
"read_31_disablecopyonread_ou2_bias:@6
$read_32_disablecopyonread_ov1_kernel:@@0
"read_33_disablecopyonread_ov1_bias:@6
$read_34_disablecopyonread_ov2_kernel:@@0
"read_35_disablecopyonread_ov2_bias:@6
$read_36_disablecopyonread_op1_kernel:@@0
"read_37_disablecopyonread_op1_bias:@6
$read_38_disablecopyonread_op2_kernel:@@0
"read_39_disablecopyonread_op2_bias:@
savev2_const
identity_81ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Я
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:@w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Я
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 з
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 з
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_1_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 б
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_1_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 з
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 б
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 з
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 б
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_output_u_kernel"/device:CPU:0*
_output_shapes
 л
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_output_u_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_output_u_bias"/device:CPU:0*
_output_shapes
 е
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_output_u_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_output_v_kernel"/device:CPU:0*
_output_shapes
 л
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_output_v_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_output_v_bias"/device:CPU:0*
_output_shapes
 е
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_output_v_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_output_p_kernel"/device:CPU:0*
_output_shapes
 л
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_output_p_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_output_p_bias"/device:CPU:0*
_output_shapes
 е
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_output_p_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_spatial_layer1_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_spatial_layer1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_spatial_layer1_bias"/device:CPU:0*
_output_shapes
 л
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_spatial_layer1_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_spatial_layer2_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_spatial_layer2_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@@В
Read_19/DisableCopyOnReadDisableCopyOnRead-read_19_disablecopyonread_spatial_layer2_bias"/device:CPU:0*
_output_shapes
 л
Read_19/ReadVariableOpReadVariableOp-read_19_disablecopyonread_spatial_layer2_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_20/DisableCopyOnReadDisableCopyOnRead;read_20_disablecopyonread_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 ┴
Read_20/ReadVariableOpReadVariableOp;read_20_disablecopyonread_multi_head_attention_query_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_21/DisableCopyOnReadDisableCopyOnRead9read_21_disablecopyonread_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 ╗
Read_21/ReadVariableOpReadVariableOp9read_21_disablecopyonread_multi_head_attention_query_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@О
Read_22/DisableCopyOnReadDisableCopyOnRead9read_22_disablecopyonread_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_22/ReadVariableOpReadVariableOp9read_22_disablecopyonread_multi_head_attention_key_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@М
Read_23/DisableCopyOnReadDisableCopyOnRead7read_23_disablecopyonread_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 ╣
Read_23/ReadVariableOpReadVariableOp7read_23_disablecopyonread_multi_head_attention_key_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:@Р
Read_24/DisableCopyOnReadDisableCopyOnRead;read_24_disablecopyonread_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 ┴
Read_24/ReadVariableOpReadVariableOp;read_24_disablecopyonread_multi_head_attention_value_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_25/DisableCopyOnReadDisableCopyOnRead9read_25_disablecopyonread_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 ╗
Read_25/ReadVariableOpReadVariableOp9read_25_disablecopyonread_multi_head_attention_value_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_26/DisableCopyOnReadDisableCopyOnReadFread_26_disablecopyonread_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 ╠
Read_26/ReadVariableOpReadVariableOpFread_26_disablecopyonread_multi_head_attention_attention_output_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Щ
Read_27/DisableCopyOnReadDisableCopyOnReadDread_27_disablecopyonread_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 ┬
Read_27/ReadVariableOpReadVariableOpDread_27_disablecopyonread_multi_head_attention_attention_output_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_28/DisableCopyOnReadDisableCopyOnRead$read_28_disablecopyonread_ou1_kernel"/device:CPU:0*
_output_shapes
 ж
Read_28/ReadVariableOpReadVariableOp$read_28_disablecopyonread_ou1_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_29/DisableCopyOnReadDisableCopyOnRead"read_29_disablecopyonread_ou1_bias"/device:CPU:0*
_output_shapes
 а
Read_29/ReadVariableOpReadVariableOp"read_29_disablecopyonread_ou1_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_30/DisableCopyOnReadDisableCopyOnRead$read_30_disablecopyonread_ou2_kernel"/device:CPU:0*
_output_shapes
 ж
Read_30/ReadVariableOpReadVariableOp$read_30_disablecopyonread_ou2_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_31/DisableCopyOnReadDisableCopyOnRead"read_31_disablecopyonread_ou2_bias"/device:CPU:0*
_output_shapes
 а
Read_31/ReadVariableOpReadVariableOp"read_31_disablecopyonread_ou2_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_32/DisableCopyOnReadDisableCopyOnRead$read_32_disablecopyonread_ov1_kernel"/device:CPU:0*
_output_shapes
 ж
Read_32/ReadVariableOpReadVariableOp$read_32_disablecopyonread_ov1_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_33/DisableCopyOnReadDisableCopyOnRead"read_33_disablecopyonread_ov1_bias"/device:CPU:0*
_output_shapes
 а
Read_33/ReadVariableOpReadVariableOp"read_33_disablecopyonread_ov1_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_34/DisableCopyOnReadDisableCopyOnRead$read_34_disablecopyonread_ov2_kernel"/device:CPU:0*
_output_shapes
 ж
Read_34/ReadVariableOpReadVariableOp$read_34_disablecopyonread_ov2_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_35/DisableCopyOnReadDisableCopyOnRead"read_35_disablecopyonread_ov2_bias"/device:CPU:0*
_output_shapes
 а
Read_35/ReadVariableOpReadVariableOp"read_35_disablecopyonread_ov2_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_36/DisableCopyOnReadDisableCopyOnRead$read_36_disablecopyonread_op1_kernel"/device:CPU:0*
_output_shapes
 ж
Read_36/ReadVariableOpReadVariableOp$read_36_disablecopyonread_op1_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_37/DisableCopyOnReadDisableCopyOnRead"read_37_disablecopyonread_op1_bias"/device:CPU:0*
_output_shapes
 а
Read_37/ReadVariableOpReadVariableOp"read_37_disablecopyonread_op1_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_38/DisableCopyOnReadDisableCopyOnRead$read_38_disablecopyonread_op2_kernel"/device:CPU:0*
_output_shapes
 ж
Read_38/ReadVariableOpReadVariableOp$read_38_disablecopyonread_op2_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_39/DisableCopyOnReadDisableCopyOnRead"read_39_disablecopyonread_op2_bias"/device:CPU:0*
_output_shapes
 а
Read_39/ReadVariableOpReadVariableOp"read_39_disablecopyonread_op2_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:@╘
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*¤
valueєBЁ)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ы
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *7
dtypes-
+2)Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_80Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_81IdentityIdentity_80:output:0^NoOp*
T0*
_output_shapes
: ч
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_81Identity_81:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=)9

_output_shapes
: 

_user_specified_nameConst:(($
"
_user_specified_name
op2/bias:*'&
$
_user_specified_name
op2/kernel:(&$
"
_user_specified_name
op1/bias:*%&
$
_user_specified_name
op1/kernel:($$
"
_user_specified_name
ov2/bias:*#&
$
_user_specified_name
ov2/kernel:("$
"
_user_specified_name
ov1/bias:*!&
$
_user_specified_name
ov1/kernel:( $
"
_user_specified_name
ou2/bias:*&
$
_user_specified_name
ou2/kernel:($
"
_user_specified_name
ou1/bias:*&
$
_user_specified_name
ou1/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:3/
-
_user_specified_namespatial_layer2/bias:51
/
_user_specified_namespatial_layer2/kernel:3/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:-)
'
_user_specified_nameoutput_p/bias:/+
)
_user_specified_nameoutput_p/kernel:-)
'
_user_specified_nameoutput_v/bias:/+
)
_user_specified_nameoutput_v/kernel:-)
'
_user_specified_nameoutput_u/bias:/+
)
_user_specified_nameoutput_u/kernel:,
(
&
_user_specified_namedense_4/bias:.	*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
°	
Ў
E__inference_output_p_layer_call_and_return_conditional_losses_7472716

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
Р
>__inference_V_layer_call_and_return_conditional_losses_7472096
	ov1_input
ov1_7472047:@@
ov1_7472049:@
ov2_7472076:@@
ov2_7472078:@
identityИвov1/StatefulPartitionedCallвov2/StatefulPartitionedCallх
ov1/StatefulPartitionedCallStatefulPartitionedCall	ov1_inputov1_7472047ov1_7472049*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov1_layer_call_and_return_conditional_losses_7472046т
activation_4/PartitionedCallPartitionedCall$ov1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_7472064Б
ov2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ov2_7472076ov2_7472078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ov2_layer_call_and_return_conditional_losses_7472075т
activation_5/PartitionedCallPartitionedCall$ov2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_7472093t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^ov1/StatefulPartitionedCall^ov2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
ov1/StatefulPartitionedCallov1/StatefulPartitionedCall2:
ov2/StatefulPartitionedCallov2/StatefulPartitionedCall:'#
!
_user_specified_name	7472078:'#
!
_user_specified_name	7472076:'#
!
_user_specified_name	7472049:'#
!
_user_specified_name	7472047:R N
'
_output_shapes
:         @
#
_user_specified_name	ov1_input
Ц"
¤
D__inference_dense_4_layer_call_and_return_conditional_losses_7473848

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
mulMulbeta:output:0BiasAdd:output:0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @a
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @┼
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473839*D
_output_shapes2
0:         @:         @: g

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
є	
ё
@__inference_op2_layer_call_and_return_conditional_losses_7474234

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_2_layer_call_and_return_conditional_losses_7471932

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471923*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°	
Ў
E__inference_output_v_layer_call_and_return_conditional_losses_7473897

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╒
Я
$__inference_internal_grad_fn_7474856
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
╒
Я
$__inference_internal_grad_fn_7475045
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
И}
┴
B__inference_model_layer_call_and_return_conditional_losses_7472755
x_layer
y_layer
	xbc_layer
	ybc_layer
	ubc_layer
	vbc_layer
	pbc_layer!
dense_2_7472409:@
dense_2_7472411:@
dense_7472453:@
dense_7472455:@0
spatial_transformation_7472472:@,
spatial_transformation_7472474:@0
spatial_transformation_7472476:@@,
spatial_transformation_7472478:@!
dense_1_7472520:@@
dense_1_7472522:@!
dense_3_7472564:@@
dense_3_7472566:@2
multi_head_attention_7472605:@@.
multi_head_attention_7472607:@2
multi_head_attention_7472609:@@.
multi_head_attention_7472611:@2
multi_head_attention_7472613:@@.
multi_head_attention_7472615:@2
multi_head_attention_7472617:@@*
multi_head_attention_7472619:@!
dense_4_7472668:@@
dense_4_7472670:@
	p_7472680:@@
	p_7472682:@
	p_7472684:@@
	p_7472686:@
	v_7472689:@@
	v_7472691:@
	v_7472693:@@
	v_7472695:@
	u_7472698:@@
	u_7472700:@
	u_7472702:@@
	u_7472704:@"
output_p_7472717:@
output_p_7472719:"
output_v_7472732:@
output_v_7472734:"
output_u_7472747:@
output_u_7472749:
identity

identity_1

identity_2ИвP/StatefulPartitionedCallвU/StatefulPartitionedCallвV/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallв,multi_head_attention/StatefulPartitionedCallв output_p/StatefulPartitionedCallв output_u/StatefulPartitionedCallв output_v/StatefulPartitionedCallв.spatial_transformation/StatefulPartitionedCall╥
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7472314╥
rescaling_3/PartitionedCallPartitionedCall	ybc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7472324┐
rescaling/PartitionedCallPartitionedCallx_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_7472333├
rescaling_1/PartitionedCallPartitionedCally_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7472343ю
concatenate_2/PartitionedCallPartitionedCall	ubc_layer	vbc_layer	pbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7472352Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7472360Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_7472368Я
dense_2/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_2_7472409dense_2_7472411*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7472408Ч
dense/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_7472453dense_7472455*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7472452▄
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_7472470Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_7472472spatial_transformation_7472474spatial_transformation_7472476spatial_transformation_7472478*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832Я
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7472520dense_1_7472522*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7472519б
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7472564dense_3_7472566*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_7472563ё
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0multi_head_attention_7472605multi_head_attention_7472607multi_head_attention_7472609multi_head_attention_7472611multi_head_attention_7472613multi_head_attention_7472615multi_head_attention_7472617multi_head_attention_7472619*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7472604Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_7472627М
dense_4/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4_7472668dense_4_7472670*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_7472667▄
flatten/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_7472678О
P/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	p_7472680	p_7472682	p_7472684	p_7472686*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_P_layer_call_and_return_conditional_losses_7472228О
V/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	v_7472689	v_7472691	v_7472693	v_7472695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_V_layer_call_and_return_conditional_losses_7472096О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_7472698	u_7472700	u_7472702	u_7472704*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_7471964Т
 output_p/StatefulPartitionedCallStatefulPartitionedCall"P/StatefulPartitionedCall:output:0output_p_7472717output_p_7472719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_p_layer_call_and_return_conditional_losses_7472716Т
 output_v/StatefulPartitionedCallStatefulPartitionedCall"V/StatefulPartitionedCall:output:0output_v_7472732output_v_7472734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_v_layer_call_and_return_conditional_losses_7472731Т
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_7472747output_u_7472749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_7472746x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         z

Identity_1Identity)output_v/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         z

Identity_2Identity)output_p/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp^P/StatefulPartitionedCall^U/StatefulPartitionedCall^V/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall!^output_p/StatefulPartitionedCall!^output_u/StatefulPartitionedCall!^output_v/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         :         :                  :                  :                  :                  :                  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 26
P/StatefulPartitionedCallP/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall26
V/StatefulPartitionedCallV/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2D
 output_p/StatefulPartitionedCall output_p/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2D
 output_v/StatefulPartitionedCall output_v/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:'.#
!
_user_specified_name	7472749:'-#
!
_user_specified_name	7472747:',#
!
_user_specified_name	7472734:'+#
!
_user_specified_name	7472732:'*#
!
_user_specified_name	7472719:')#
!
_user_specified_name	7472717:'(#
!
_user_specified_name	7472704:''#
!
_user_specified_name	7472702:'&#
!
_user_specified_name	7472700:'%#
!
_user_specified_name	7472698:'$#
!
_user_specified_name	7472695:'##
!
_user_specified_name	7472693:'"#
!
_user_specified_name	7472691:'!#
!
_user_specified_name	7472689:' #
!
_user_specified_name	7472686:'#
!
_user_specified_name	7472684:'#
!
_user_specified_name	7472682:'#
!
_user_specified_name	7472680:'#
!
_user_specified_name	7472670:'#
!
_user_specified_name	7472668:'#
!
_user_specified_name	7472619:'#
!
_user_specified_name	7472617:'#
!
_user_specified_name	7472615:'#
!
_user_specified_name	7472613:'#
!
_user_specified_name	7472611:'#
!
_user_specified_name	7472609:'#
!
_user_specified_name	7472607:'#
!
_user_specified_name	7472605:'#
!
_user_specified_name	7472566:'#
!
_user_specified_name	7472564:'#
!
_user_specified_name	7472522:'#
!
_user_specified_name	7472520:'#
!
_user_specified_name	7472478:'#
!
_user_specified_name	7472476:'#
!
_user_specified_name	7472474:'#
!
_user_specified_name	7472472:'
#
!
_user_specified_name	7472455:'	#
!
_user_specified_name	7472453:'#
!
_user_specified_name	7472411:'#
!
_user_specified_name	7472409:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Pbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Vbc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ubc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Ybc_layer:_[
4
_output_shapes"
 :                  
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:         
!
_user_specified_name	Y_layer:P L
'
_output_shapes
:         
!
_user_specified_name	X_layer
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7471811

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
є	
ё
@__inference_ov1_layer_call_and_return_conditional_losses_7474123

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
є	
ё
@__inference_ou2_layer_call_and_return_conditional_losses_7474086

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°	
Ў
E__inference_output_p_layer_call_and_return_conditional_losses_7473916

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
╔
#__inference_P_layer_call_fn_7472270
	op1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	op1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_P_layer_call_and_return_conditional_losses_7472244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7472266:'#
!
_user_specified_name	7472264:'#
!
_user_specified_name	7472262:'#
!
_user_specified_name	7472260:R N
'
_output_shapes
:         @
#
_user_specified_name	op1_input
є	
ё
@__inference_op1_layer_call_and_return_conditional_losses_7474197

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
э

`
D__inference_reshape_layer_call_and_return_conditional_losses_7472470

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
         П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Н
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7472343

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ┐N
mulMulinputsCast:y:0*
T0*'
_output_shapes
:         Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
С
Э
0__inference_spatial_layer1_layer_call_fn_7473925

inputs
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7471762s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7473921:'#
!
_user_specified_name	7473919:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
В#
√
B__inference_dense_layer_call_and_return_conditional_losses_7473526

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7473517*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╣
r
H__inference_concatenate_layer_call_and_return_conditional_losses_7472368

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7473955

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
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
:         К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         @c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╞
Є
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848
spatial_layer1_input(
spatial_layer1_7471835:@$
spatial_layer1_7471837:@(
spatial_layer2_7471841:@@$
spatial_layer2_7471843:@
identityИв&spatial_layer1/StatefulPartitionedCallв&spatial_layer2/StatefulPartitionedCallа
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_7471835spatial_layer1_7471837*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7471762э
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_7471780п
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_7471841spatial_layer2_7471843*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7471811ё
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_7471829x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	7471843:'#
!
_user_specified_name	7471841:'#
!
_user_specified_name	7471837:'#
!
_user_specified_name	7471835:a ]
+
_output_shapes
:         
.
_user_specified_namespatial_layer1_input
Д#
¤
D__inference_dense_1_layer_call_and_return_conditional_losses_7472519

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
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
value	B : ┐
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
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :                  @К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :                  @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :                  @I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :                  @╫
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7472510*V
_output_shapesD
B:                  @:                  @: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :                  @V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474478
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
Ы
Ю
$__inference_internal_grad_fn_7474721
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1g
mulMulmul_beta
mul_inputs^result_grads_0*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:         @X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:         @R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:         @^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:         @Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:         @X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:         @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: ]
mul_7Mulresult_grads_0	mul_3:z:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:         @:         @: : :         @:SO
+
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
°	
Ў
E__inference_output_u_layer_call_and_return_conditional_losses_7473878

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
н
Y
-__inference_concatenate_layer_call_fn_7473425
inputs_0
inputs_1
identity├
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_7472368`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
▄
└
$__inference_internal_grad_fn_7475261
result_grads_0
result_grads_1
result_grads_2!
mul_model_p_activation_6_beta
mul_model_p_op1_biasadd
identity

identity_1Е
mulMulmul_model_p_activation_6_betamul_model_p_op1_biasadd^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @v
mul_1Mulmul_model_p_activation_6_betamul_model_p_op1_biasadd*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @[
SquareSquaremul_model_p_op1_biasadd*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:\X
'
_output_shapes
:         @
-
_user_specified_namemodel/P/op1/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/P/activation_6/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
є	
ё
@__inference_op1_layer_call_and_return_conditional_losses_7472178

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
╔
#__inference_V_layer_call_fn_7472125
	ov1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCall	ov1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_V_layer_call_and_return_conditional_losses_7472096o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	7472121:'#
!
_user_specified_name	7472119:'#
!
_user_specified_name	7472117:'#
!
_user_specified_name	7472115:R N
'
_output_shapes
:         @
#
_user_specified_name	ov1_input
И
Р
>__inference_U_layer_call_and_return_conditional_losses_7471980
	ou1_input
ou1_7471967:@@
ou1_7471969:@
ou2_7471973:@@
ou2_7471975:@
identityИвou1/StatefulPartitionedCallвou2/StatefulPartitionedCallх
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_7471967ou1_7471969*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_7471914т
activation_2/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_7471932Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0ou2_7471973ou2_7471975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_7471943т
activation_3/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_7471961t
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	7471975:'#
!
_user_specified_name	7471973:'#
!
_user_specified_name	7471969:'#
!
_user_specified_name	7471967:R N
'
_output_shapes
:         @
#
_user_specified_name	ou1_input
№
e
G__inference_activation_layer_call_and_return_conditional_losses_7471780

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
mulMulbeta:output:0inputs*
T0*+
_output_shapes
:         @Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:         @W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:         @U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:         @╗
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7471771*D
_output_shapes2
0:         @:         @: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
┌
g
I__inference_activation_3_layer_call_and_return_conditional_losses_7474104

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?S
mulMulbeta:output:0inputs*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @│
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-7474095*<
_output_shapes*
(:         @:         @: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╞
Ю
$__inference_internal_grad_fn_7474532
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1c
mulMulmul_beta
mul_inputs^result_grads_0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:         @T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:         @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:         @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:         @T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:         @N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:         @Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:         @V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:         @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:         @V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:         @Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:         @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         @:         @: : :         @:OK
'
_output_shapes
:         @
 
_user_specified_nameinputs:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:         @
(
_user_specified_nameresult_grads_0
╒
Я
$__inference_internal_grad_fn_7475018
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1q
mulMulmul_betamul_biasadd^result_grads_0*
T0*4
_output_shapes"
 :                  @Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :                  @b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :                  @N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :                  @N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :                  @a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :                  @\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :                  @g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :                  @c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :                  @a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :                  @Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: f
mul_7Mulresult_grads_0	mul_3:z:0*
T0*4
_output_shapes"
 :                  @^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :                  @E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:                  @:                  @: : :                  @:]Y
4
_output_shapes"
 :                  @
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :                  @
(
_user_specified_nameresult_grads_0
к
J
.__inference_activation_6_layer_call_fn_7474202

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_7472196`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
и
E
)__inference_reshape_layer_call_fn_7473465

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_7472470d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┴
t
H__inference_concatenate_layer_call_and_return_conditional_losses_7473432
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
г╢
╬
#__inference__traced_restore_7475704
file_prefix/
assignvariableop_dense_kernel:@+
assignvariableop_1_dense_bias:@3
!assignvariableop_2_dense_2_kernel:@-
assignvariableop_3_dense_2_bias:@3
!assignvariableop_4_dense_1_kernel:@@-
assignvariableop_5_dense_1_bias:@3
!assignvariableop_6_dense_3_kernel:@@-
assignvariableop_7_dense_3_bias:@3
!assignvariableop_8_dense_4_kernel:@@-
assignvariableop_9_dense_4_bias:@5
#assignvariableop_10_output_u_kernel:@/
!assignvariableop_11_output_u_bias:5
#assignvariableop_12_output_v_kernel:@/
!assignvariableop_13_output_v_bias:5
#assignvariableop_14_output_p_kernel:@/
!assignvariableop_15_output_p_bias:;
)assignvariableop_16_spatial_layer1_kernel:@5
'assignvariableop_17_spatial_layer1_bias:@;
)assignvariableop_18_spatial_layer2_kernel:@@5
'assignvariableop_19_spatial_layer2_bias:@K
5assignvariableop_20_multi_head_attention_query_kernel:@@E
3assignvariableop_21_multi_head_attention_query_bias:@I
3assignvariableop_22_multi_head_attention_key_kernel:@@C
1assignvariableop_23_multi_head_attention_key_bias:@K
5assignvariableop_24_multi_head_attention_value_kernel:@@E
3assignvariableop_25_multi_head_attention_value_bias:@V
@assignvariableop_26_multi_head_attention_attention_output_kernel:@@L
>assignvariableop_27_multi_head_attention_attention_output_bias:@0
assignvariableop_28_ou1_kernel:@@*
assignvariableop_29_ou1_bias:@0
assignvariableop_30_ou2_kernel:@@*
assignvariableop_31_ou2_bias:@0
assignvariableop_32_ov1_kernel:@@*
assignvariableop_33_ov1_bias:@0
assignvariableop_34_ov2_kernel:@@*
assignvariableop_35_ov2_bias:@0
assignvariableop_36_op1_kernel:@@*
assignvariableop_37_op1_bias:@0
assignvariableop_38_op2_kernel:@@*
assignvariableop_39_op2_bias:@
identity_41ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╫
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*¤
valueєBЁ)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_10AssignVariableOp#assignvariableop_10_output_u_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_output_u_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_12AssignVariableOp#assignvariableop_12_output_v_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_13AssignVariableOp!assignvariableop_13_output_v_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_14AssignVariableOp#assignvariableop_14_output_p_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_output_p_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_spatial_layer1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_17AssignVariableOp'assignvariableop_17_spatial_layer1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_18AssignVariableOp)assignvariableop_18_spatial_layer2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_19AssignVariableOp'assignvariableop_19_spatial_layer2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_20AssignVariableOp5assignvariableop_20_multi_head_attention_query_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_21AssignVariableOp3assignvariableop_21_multi_head_attention_query_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_22AssignVariableOp3assignvariableop_22_multi_head_attention_key_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_23AssignVariableOp1assignvariableop_23_multi_head_attention_key_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_24AssignVariableOp5assignvariableop_24_multi_head_attention_value_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_25AssignVariableOp3assignvariableop_25_multi_head_attention_value_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_26AssignVariableOp@assignvariableop_26_multi_head_attention_attention_output_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_27AssignVariableOp>assignvariableop_27_multi_head_attention_attention_output_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_28AssignVariableOpassignvariableop_28_ou1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_29AssignVariableOpassignvariableop_29_ou1_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_30AssignVariableOpassignvariableop_30_ou2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_31AssignVariableOpassignvariableop_31_ou2_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_32AssignVariableOpassignvariableop_32_ov1_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_33AssignVariableOpassignvariableop_33_ov1_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_34AssignVariableOpassignvariableop_34_ov2_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_35AssignVariableOpassignvariableop_35_ov2_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_36AssignVariableOpassignvariableop_36_op1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_37AssignVariableOpassignvariableop_37_op1_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_38AssignVariableOpassignvariableop_38_op2_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_39AssignVariableOpassignvariableop_39_op2_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: И
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_41Identity_41:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:(($
"
_user_specified_name
op2/bias:*'&
$
_user_specified_name
op2/kernel:(&$
"
_user_specified_name
op1/bias:*%&
$
_user_specified_name
op1/kernel:($$
"
_user_specified_name
ov2/bias:*#&
$
_user_specified_name
ov2/kernel:("$
"
_user_specified_name
ov1/bias:*!&
$
_user_specified_name
ov1/kernel:( $
"
_user_specified_name
ou2/bias:*&
$
_user_specified_name
ou2/kernel:($
"
_user_specified_name
ou1/bias:*&
$
_user_specified_name
ou1/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:3/
-
_user_specified_namespatial_layer2/bias:51
/
_user_specified_namespatial_layer2/kernel:3/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:-)
'
_user_specified_nameoutput_p/bias:/+
)
_user_specified_nameoutput_p/kernel:-)
'
_user_specified_nameoutput_v/bias:/+
)
_user_specified_nameoutput_v/kernel:-)
'
_user_specified_nameoutput_u/bias:/+
)
_user_specified_nameoutput_u/kernel:,
(
&
_user_specified_namedense_4/bias:.	*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix>
$__inference_internal_grad_fn_7474370CustomGradient-7474243>
$__inference_internal_grad_fn_7474397CustomGradient-7472216>
$__inference_internal_grad_fn_7474424CustomGradient-7474206>
$__inference_internal_grad_fn_7474451CustomGradient-7472187>
$__inference_internal_grad_fn_7474478CustomGradient-7474169>
$__inference_internal_grad_fn_7474505CustomGradient-7472084>
$__inference_internal_grad_fn_7474532CustomGradient-7474132>
$__inference_internal_grad_fn_7474559CustomGradient-7472055>
$__inference_internal_grad_fn_7474586CustomGradient-7474095>
$__inference_internal_grad_fn_7474613CustomGradient-7471952>
$__inference_internal_grad_fn_7474640CustomGradient-7474058>
$__inference_internal_grad_fn_7474667CustomGradient-7471923>
$__inference_internal_grad_fn_7474694CustomGradient-7474021>
$__inference_internal_grad_fn_7474721CustomGradient-7471820>
$__inference_internal_grad_fn_7474748CustomGradient-7473964>
$__inference_internal_grad_fn_7474775CustomGradient-7471771>
$__inference_internal_grad_fn_7474802CustomGradient-7473839>
$__inference_internal_grad_fn_7474829CustomGradient-7472658>
$__inference_internal_grad_fn_7474856CustomGradient-7473661>
$__inference_internal_grad_fn_7474883CustomGradient-7472554>
$__inference_internal_grad_fn_7474910CustomGradient-7473613>
$__inference_internal_grad_fn_7474937CustomGradient-7472510>
$__inference_internal_grad_fn_7474964CustomGradient-7473565>
$__inference_internal_grad_fn_7474991CustomGradient-7472399>
$__inference_internal_grad_fn_7475018CustomGradient-7473517>
$__inference_internal_grad_fn_7475045CustomGradient-7472443>
$__inference_internal_grad_fn_7475072CustomGradient-7471359>
$__inference_internal_grad_fn_7475099CustomGradient-7471394>
$__inference_internal_grad_fn_7475126CustomGradient-7471438>
$__inference_internal_grad_fn_7475153CustomGradient-7471473>
$__inference_internal_grad_fn_7475180CustomGradient-7471508>
$__inference_internal_grad_fn_7475207CustomGradient-7471543>
$__inference_internal_grad_fn_7475234CustomGradient-7471609>
$__inference_internal_grad_fn_7475261CustomGradient-7471626>
$__inference_internal_grad_fn_7475288CustomGradient-7471641>
$__inference_internal_grad_fn_7475315CustomGradient-7471656>
$__inference_internal_grad_fn_7475342CustomGradient-7471671>
$__inference_internal_grad_fn_7475369CustomGradient-7471686>
$__inference_internal_grad_fn_7475396CustomGradient-7471701"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ъ
serving_default╓
L
	Pbc_layer?
serving_default_Pbc_layer:0                  
L
	Ubc_layer?
serving_default_Ubc_layer:0                  
L
	Vbc_layer?
serving_default_Vbc_layer:0                  
;
X_layer0
serving_default_X_layer:0         
L
	Xbc_layer?
serving_default_Xbc_layer:0                  
;
Y_layer0
serving_default_Y_layer:0         
L
	Ybc_layer?
serving_default_Ybc_layer:0                  <
output_p0
StatefulPartitionedCall:0         <
output_u0
StatefulPartitionedCall:1         <
output_v0
StatefulPartitionedCall:2         tensorflow/serving/predict:П┴
├
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-0
layer-15
layer_with_weights-1
layer-16
layer_with_weights-2
layer-17
layer_with_weights-3
layer-18
layer_with_weights-4
layer-19
layer_with_weights-5
layer-20
layer-21
layer_with_weights-6
layer-22
layer-23
layer_with_weights-7
layer-24
layer_with_weights-8
layer-25
layer_with_weights-9
layer-26
layer_with_weights-10
layer-27
layer_with_weights-11
layer-28
layer_with_weights-12
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
е
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
е
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
е
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
е
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
е
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
е
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
е
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
╗
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
Т
glayer_with_weights-0
glayer-0
hlayer-1
ilayer_with_weights-1
ilayer-2
jlayer-3
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_sequential
╗
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias"
_tf_keras_layer
╝
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	Аbias"
_tf_keras_layer
Ъ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_query_dense
И
_key_dense
Й_value_dense
К_softmax
Л_dropout_layer
М_output_dense"
_tf_keras_layer
л
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
├
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias"
_tf_keras_layer
л
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
Ю
бlayer_with_weights-0
бlayer-0
вlayer-1
гlayer_with_weights-1
гlayer-2
дlayer-3
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ю
лlayer_with_weights-0
лlayer-0
мlayer-1
нlayer_with_weights-1
нlayer-2
оlayer-3
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ю
╡layer_with_weights-0
╡layer-0
╢layer-1
╖layer_with_weights-1
╖layer-2
╕layer-3
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"
_tf_keras_sequential
├
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
┼kernel
	╞bias"
_tf_keras_layer
├
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═kernel
	╬bias"
_tf_keras_layer
├
╧	variables
╨trainable_variables
╤regularization_losses
╥	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses
╒kernel
	╓bias"
_tf_keras_layer
ў
]0
^1
e2
f3
╫4
╪5
┘6
┌7
w8
x9
10
А11
█12
▄13
▌14
▐15
▀16
р17
с18
т19
Щ20
Ъ21
у22
ф23
х24
ц25
ч26
ш27
щ28
ъ29
ы30
ь31
э32
ю33
┼34
╞35
═36
╬37
╒38
╓39"
trackable_list_wrapper
ў
]0
^1
e2
f3
╫4
╪5
┘6
┌7
w8
x9
10
А11
█12
▄13
▌14
▐15
▀16
р17
с18
т19
Щ20
Ъ21
у22
ф23
х24
ц25
ч26
ш27
щ28
ъ29
ы30
ь31
э32
ю33
┼34
╞35
═36
╬37
╒38
╓39"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
┼
Їtrace_0
їtrace_12К
'__inference_model_layer_call_fn_7473001
'__inference_model_layer_call_fn_7473096╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЇtrace_0zїtrace_1
√
Ўtrace_0
ўtrace_12└
B__inference_model_layer_call_and_return_conditional_losses_7472755
B__inference_model_layer_call_and_return_conditional_losses_7472906╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0zўtrace_1
НBК
"__inference__wrapped_model_7471730X_layerY_layer	Xbc_layer	Ybc_layer	Ubc_layer	Vbc_layer	Pbc_layer"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
-
°serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ч
■trace_02╚
+__inference_rescaling_layer_call_fn_7473370Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
В
 trace_02у
F__inference_rescaling_layer_call_and_return_conditional_losses_7473378Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
щ
Еtrace_02╩
-__inference_rescaling_1_layer_call_fn_7473383Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
Д
Жtrace_02х
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7473392Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
щ
Мtrace_02╩
-__inference_rescaling_2_layer_call_fn_7473397Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
Д
Нtrace_02х
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7473405Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
щ
Уtrace_02╩
-__inference_rescaling_3_layer_call_fn_7473410Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
Д
Фtrace_02х
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7473419Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
щ
Ъtrace_02╩
-__inference_concatenate_layer_call_fn_7473425Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
Д
Ыtrace_02х
H__inference_concatenate_layer_call_and_return_conditional_losses_7473432Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
ы
бtrace_02╠
/__inference_concatenate_1_layer_call_fn_7473438Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
Ж
вtrace_02ч
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7473445Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ы
иtrace_02╠
/__inference_concatenate_2_layer_call_fn_7473452Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
Ж
йtrace_02ч
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7473460Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
х
пtrace_02╞
)__inference_reshape_layer_call_fn_7473465Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
А
░trace_02с
D__inference_reshape_layer_call_and_return_conditional_losses_7473478Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
у
╢trace_02─
'__inference_dense_layer_call_fn_7473487Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
■
╖trace_02▀
B__inference_dense_layer_call_and_return_conditional_losses_7473526Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
:@2dense/kernel
:@2
dense/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
х
╜trace_02╞
)__inference_dense_2_layer_call_fn_7473535Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
А
╛trace_02с
D__inference_dense_2_layer_call_and_return_conditional_losses_7473574Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
 :@2dense_2/kernel
:@2dense_2/bias
├
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
╫kernel
	╪bias"
_tf_keras_layer
л
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"
_tf_keras_layer
├
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses
┘kernel
	┌bias"
_tf_keras_layer
л
╤	variables
╥trainable_variables
╙regularization_losses
╘	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"
_tf_keras_layer
@
╫0
╪1
┘2
┌3"
trackable_list_wrapper
@
╫0
╪1
┘2
┌3"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
ч
▄trace_0
▌trace_12м
8__inference_spatial_transformation_layer_call_fn_7471861
8__inference_spatial_transformation_layer_call_fn_7471874╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0z▌trace_1
Э
▐trace_0
▀trace_12т
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0z▀trace_1
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
х
хtrace_02╞
)__inference_dense_1_layer_call_fn_7473583Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zхtrace_0
А
цtrace_02с
D__inference_dense_1_layer_call_and_return_conditional_losses_7473622Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0
 :@@2dense_1/kernel
:@2dense_1/bias
/
0
А1"
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
х
ьtrace_02╞
)__inference_dense_3_layer_call_fn_7473631Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zьtrace_0
А
эtrace_02с
D__inference_dense_3_layer_call_and_return_conditional_losses_7473670Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zэtrace_0
 :@@2dense_3/kernel
:@2dense_3/bias
`
█0
▄1
▌2
▐3
▀4
р5
с6
т7"
trackable_list_wrapper
`
█0
▄1
▌2
▐3
▀4
р5
с6
т7"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
╢
єtrace_0
Їtrace_12√
6__inference_multi_head_attention_layer_call_fn_7473693
6__inference_multi_head_attention_layer_call_fn_7473716И
Б▓¤
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsв

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zєtrace_0zЇtrace_1
ь
їtrace_0
Ўtrace_12▒
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473752
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473788И
Б▓¤
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsв

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0zЎtrace_1
Ў
ў	variables
°trainable_variables
∙regularization_losses
·	keras_api
√__call__
+№&call_and_return_all_conditional_losses
¤partial_output_shape
■full_output_shape
█kernel
	▄bias"
_tf_keras_layer
Ў
 	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
Еpartial_output_shape
Жfull_output_shape
▌kernel
	▐bias"
_tf_keras_layer
Ў
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Нpartial_output_shape
Оfull_output_shape
▀kernel
	рbias"
_tf_keras_layer
л
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ы_random_generator"
_tf_keras_layer
Ў
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
вpartial_output_shape
гfull_output_shape
сkernel
	тbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
с
йtrace_02┬
%__inference_add_layer_call_fn_7473794Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
№
кtrace_02▌
@__inference_add_layer_call_and_return_conditional_losses_7473800Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
х
░trace_02╞
)__inference_dense_4_layer_call_fn_7473809Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
А
▒trace_02с
D__inference_dense_4_layer_call_and_return_conditional_losses_7473848Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
 :@@2dense_4/kernel
:@2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
х
╖trace_02╞
)__inference_flatten_layer_call_fn_7473853Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
А
╕trace_02с
D__inference_flatten_layer_call_and_return_conditional_losses_7473859Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
├
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses
уkernel
	фbias"
_tf_keras_layer
л
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses"
_tf_keras_layer
├
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
хkernel
	цbias"
_tf_keras_layer
л
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"
_tf_keras_layer
@
у0
ф1
х2
ц3"
trackable_list_wrapper
@
у0
ф1
х2
ц3"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
╜
╓trace_0
╫trace_12В
#__inference_U_layer_call_fn_7471993
#__inference_U_layer_call_fn_7472006╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1
є
╪trace_0
┘trace_12╕
>__inference_U_layer_call_and_return_conditional_losses_7471964
>__inference_U_layer_call_and_return_conditional_losses_7471980╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0z┘trace_1
├
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses
чkernel
	шbias"
_tf_keras_layer
л
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses
щkernel
	ъbias"
_tf_keras_layer
л
ь	variables
эtrainable_variables
юregularization_losses
я	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
@
ч0
ш1
щ2
ъ3"
trackable_list_wrapper
@
ч0
ш1
щ2
ъ3"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
╜
ўtrace_0
°trace_12В
#__inference_V_layer_call_fn_7472125
#__inference_V_layer_call_fn_7472138╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0z°trace_1
є
∙trace_0
·trace_12╕
>__inference_V_layer_call_and_return_conditional_losses_7472096
>__inference_V_layer_call_and_return_conditional_losses_7472112╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0z·trace_1
├
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses
ыkernel
	ьbias"
_tf_keras_layer
л
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
├
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
эkernel
	юbias"
_tf_keras_layer
л
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
@
ы0
ь1
э2
ю3"
trackable_list_wrapper
@
ы0
ь1
э2
ю3"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
╜
Шtrace_0
Щtrace_12В
#__inference_P_layer_call_fn_7472257
#__inference_P_layer_call_fn_7472270╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0zЩtrace_1
є
Ъtrace_0
Ыtrace_12╕
>__inference_P_layer_call_and_return_conditional_losses_7472228
>__inference_P_layer_call_and_return_conditional_losses_7472244╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0zЫtrace_1
0
┼0
╞1"
trackable_list_wrapper
0
┼0
╞1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
ц
бtrace_02╟
*__inference_output_u_layer_call_fn_7473868Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
Б
вtrace_02т
E__inference_output_u_layer_call_and_return_conditional_losses_7473878Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
!:@2output_u/kernel
:2output_u/bias
0
═0
╬1"
trackable_list_wrapper
0
═0
╬1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
ц
иtrace_02╟
*__inference_output_v_layer_call_fn_7473887Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
Б
йtrace_02т
E__inference_output_v_layer_call_and_return_conditional_losses_7473897Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
!:@2output_v/kernel
:2output_v/bias
0
╒0
╓1"
trackable_list_wrapper
0
╒0
╓1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
╧	variables
╨trainable_variables
╤regularization_losses
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
ц
пtrace_02╟
*__inference_output_p_layer_call_fn_7473906Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
Б
░trace_02т
E__inference_output_p_layer_call_and_return_conditional_losses_7473916Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
!:@2output_p/kernel
:2output_p/bias
':%@2spatial_layer1/kernel
!:@2spatial_layer1/bias
':%@@2spatial_layer2/kernel
!:@2spatial_layer2/bias
7:5@@2!multi_head_attention/query/kernel
1:/@2multi_head_attention/query/bias
5:3@@2multi_head_attention/key/kernel
/:-@2multi_head_attention/key/bias
7:5@@2!multi_head_attention/value/kernel
1:/@2multi_head_attention/value/bias
B:@@@2,multi_head_attention/attention_output/kernel
8:6@2*multi_head_attention/attention_output/bias
:@@2
ou1/kernel
:@2ou1/bias
:@@2
ou2/kernel
:@2ou2/bias
:@@2
ov1/kernel
:@2ov1/bias
:@@2
ov2/kernel
:@2ov2/bias
:@@2
op1/kernel
:@2op1/bias
:@@2
op2/kernel
:@2op2/bias
 "
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
'__inference_model_layer_call_fn_7473001X_layerY_layer	Xbc_layer	Ybc_layer	Ubc_layer	Vbc_layer	Pbc_layer"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
жBг
'__inference_model_layer_call_fn_7473096X_layerY_layer	Xbc_layer	Ybc_layer	Ubc_layer	Vbc_layer	Pbc_layer"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┴B╛
B__inference_model_layer_call_and_return_conditional_losses_7472755X_layerY_layer	Xbc_layer	Ybc_layer	Ubc_layer	Vbc_layer	Pbc_layer"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┴B╛
B__inference_model_layer_call_and_return_conditional_losses_7472906X_layerY_layer	Xbc_layer	Ybc_layer	Ubc_layer	Vbc_layer	Pbc_layer"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
█B╪
%__inference_signature_wrapper_7473365	Pbc_layer	Ubc_layer	Vbc_layerX_layer	Xbc_layerY_layer	Ybc_layer"х
▐▓┌
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 h

kwonlyargsZЪW
j	Pbc_layer
j	Ubc_layer
j	Vbc_layer
	jX_layer
j	Xbc_layer
	jY_layer
j	Ybc_layer
kwonlydefaults
 
annotationsк *
 
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
╒B╥
+__inference_rescaling_layer_call_fn_7473370inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
F__inference_rescaling_layer_call_and_return_conditional_losses_7473378inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_rescaling_1_layer_call_fn_7473383inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7473392inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_rescaling_2_layer_call_fn_7473397inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7473405inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_rescaling_3_layer_call_fn_7473410inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7473419inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
уBр
-__inference_concatenate_layer_call_fn_7473425inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
H__inference_concatenate_layer_call_and_return_conditional_losses_7473432inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
/__inference_concatenate_1_layer_call_fn_7473438inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7473445inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
яBь
/__inference_concatenate_2_layer_call_fn_7473452inputs_0inputs_1inputs_2"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7473460inputs_0inputs_1inputs_2"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_reshape_layer_call_fn_7473465inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_reshape_layer_call_and_return_conditional_losses_7473478inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_dense_layer_call_fn_7473487inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_layer_call_and_return_conditional_losses_7473526inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_2_layer_call_fn_7473535inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_2_layer_call_and_return_conditional_losses_7473574inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
╫0
╪1"
trackable_list_wrapper
0
╫0
╪1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
ь
╢trace_02═
0__inference_spatial_layer1_layer_call_fn_7473925Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
З
╖trace_02ш
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7473955Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
ш
╜trace_02╔
,__inference_activation_layer_call_fn_7473960Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
Г
╛trace_02ф
G__inference_activation_layer_call_and_return_conditional_losses_7473973Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
0
┘0
┌1"
trackable_list_wrapper
0
┘0
┌1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
ь
─trace_02═
0__inference_spatial_layer2_layer_call_fn_7473982Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z─trace_0
З
┼trace_02ш
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7474012Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
╤	variables
╥trainable_variables
╙regularization_losses
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
ъ
╦trace_02╦
.__inference_activation_1_layer_call_fn_7474017Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╦trace_0
Е
╠trace_02ц
I__inference_activation_1_layer_call_and_return_conditional_losses_7474030Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0
 "
trackable_list_wrapper
<
g0
h1
i2
j3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
8__inference_spatial_transformation_layer_call_fn_7471861spatial_layer1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
8__inference_spatial_transformation_layer_call_fn_7471874spatial_layer1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832spatial_layer1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848spatial_layer1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_1_layer_call_fn_7473583inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_1_layer_call_and_return_conditional_losses_7473622inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_3_layer_call_fn_7473631inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_3_layer_call_and_return_conditional_losses_7473670inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
P
З0
И1
Й2
К3
Л4
М5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╞B├
6__inference_multi_head_attention_layer_call_fn_7473693queryvaluekey"є
ь▓ш
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞B├
6__inference_multi_head_attention_layer_call_fn_7473716queryvaluekey"є
ь▓ш
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
сB▐
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473752queryvaluekey"є
ь▓ш
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
сB▐
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473788queryvaluekey"є
ь▓ш
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
█0
▄1"
trackable_list_wrapper
0
█0
▄1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
ў	variables
°trainable_variables
∙regularization_losses
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
▌0
▐1"
trackable_list_wrapper
0
▌0
▐1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
 	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
▀0
р1"
trackable_list_wrapper
0
▀0
р1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
л2ие
Ю▓Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л2ие
Ю▓Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
п2мй
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
п2мй
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
"
_generic_user_object
0
с0
т1"
trackable_list_wrapper
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ю2ЫШ
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
█B╪
%__inference_add_layer_call_fn_7473794inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
@__inference_add_layer_call_and_return_conditional_losses_7473800inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_4_layer_call_fn_7473809inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_4_layer_call_and_return_conditional_losses_7473848inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_flatten_layer_call_fn_7473853inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_flatten_layer_call_and_return_conditional_losses_7473859inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
у0
ф1"
trackable_list_wrapper
0
у0
ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
с
Ёtrace_02┬
%__inference_ou1_layer_call_fn_7474039Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
№
ёtrace_02▌
@__inference_ou1_layer_call_and_return_conditional_losses_7474049Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
ъ
ўtrace_02╦
.__inference_activation_2_layer_call_fn_7474054Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
Е
°trace_02ц
I__inference_activation_2_layer_call_and_return_conditional_losses_7474067Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
0
х0
ц1"
trackable_list_wrapper
0
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
с
■trace_02┬
%__inference_ou2_layer_call_fn_7474076Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
№
 trace_02▌
@__inference_ou2_layer_call_and_return_conditional_losses_7474086Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
ъ
Еtrace_02╦
.__inference_activation_3_layer_call_fn_7474091Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
Е
Жtrace_02ц
I__inference_activation_3_layer_call_and_return_conditional_losses_7474104Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
 "
trackable_list_wrapper
@
б0
в1
г2
д3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
#__inference_U_layer_call_fn_7471993	ou1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
#__inference_U_layer_call_fn_7472006	ou1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_U_layer_call_and_return_conditional_losses_7471964	ou1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_U_layer_call_and_return_conditional_losses_7471980	ou1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ч0
ш1"
trackable_list_wrapper
0
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses"
_generic_user_object
с
Мtrace_02┬
%__inference_ov1_layer_call_fn_7474113Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
№
Нtrace_02▌
@__inference_ov1_layer_call_and_return_conditional_losses_7474123Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
ъ
Уtrace_02╦
.__inference_activation_4_layer_call_fn_7474128Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
Е
Фtrace_02ц
I__inference_activation_4_layer_call_and_return_conditional_losses_7474141Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
0
щ0
ъ1"
trackable_list_wrapper
0
щ0
ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
с
Ъtrace_02┬
%__inference_ov2_layer_call_fn_7474150Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
№
Ыtrace_02▌
@__inference_ov2_layer_call_and_return_conditional_losses_7474160Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
ь	variables
эtrainable_variables
юregularization_losses
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
ъ
бtrace_02╦
.__inference_activation_5_layer_call_fn_7474165Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
Е
вtrace_02ц
I__inference_activation_5_layer_call_and_return_conditional_losses_7474178Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
 "
trackable_list_wrapper
@
л0
м1
н2
о3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
#__inference_V_layer_call_fn_7472125	ov1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
#__inference_V_layer_call_fn_7472138	ov1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_V_layer_call_and_return_conditional_losses_7472096	ov1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_V_layer_call_and_return_conditional_losses_7472112	ov1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ы0
ь1"
trackable_list_wrapper
0
ы0
ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
с
иtrace_02┬
%__inference_op1_layer_call_fn_7474187Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
№
йtrace_02▌
@__inference_op1_layer_call_and_return_conditional_losses_7474197Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ъ
пtrace_02╦
.__inference_activation_6_layer_call_fn_7474202Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
Е
░trace_02ц
I__inference_activation_6_layer_call_and_return_conditional_losses_7474215Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
0
э0
ю1"
trackable_list_wrapper
0
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
с
╢trace_02┬
%__inference_op2_layer_call_fn_7474224Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
№
╖trace_02▌
@__inference_op2_layer_call_and_return_conditional_losses_7474234Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
ъ
╜trace_02╦
.__inference_activation_7_layer_call_fn_7474239Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
Е
╛trace_02ц
I__inference_activation_7_layer_call_and_return_conditional_losses_7474252Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
 "
trackable_list_wrapper
@
╡0
╢1
╖2
╕3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
#__inference_P_layer_call_fn_7472257	op1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
#__inference_P_layer_call_fn_7472270	op1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_P_layer_call_and_return_conditional_losses_7472228	op1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
>__inference_P_layer_call_and_return_conditional_losses_7472244	op1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_output_u_layer_call_fn_7473868inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_output_u_layer_call_and_return_conditional_losses_7473878inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_output_v_layer_call_fn_7473887inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_output_v_layer_call_and_return_conditional_losses_7473897inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_output_p_layer_call_fn_7473906inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_output_p_layer_call_and_return_conditional_losses_7473916inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_spatial_layer1_layer_call_fn_7473925inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7473955inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╓B╙
,__inference_activation_layer_call_fn_7473960inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_activation_layer_call_and_return_conditional_losses_7473973inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_spatial_layer2_layer_call_fn_7473982inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7474012inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_1_layer_call_fn_7474017inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_1_layer_call_and_return_conditional_losses_7474030inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_ou1_layer_call_fn_7474039inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_ou1_layer_call_and_return_conditional_losses_7474049inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_2_layer_call_fn_7474054inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_2_layer_call_and_return_conditional_losses_7474067inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_ou2_layer_call_fn_7474076inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_ou2_layer_call_and_return_conditional_losses_7474086inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_3_layer_call_fn_7474091inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_3_layer_call_and_return_conditional_losses_7474104inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_ov1_layer_call_fn_7474113inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_ov1_layer_call_and_return_conditional_losses_7474123inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_4_layer_call_fn_7474128inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_4_layer_call_and_return_conditional_losses_7474141inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_ov2_layer_call_fn_7474150inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_ov2_layer_call_and_return_conditional_losses_7474160inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_5_layer_call_fn_7474165inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_5_layer_call_and_return_conditional_losses_7474178inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_op1_layer_call_fn_7474187inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_op1_layer_call_and_return_conditional_losses_7474197inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_6_layer_call_fn_7474202inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_6_layer_call_and_return_conditional_losses_7474215inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_op2_layer_call_fn_7474224inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_op2_layer_call_and_return_conditional_losses_7474234inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_activation_7_layer_call_fn_7474239inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_activation_7_layer_call_and_return_conditional_losses_7474252inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
UbS
beta:0I__inference_activation_7_layer_call_and_return_conditional_losses_7474252
WbU
inputs:0I__inference_activation_7_layer_call_and_return_conditional_losses_7474252
UbS
beta:0I__inference_activation_7_layer_call_and_return_conditional_losses_7472225
WbU
inputs:0I__inference_activation_7_layer_call_and_return_conditional_losses_7472225
UbS
beta:0I__inference_activation_6_layer_call_and_return_conditional_losses_7474215
WbU
inputs:0I__inference_activation_6_layer_call_and_return_conditional_losses_7474215
UbS
beta:0I__inference_activation_6_layer_call_and_return_conditional_losses_7472196
WbU
inputs:0I__inference_activation_6_layer_call_and_return_conditional_losses_7472196
UbS
beta:0I__inference_activation_5_layer_call_and_return_conditional_losses_7474178
WbU
inputs:0I__inference_activation_5_layer_call_and_return_conditional_losses_7474178
UbS
beta:0I__inference_activation_5_layer_call_and_return_conditional_losses_7472093
WbU
inputs:0I__inference_activation_5_layer_call_and_return_conditional_losses_7472093
UbS
beta:0I__inference_activation_4_layer_call_and_return_conditional_losses_7474141
WbU
inputs:0I__inference_activation_4_layer_call_and_return_conditional_losses_7474141
UbS
beta:0I__inference_activation_4_layer_call_and_return_conditional_losses_7472064
WbU
inputs:0I__inference_activation_4_layer_call_and_return_conditional_losses_7472064
UbS
beta:0I__inference_activation_3_layer_call_and_return_conditional_losses_7474104
WbU
inputs:0I__inference_activation_3_layer_call_and_return_conditional_losses_7474104
UbS
beta:0I__inference_activation_3_layer_call_and_return_conditional_losses_7471961
WbU
inputs:0I__inference_activation_3_layer_call_and_return_conditional_losses_7471961
UbS
beta:0I__inference_activation_2_layer_call_and_return_conditional_losses_7474067
WbU
inputs:0I__inference_activation_2_layer_call_and_return_conditional_losses_7474067
UbS
beta:0I__inference_activation_2_layer_call_and_return_conditional_losses_7471932
WbU
inputs:0I__inference_activation_2_layer_call_and_return_conditional_losses_7471932
UbS
beta:0I__inference_activation_1_layer_call_and_return_conditional_losses_7474030
WbU
inputs:0I__inference_activation_1_layer_call_and_return_conditional_losses_7474030
UbS
beta:0I__inference_activation_1_layer_call_and_return_conditional_losses_7471829
WbU
inputs:0I__inference_activation_1_layer_call_and_return_conditional_losses_7471829
SbQ
beta:0G__inference_activation_layer_call_and_return_conditional_losses_7473973
UbS
inputs:0G__inference_activation_layer_call_and_return_conditional_losses_7473973
SbQ
beta:0G__inference_activation_layer_call_and_return_conditional_losses_7471780
UbS
inputs:0G__inference_activation_layer_call_and_return_conditional_losses_7471780
PbN
beta:0D__inference_dense_4_layer_call_and_return_conditional_losses_7473848
SbQ
	BiasAdd:0D__inference_dense_4_layer_call_and_return_conditional_losses_7473848
PbN
beta:0D__inference_dense_4_layer_call_and_return_conditional_losses_7472667
SbQ
	BiasAdd:0D__inference_dense_4_layer_call_and_return_conditional_losses_7472667
PbN
beta:0D__inference_dense_3_layer_call_and_return_conditional_losses_7473670
SbQ
	BiasAdd:0D__inference_dense_3_layer_call_and_return_conditional_losses_7473670
PbN
beta:0D__inference_dense_3_layer_call_and_return_conditional_losses_7472563
SbQ
	BiasAdd:0D__inference_dense_3_layer_call_and_return_conditional_losses_7472563
PbN
beta:0D__inference_dense_1_layer_call_and_return_conditional_losses_7473622
SbQ
	BiasAdd:0D__inference_dense_1_layer_call_and_return_conditional_losses_7473622
PbN
beta:0D__inference_dense_1_layer_call_and_return_conditional_losses_7472519
SbQ
	BiasAdd:0D__inference_dense_1_layer_call_and_return_conditional_losses_7472519
PbN
beta:0D__inference_dense_2_layer_call_and_return_conditional_losses_7473574
SbQ
	BiasAdd:0D__inference_dense_2_layer_call_and_return_conditional_losses_7473574
PbN
beta:0D__inference_dense_2_layer_call_and_return_conditional_losses_7472408
SbQ
	BiasAdd:0D__inference_dense_2_layer_call_and_return_conditional_losses_7472408
NbL
beta:0B__inference_dense_layer_call_and_return_conditional_losses_7473526
QbO
	BiasAdd:0B__inference_dense_layer_call_and_return_conditional_losses_7473526
NbL
beta:0B__inference_dense_layer_call_and_return_conditional_losses_7472452
QbO
	BiasAdd:0B__inference_dense_layer_call_and_return_conditional_losses_7472452
<b:
model/dense_2/beta:0"__inference__wrapped_model_7471730
?b=
model/dense_2/BiasAdd:0"__inference__wrapped_model_7471730
:b8
model/dense/beta:0"__inference__wrapped_model_7471730
=b;
model/dense/BiasAdd:0"__inference__wrapped_model_7471730
VbT
.model/spatial_transformation/activation/beta:0"__inference__wrapped_model_7471730
]b[
5model/spatial_transformation/spatial_layer1/BiasAdd:0"__inference__wrapped_model_7471730
XbV
0model/spatial_transformation/activation_1/beta:0"__inference__wrapped_model_7471730
]b[
5model/spatial_transformation/spatial_layer2/BiasAdd:0"__inference__wrapped_model_7471730
<b:
model/dense_1/beta:0"__inference__wrapped_model_7471730
?b=
model/dense_1/BiasAdd:0"__inference__wrapped_model_7471730
<b:
model/dense_3/beta:0"__inference__wrapped_model_7471730
?b=
model/dense_3/BiasAdd:0"__inference__wrapped_model_7471730
<b:
model/dense_4/beta:0"__inference__wrapped_model_7471730
?b=
model/dense_4/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/P/activation_6/beta:0"__inference__wrapped_model_7471730
=b;
model/P/op1/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/P/activation_7/beta:0"__inference__wrapped_model_7471730
=b;
model/P/op2/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/V/activation_4/beta:0"__inference__wrapped_model_7471730
=b;
model/V/ov1/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/V/activation_5/beta:0"__inference__wrapped_model_7471730
=b;
model/V/ov2/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/U/activation_2/beta:0"__inference__wrapped_model_7471730
=b;
model/U/ou1/BiasAdd:0"__inference__wrapped_model_7471730
CbA
model/U/activation_3/beta:0"__inference__wrapped_model_7471730
=b;
model/U/ou2/BiasAdd:0"__inference__wrapped_model_7471730╢
>__inference_P_layer_call_and_return_conditional_losses_7472228tыьэю:в7
0в-
#К 
	op1_input         @
p

 
к ",в)
"К
tensor_0         @
Ъ ╢
>__inference_P_layer_call_and_return_conditional_losses_7472244tыьэю:в7
0в-
#К 
	op1_input         @
p 

 
к ",в)
"К
tensor_0         @
Ъ Р
#__inference_P_layer_call_fn_7472257iыьэю:в7
0в-
#К 
	op1_input         @
p

 
к "!К
unknown         @Р
#__inference_P_layer_call_fn_7472270iыьэю:в7
0в-
#К 
	op1_input         @
p 

 
к "!К
unknown         @╢
>__inference_U_layer_call_and_return_conditional_losses_7471964tуфхц:в7
0в-
#К 
	ou1_input         @
p

 
к ",в)
"К
tensor_0         @
Ъ ╢
>__inference_U_layer_call_and_return_conditional_losses_7471980tуфхц:в7
0в-
#К 
	ou1_input         @
p 

 
к ",в)
"К
tensor_0         @
Ъ Р
#__inference_U_layer_call_fn_7471993iуфхц:в7
0в-
#К 
	ou1_input         @
p

 
к "!К
unknown         @Р
#__inference_U_layer_call_fn_7472006iуфхц:в7
0в-
#К 
	ou1_input         @
p 

 
к "!К
unknown         @╢
>__inference_V_layer_call_and_return_conditional_losses_7472096tчшщъ:в7
0в-
#К 
	ov1_input         @
p

 
к ",в)
"К
tensor_0         @
Ъ ╢
>__inference_V_layer_call_and_return_conditional_losses_7472112tчшщъ:в7
0в-
#К 
	ov1_input         @
p 

 
к ",в)
"К
tensor_0         @
Ъ Р
#__inference_V_layer_call_fn_7472125iчшщъ:в7
0в-
#К 
	ov1_input         @
p

 
к "!К
unknown         @Р
#__inference_V_layer_call_fn_7472138iчшщъ:в7
0в-
#К 
	ov1_input         @
p 

 
к "!К
unknown         @у
"__inference__wrapped_model_7471730╝Ief]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞╫в╙
╦в╟
─Ъ└
!К
X_layer         
!К
Y_layer         
0К-
	Xbc_layer                  
0К-
	Ybc_layer                  
0К-
	Ubc_layer                  
0К-
	Vbc_layer                  
0К-
	Pbc_layer                  
к "ФкР
.
output_p"К
output_p         
.
output_u"К
output_u         
.
output_v"К
output_v         ┤
I__inference_activation_1_layer_call_and_return_conditional_losses_7474030g3в0
)в&
$К!
inputs         @
к "0в-
&К#
tensor_0         @
Ъ О
.__inference_activation_1_layer_call_fn_7474017\3в0
)в&
$К!
inputs         @
к "%К"
unknown         @м
I__inference_activation_2_layer_call_and_return_conditional_losses_7474067_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_2_layer_call_fn_7474054T/в,
%в"
 К
inputs         @
к "!К
unknown         @м
I__inference_activation_3_layer_call_and_return_conditional_losses_7474104_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_3_layer_call_fn_7474091T/в,
%в"
 К
inputs         @
к "!К
unknown         @м
I__inference_activation_4_layer_call_and_return_conditional_losses_7474141_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_4_layer_call_fn_7474128T/в,
%в"
 К
inputs         @
к "!К
unknown         @м
I__inference_activation_5_layer_call_and_return_conditional_losses_7474178_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_5_layer_call_fn_7474165T/в,
%в"
 К
inputs         @
к "!К
unknown         @м
I__inference_activation_6_layer_call_and_return_conditional_losses_7474215_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_6_layer_call_fn_7474202T/в,
%в"
 К
inputs         @
к "!К
unknown         @м
I__inference_activation_7_layer_call_and_return_conditional_losses_7474252_/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Ж
.__inference_activation_7_layer_call_fn_7474239T/в,
%в"
 К
inputs         @
к "!К
unknown         @▓
G__inference_activation_layer_call_and_return_conditional_losses_7473973g3в0
)в&
$К!
inputs         @
к "0в-
&К#
tensor_0         @
Ъ М
,__inference_activation_layer_call_fn_7473960\3в0
)в&
$К!
inputs         @
к "%К"
unknown         @█
@__inference_add_layer_call_and_return_conditional_losses_7473800Цbв_
XвU
SЪP
&К#
inputs_0         @
&К#
inputs_1         @
к "0в-
&К#
tensor_0         @
Ъ ╡
%__inference_add_layer_call_fn_7473794Лbв_
XвU
SЪP
&К#
inputs_0         @
&К#
inputs_1         @
к "%К"
unknown         @А
J__inference_concatenate_1_layer_call_and_return_conditional_losses_7473445▒tвq
jвg
eЪb
/К,
inputs_0                  
/К,
inputs_1                  
к "9в6
/К,
tensor_0                  
Ъ ┌
/__inference_concatenate_1_layer_call_fn_7473438жtвq
jвg
eЪb
/К,
inputs_0                  
/К,
inputs_1                  
к ".К+
unknown                  ╖
J__inference_concatenate_2_layer_call_and_return_conditional_losses_7473460шквж
ЮвЪ
ЧЪУ
/К,
inputs_0                  
/К,
inputs_1                  
/К,
inputs_2                  
к "9в6
/К,
tensor_0                  
Ъ С
/__inference_concatenate_2_layer_call_fn_7473452▌квж
ЮвЪ
ЧЪУ
/К,
inputs_0                  
/К,
inputs_1                  
/К,
inputs_2                  
к ".К+
unknown                  ╫
H__inference_concatenate_layer_call_and_return_conditional_losses_7473432КZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к ",в)
"К
tensor_0         
Ъ ░
-__inference_concatenate_layer_call_fn_7473425ZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к "!К
unknown         ┼
D__inference_dense_1_layer_call_and_return_conditional_losses_7473622}wx<в9
2в/
-К*
inputs                  @
к "9в6
/К,
tensor_0                  @
Ъ Я
)__inference_dense_1_layer_call_fn_7473583rwx<в9
2в/
-К*
inputs                  @
к ".К+
unknown                  @┼
D__inference_dense_2_layer_call_and_return_conditional_losses_7473574}ef<в9
2в/
-К*
inputs                  
к "9в6
/К,
tensor_0                  @
Ъ Я
)__inference_dense_2_layer_call_fn_7473535ref<в9
2в/
-К*
inputs                  
к ".К+
unknown                  @╞
D__inference_dense_3_layer_call_and_return_conditional_losses_7473670~А<в9
2в/
-К*
inputs                  @
к "9в6
/К,
tensor_0                  @
Ъ а
)__inference_dense_3_layer_call_fn_7473631sА<в9
2в/
-К*
inputs                  @
к ".К+
unknown                  @╡
D__inference_dense_4_layer_call_and_return_conditional_losses_7473848mЩЪ3в0
)в&
$К!
inputs         @
к "0в-
&К#
tensor_0         @
Ъ П
)__inference_dense_4_layer_call_fn_7473809bЩЪ3в0
)в&
$К!
inputs         @
к "%К"
unknown         @├
B__inference_dense_layer_call_and_return_conditional_losses_7473526}]^<в9
2в/
-К*
inputs                  
к "9в6
/К,
tensor_0                  @
Ъ Э
'__inference_dense_layer_call_fn_7473487r]^<в9
2в/
-К*
inputs                  
к ".К+
unknown                  @л
D__inference_flatten_layer_call_and_return_conditional_losses_7473859c3в0
)в&
$К!
inputs         @
к ",в)
"К
tensor_0         @
Ъ Е
)__inference_flatten_layer_call_fn_7473853X3в0
)в&
$К!
inputs         @
к "!К
unknown         @я
$__inference_internal_grad_fn_7474370╞┐└~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474397╞┴┬~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474424╞├─~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474451╞┼╞~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474478╞╟╚~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474505╞╔╩~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474532╞╦╠~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474559╞═╬~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474586╞╧╨~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474613╞╤╥~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474640╞╙╘~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7474667╞╒╓~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474694╘╫╪ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474721╘┘┌ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474748╘█▄ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474775╘▌▐ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474802╘▀рЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7474829╘стЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474856ёуфЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474883ёхцЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474910ёчшЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474937ёщъЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474964ёыьЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7474991ёэюЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475018ёяЁЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475045ёёЄЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475072ёєЇЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475099ёїЎЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 ¤
$__inference_internal_grad_fn_7475126╘ў°ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 ¤
$__inference_internal_grad_fn_7475153╘∙·ЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475180ё√№ЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 Ъ
$__inference_internal_grad_fn_7475207ё¤■ЫвЧ
ПвЛ

 
5К2
result_grads_0                  @
5К2
result_grads_1                  @
К
result_grads_2 
к "KЪH

 
/К,
tensor_1                  @
К
tensor_2 ¤
$__inference_internal_grad_fn_7475234╘ АЗвГ
|вy

 
,К)
result_grads_0         @
,К)
result_grads_1         @
К
result_grads_2 
к "BЪ?

 
&К#
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475261╞БВ~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475288╞ГД~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475315╞ЕЖ~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475342╞ЗИ~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475369╞ЙК~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 я
$__inference_internal_grad_fn_7475396╞ЛМ~в{
tвq

 
(К%
result_grads_0         @
(К%
result_grads_1         @
К
result_grads_2 
к ">Ъ;

 
"К
tensor_1         @
К
tensor_2 ї
B__inference_model_layer_call_and_return_conditional_losses_7472755оIef]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞▀в█
╙в╧
─Ъ└
!К
X_layer         
!К
Y_layer         
0К-
	Xbc_layer                  
0К-
	Ybc_layer                  
0К-
	Ubc_layer                  
0К-
	Vbc_layer                  
0К-
	Pbc_layer                  
p

 
к "в|
uЪr
$К!

tensor_0_0         
$К!

tensor_0_1         
$К!

tensor_0_2         
Ъ ї
B__inference_model_layer_call_and_return_conditional_losses_7472906оIef]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞▀в█
╙в╧
─Ъ└
!К
X_layer         
!К
Y_layer         
0К-
	Xbc_layer                  
0К-
	Ybc_layer                  
0К-
	Ubc_layer                  
0К-
	Vbc_layer                  
0К-
	Pbc_layer                  
p 

 
к "в|
uЪr
$К!

tensor_0_0         
$К!

tensor_0_1         
$К!

tensor_0_2         
Ъ ╩
'__inference_model_layer_call_fn_7473001ЮIef]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞▀в█
╙в╧
─Ъ└
!К
X_layer         
!К
Y_layer         
0К-
	Xbc_layer                  
0К-
	Ybc_layer                  
0К-
	Ubc_layer                  
0К-
	Vbc_layer                  
0К-
	Pbc_layer                  
p

 
к "oЪl
"К
tensor_0         
"К
tensor_1         
"К
tensor_2         ╩
'__inference_model_layer_call_fn_7473096ЮIef]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞▀в█
╙в╧
─Ъ└
!К
X_layer         
!К
Y_layer         
0К-
	Xbc_layer                  
0К-
	Ybc_layer                  
0К-
	Ubc_layer                  
0К-
	Vbc_layer                  
0К-
	Pbc_layer                  
p 

 
к "oЪl
"К
tensor_0         
"К
tensor_1         
"К
tensor_2         ╝
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473752ц█▄▌▐▀рстЯвЫ
УвП
#К 
query         @
,К)
value                  @
*К'
key                  @

 
p 
p
p 
к "0в-
&К#
tensor_0         @
Ъ ╝
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_7473788ц█▄▌▐▀рстЯвЫ
УвП
#К 
query         @
,К)
value                  @
*К'
key                  @

 
p 
p 
p 
к "0в-
&К#
tensor_0         @
Ъ Ц
6__inference_multi_head_attention_layer_call_fn_7473693██▄▌▐▀рстЯвЫ
УвП
#К 
query         @
,К)
value                  @
*К'
key                  @

 
p 
p
p 
к "%К"
unknown         @Ц
6__inference_multi_head_attention_layer_call_fn_7473716██▄▌▐▀рстЯвЫ
УвП
#К 
query         @
,К)
value                  @
*К'
key                  @

 
p 
p 
p 
к "%К"
unknown         @й
@__inference_op1_layer_call_and_return_conditional_losses_7474197eыь/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_op1_layer_call_fn_7474187Zыь/в,
%в"
 К
inputs         @
к "!К
unknown         @й
@__inference_op2_layer_call_and_return_conditional_losses_7474234eэю/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_op2_layer_call_fn_7474224Zэю/в,
%в"
 К
inputs         @
к "!К
unknown         @й
@__inference_ou1_layer_call_and_return_conditional_losses_7474049eуф/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_ou1_layer_call_fn_7474039Zуф/в,
%в"
 К
inputs         @
к "!К
unknown         @й
@__inference_ou2_layer_call_and_return_conditional_losses_7474086eхц/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_ou2_layer_call_fn_7474076Zхц/в,
%в"
 К
inputs         @
к "!К
unknown         @о
E__inference_output_p_layer_call_and_return_conditional_losses_7473916e╒╓/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ И
*__inference_output_p_layer_call_fn_7473906Z╒╓/в,
%в"
 К
inputs         @
к "!К
unknown         о
E__inference_output_u_layer_call_and_return_conditional_losses_7473878e┼╞/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ И
*__inference_output_u_layer_call_fn_7473868Z┼╞/в,
%в"
 К
inputs         @
к "!К
unknown         о
E__inference_output_v_layer_call_and_return_conditional_losses_7473897e═╬/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ И
*__inference_output_v_layer_call_fn_7473887Z═╬/в,
%в"
 К
inputs         @
к "!К
unknown         й
@__inference_ov1_layer_call_and_return_conditional_losses_7474123eчш/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_ov1_layer_call_fn_7474113Zчш/в,
%в"
 К
inputs         @
к "!К
unknown         @й
@__inference_ov2_layer_call_and_return_conditional_losses_7474160eщъ/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
%__inference_ov2_layer_call_fn_7474150Zщъ/в,
%в"
 К
inputs         @
к "!К
unknown         @л
H__inference_rescaling_1_layer_call_and_return_conditional_losses_7473392_/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Е
-__inference_rescaling_1_layer_call_fn_7473383T/в,
%в"
 К
inputs         
к "!К
unknown         ┼
H__inference_rescaling_2_layer_call_and_return_conditional_losses_7473405y<в9
2в/
-К*
inputs                  
к "9в6
/К,
tensor_0                  
Ъ Я
-__inference_rescaling_2_layer_call_fn_7473397n<в9
2в/
-К*
inputs                  
к ".К+
unknown                  ┼
H__inference_rescaling_3_layer_call_and_return_conditional_losses_7473419y<в9
2в/
-К*
inputs                  
к "9в6
/К,
tensor_0                  
Ъ Я
-__inference_rescaling_3_layer_call_fn_7473410n<в9
2в/
-К*
inputs                  
к ".К+
unknown                  й
F__inference_rescaling_layer_call_and_return_conditional_losses_7473378_/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Г
+__inference_rescaling_layer_call_fn_7473370T/в,
%в"
 К
inputs         
к "!К
unknown         л
D__inference_reshape_layer_call_and_return_conditional_losses_7473478c/в,
%в"
 К
inputs         
к "0в-
&К#
tensor_0         
Ъ Е
)__inference_reshape_layer_call_fn_7473465X/в,
%в"
 К
inputs         
к "%К"
unknown         ╢
%__inference_signature_wrapper_7473365МIef]^╫╪┘┌wxА█▄▌▐▀рстЩЪыьэючшщъуфхц╒╓═╬┼╞звг
в 
ЫкЧ
=
	Pbc_layer0К-
	pbc_layer                  
=
	Ubc_layer0К-
	ubc_layer                  
=
	Vbc_layer0К-
	vbc_layer                  
,
X_layer!К
x_layer         
=
	Xbc_layer0К-
	xbc_layer                  
,
Y_layer!К
y_layer         
=
	Ybc_layer0К-
	ybc_layer                  "ФкР
.
output_p"К
output_p         
.
output_u"К
output_u         
.
output_v"К
output_v         ╝
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_7473955m╫╪3в0
)в&
$К!
inputs         
к "0в-
&К#
tensor_0         @
Ъ Ц
0__inference_spatial_layer1_layer_call_fn_7473925b╫╪3в0
)в&
$К!
inputs         
к "%К"
unknown         @╝
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_7474012m┘┌3в0
)в&
$К!
inputs         @
к "0в-
&К#
tensor_0         @
Ъ Ц
0__inference_spatial_layer2_layer_call_fn_7473982b┘┌3в0
)в&
$К!
inputs         @
к "%К"
unknown         @▀
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471832З╫╪┘┌IвF
?в<
2К/
spatial_layer1_input         
p

 
к "0в-
&К#
tensor_0         @
Ъ ▀
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_7471848З╫╪┘┌IвF
?в<
2К/
spatial_layer1_input         
p 

 
к "0в-
&К#
tensor_0         @
Ъ ╕
8__inference_spatial_transformation_layer_call_fn_7471861|╫╪┘┌IвF
?в<
2К/
spatial_layer1_input         
p

 
к "%К"
unknown         @╕
8__inference_spatial_transformation_layer_call_fn_7471874|╫╪┘┌IвF
?в<
2К/
spatial_layer1_input         
p 

 
к "%К"
unknown         @
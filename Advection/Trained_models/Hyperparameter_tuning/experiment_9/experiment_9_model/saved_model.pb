“Й
э—
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
Ѓ
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
output"out_typeКнout_type"	
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8†М
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
й
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *;

debug_name-+multi_head_attention/attention_output/bias/*
dtype0*
shape:@*;
shared_name,*multi_head_attention/attention_output/bias
•
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
ч
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention/attention_output/kernel/*
dtype0*
shape:@@*=
shared_name.,multi_head_attention/attention_output/kernel
±
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:@@*
dtype0
ћ
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
÷
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
∆
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
–
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
ћ
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
÷
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
Ш
bpe_layer2/biasVarHandleOp*
_output_shapes
: * 

debug_namebpe_layer2/bias/*
dtype0*
shape:@* 
shared_namebpe_layer2/bias
o
#bpe_layer2/bias/Read/ReadVariableOpReadVariableOpbpe_layer2/bias*
_output_shapes
:@*
dtype0
Ґ
bpe_layer2/kernelVarHandleOp*
_output_shapes
: *"

debug_namebpe_layer2/kernel/*
dtype0*
shape
:@@*"
shared_namebpe_layer2/kernel
w
%bpe_layer2/kernel/Read/ReadVariableOpReadVariableOpbpe_layer2/kernel*
_output_shapes

:@@*
dtype0
Ш
bpe_layer1/biasVarHandleOp*
_output_shapes
: * 

debug_namebpe_layer1/bias/*
dtype0*
shape:@* 
shared_namebpe_layer1/bias
o
#bpe_layer1/bias/Read/ReadVariableOpReadVariableOpbpe_layer1/bias*
_output_shapes
:@*
dtype0
Ґ
bpe_layer1/kernelVarHandleOp*
_output_shapes
: *"

debug_namebpe_layer1/kernel/*
dtype0*
shape
:@*"
shared_namebpe_layer1/kernel
w
%bpe_layer1/kernel/Read/ReadVariableOpReadVariableOpbpe_layer1/kernel*
_output_shapes

:@*
dtype0
§
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
Ѓ
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
§
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
Ѓ
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
:@@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@@*
dtype0
Ы
bve_layer_2/biasVarHandleOp*
_output_shapes
: *!

debug_namebve_layer_2/bias/*
dtype0*
shape:@*!
shared_namebve_layer_2/bias
q
$bve_layer_2/bias/Read/ReadVariableOpReadVariableOpbve_layer_2/bias*
_output_shapes
:@*
dtype0
•
bve_layer_2/kernelVarHandleOp*
_output_shapes
: *#

debug_namebve_layer_2/kernel/*
dtype0*
shape
:@@*#
shared_namebve_layer_2/kernel
y
&bve_layer_2/kernel/Read/ReadVariableOpReadVariableOpbve_layer_2/kernel*
_output_shapes

:@@*
dtype0
Ы
bve_layer_1/biasVarHandleOp*
_output_shapes
: *!

debug_namebve_layer_1/bias/*
dtype0*
shape:@*!
shared_namebve_layer_1/bias
q
$bve_layer_1/bias/Read/ReadVariableOpReadVariableOpbve_layer_1/bias*
_output_shapes
:@*
dtype0
•
bve_layer_1/kernelVarHandleOp*
_output_shapes
: *#

debug_namebve_layer_1/kernel/*
dtype0*
shape
:@*#
shared_namebve_layer_1/kernel
y
&bve_layer_1/kernel/Read/ReadVariableOpReadVariableOpbve_layer_1/kernel*
_output_shapes

:@*
dtype0
Ц
serving_default_Xbc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
z
serving_default_t_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Ц
serving_default_tbc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
Ц
serving_default_ubc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
z
serving_default_x_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
њ
StatefulPartitionedCallStatefulPartitionedCallserving_default_Xbc_layerserving_default_t_inputserving_default_tbc_layerserving_default_ubc_layerserving_default_x_inputbve_layer_1/kernelbve_layer_1/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/biasbve_layer_2/kernelbve_layer_2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biasdense/kernel
dense/bias
ou1/kernelou1/bias
ou2/kernelou2/biasoutput_u/kernel*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*=
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_4655103

NoOpNoOp
џЉ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ХЉ
valueКЉBЖЉ Bюї
Ј
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
layer_with_weights-0
layer-12
layer_with_weights-1
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
layer_with_weights-4
layer-16
layer-17
layer_with_weights-5
layer-18
layer-19
layer_with_weights-6
layer-20
layer_with_weights-7
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
О
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
О
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
* 
* 
О
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
О
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
О
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
* 
О
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
¶
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias*
ш
Qlayer_with_weights-0
Qlayer-0
Rlayer-1
Slayer_with_weights-1
Slayer-2
Tlayer-3
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
ш
[layer_with_weights-0
[layer-0
\layer-1
]layer_with_weights-1
]layer-2
^layer-3
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
¶
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias*
щ
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_query_dense
t
_key_dense
u_value_dense
v_softmax
w_dropout_layer
x_output_dense*
О
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses* 
≠
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
Еkernel
	Жbias*
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 
Д
Нlayer_with_weights-0
Нlayer-0
Оlayer-1
Пlayer_with_weights-1
Пlayer-2
Рlayer-3
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses*
£
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Эkernel*
й
O0
P1
Ю2
Я3
†4
°5
Ґ6
£7
§8
•9
k10
l11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Е20
Ж21
Ѓ22
ѓ23
∞24
±25
Э26*
й
O0
P1
Ю2
Я3
†4
°5
Ґ6
£7
§8
•9
k10
l11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Е20
Ж21
Ѓ22
ѓ23
∞24
±25
Э26*
* 
µ
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Јtrace_0
Єtrace_1* 

єtrace_0
Їtrace_1* 
* 

їserving_default* 
* 
* 
* 
Ц
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

Ѕtrace_0* 

¬trace_0* 
* 
* 
* 
Ц
√non_trainable_variables
ƒlayers
≈metrics
 ∆layer_regularization_losses
«layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

»trace_0* 

…trace_0* 
* 
* 
* 
Ц
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

ѕtrace_0* 

–trace_0* 
* 
* 
* 
Ц
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

÷trace_0* 

„trace_0* 
* 
* 
* 
Ц
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

Ёtrace_0* 

ёtrace_0* 
* 
* 
* 
Ц
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

дtrace_0* 

еtrace_0* 
* 
* 
* 
Ц
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

лtrace_0* 

мtrace_0* 

O0
P1*

O0
P1*
* 
Ш
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

тtrace_0* 

уtrace_0* 
b\
VARIABLE_VALUEbve_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbve_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
Юkernel
	Яbias*
Ф
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses* 
Ѓ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
†kernel
	°bias*
Ф
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses* 
$
Ю0
Я1
†2
°3*
$
Ю0
Я1
†2
°3*
* 
Ш
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

Сtrace_0
Тtrace_1* 

Уtrace_0
Фtrace_1* 
Ѓ
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ґkernel
	£bias*
Ф
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses* 
Ѓ
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
§kernel
	•bias*
Ф
І	variables
®trainable_variables
©regularization_losses
™	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses* 
$
Ґ0
£1
§2
•3*
$
Ґ0
£1
§2
•3*
* 
Ш
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

≤trace_0
≥trace_1* 

іtrace_0
µtrace_1* 

k0
l1*

k0
l1*
* 
Ш
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

їtrace_0* 

Љtrace_0* 
b\
VARIABLE_VALUEbve_layer_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbve_layer_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
D
¶0
І1
®2
©3
™4
Ђ5
ђ6
≠7*
D
¶0
І1
®2
©3
™4
Ђ5
ђ6
≠7*
* 
Ш
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

¬trace_0
√trace_1* 

ƒtrace_0
≈trace_1* 
б
∆	variables
«trainable_variables
»regularization_losses
…	keras_api
 __call__
+Ћ&call_and_return_all_conditional_losses
ћpartial_output_shape
Ќfull_output_shape
¶kernel
	Іbias*
б
ќ	variables
ѕtrainable_variables
–regularization_losses
—	keras_api
“__call__
+”&call_and_return_all_conditional_losses
‘partial_output_shape
’full_output_shape
®kernel
	©bias*
б
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№partial_output_shape
Ёfull_output_shape
™kernel
	Ђbias*
Ф
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses* 
ђ
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
к_random_generator* 
б
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses
сpartial_output_shape
тfull_output_shape
ђkernel
	≠bias*
* 
* 
* 
Ц
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 

шtrace_0* 

щtrace_0* 

Е0
Ж1*

Е0
Ж1*
* 
Э
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*

€trace_0* 

Аtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 
Ѓ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Ѓkernel
	ѓbias*
Ф
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses* 
Ѓ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
∞kernel
	±bias*
Ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses* 
$
Ѓ0
ѓ1
∞2
±3*
$
Ѓ0
ѓ1
∞2
±3*
* 
Ю
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses*

•trace_0
¶trace_1* 

Іtrace_0
®trace_1* 

Э0*

Э0*
* 
Ю
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses*

Ѓtrace_0* 

ѓtrace_0* 
_Y
VARIABLE_VALUEoutput_u/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEbpe_layer1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEbpe_layer1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEbpe_layer2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEbpe_layer2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
™
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
21*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
Ю0
Я1*

Ю0
Я1*
* 
Ю
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses*

µtrace_0* 

ґtrace_0* 
* 
* 
* 
Ь
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses* 

Љtrace_0* 

љtrace_0* 

†0
°1*

†0
°1*
* 
Ю
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*

√trace_0* 

ƒtrace_0* 
* 
* 
* 
Ь
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

 trace_0* 

Ћtrace_0* 
* 
 
Q0
R1
S2
T3*
* 
* 
* 
* 
* 
* 
* 

Ґ0
£1*

Ґ0
£1*
* 
Ю
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*

—trace_0* 

“trace_0* 
* 
* 
* 
Ь
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses* 

Ўtrace_0* 

ўtrace_0* 

§0
•1*

§0
•1*
* 
Ю
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses*

яtrace_0* 

аtrace_0* 
* 
* 
* 
Ь
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
І	variables
®trainable_variables
©regularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses* 

жtrace_0* 

зtrace_0* 
* 
 
[0
\1
]2
^3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
s0
t1
u2
v3
w4
x5*
* 
* 
* 
* 
* 
* 
* 

¶0
І1*

¶0
І1*
* 
Ю
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
∆	variables
«trainable_variables
»regularization_losses
 __call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses*
* 
* 
* 
* 

®0
©1*

®0
©1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
ќ	variables
ѕtrainable_variables
–regularization_losses
“__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses*
* 
* 
* 
* 

™0
Ђ1*

™0
Ђ1*
* 
Ю
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses* 
* 
* 
* 

ђ0
≠1*

ђ0
≠1*
* 
Ю
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
Ѓ0
ѓ1*

Ѓ0
ѓ1*
* 
Ю
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

Лtrace_0* 

Мtrace_0* 
* 
* 
* 
Ь
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 

∞0
±1*

∞0
±1*
* 
Ю
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
* 
* 
* 
Ь
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses* 

†trace_0* 

°trace_0* 
* 
$
Н0
О1
П2
Р3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
Я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebve_layer_1/kernelbve_layer_1/biasbve_layer_2/kernelbve_layer_2/biasdense/kernel
dense/biasoutput_u/kernelspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/biasConst*(
Tin!
2*
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
 __inference__traced_save_4656718
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebve_layer_1/kernelbve_layer_1/biasbve_layer_2/kernelbve_layer_2/biasdense/kernel
dense/biasoutput_u/kernelspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/bias*'
Tin 
2*
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
#__inference__traced_restore_4656808Эт
†
Я
$__inference_internal_grad_fn_4656213
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Y
mul_1Mulmul_betamul_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@S
SquareSquaremul_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:TP
+
_output_shapes
:€€€€€€€€€@
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
Џ
g
I__inference_activation_5_layer_call_and_return_conditional_losses_4654286

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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@≥
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654277*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
И#
Б
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@„
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655287*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
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
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
–
Ю
$__inference_internal_grad_fn_4655997
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1p
mulMulmul_beta
mul_inputs^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_1Mulmul_beta
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
SquareSquare
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:<8
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
Ф"
ы
B__inference_dense_layer_call_and_return_conditional_losses_4655474

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
mulMulbeta:output:0BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@a
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@≈
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655465*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: g

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
Н
Ј
$__inference_internal_grad_fn_4656537
result_grads_0
result_grads_1
result_grads_2
mul_model_dense_beta
mul_model_dense_biasadd
identity

identity_1А
mulMulmul_model_dense_betamul_model_dense_biasadd^result_grads_0*
T0*+
_output_shapes
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@q
mul_1Mulmul_model_dense_betamul_model_dense_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@_
SquareSquaremul_model_dense_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:`\
+
_output_shapes
:€€€€€€€€€@
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
_user_specified_nameresult_grads_2:[W
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ƒ
ю
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4655652

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
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
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∆
b
F__inference_rescaling_layer_call_and_return_conditional_losses_4654373

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
†
Я
$__inference_internal_grad_fn_4656240
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Y
mul_1Mulmul_betamul_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@S
SquareSquaremul_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:TP
+
_output_shapes
:€€€€€€€€€@
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
Ц	
…
#__inference_U_layer_call_fn_4654318
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4654289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654314:'#
!
_user_specified_name	4654312:'#
!
_user_specified_name	4654310:'#
!
_user_specified_name	4654308:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
у	
с
@__inference_ou1_layer_call_and_return_conditional_losses_4654239

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
Љ
`
D__inference_flatten_layer_call_and_return_conditional_losses_4655485

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654747	
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
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
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
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4653915

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
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
:€€€€€€€€€
 
_user_specified_nameinputs
ю
g
I__inference_activation_1_layer_call_and_return_conditional_losses_4655613

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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@ї
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655604*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ї
J
.__inference_activation_1_layer_call_fn_4655600

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4653982d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ф"
ы
B__inference_dense_layer_call_and_return_conditional_losses_4654637

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
mulMulbeta:output:0BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@a
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@≈
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654628*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: g

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
Џ
g
I__inference_activation_4_layer_call_and_return_conditional_losses_4654257

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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@≥
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654248*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ё
J
.__inference_activation_2_layer_call_fn_4655657

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4654105m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ь
Ћ
$__inference_internal_grad_fn_4656483
result_grads_0
result_grads_1
result_grads_2#
mul_model_bpe_activation_3_beta$
 mul_model_bpe_bpe_layer2_biasadd
identity

identity_1Э
mulMulmul_model_bpe_activation_3_beta mul_model_bpe_bpe_layer2_biasadd^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@О
mul_1Mulmul_model_bpe_activation_3_beta mul_model_bpe_bpe_layer2_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@q
SquareSquare mul_model_bpe_bpe_layer2_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:rn
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
6
_user_specified_namemodel/BPE/bpe_layer2/BiasAdd:SO

_output_shapes
: 
5
_user_specified_namemodel/BPE/activation_3/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
щ
√
$__inference_internal_grad_fn_4656510
result_grads_0
result_grads_1
result_grads_2
mul_model_bve_layer_2_beta!
mul_model_bve_layer_2_biasadd
identity

identity_1Х
mulMulmul_model_bve_layer_2_betamul_model_bve_layer_2_biasadd^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ж
mul_1Mulmul_model_bve_layer_2_betamul_model_bve_layer_2_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@n
SquareSquaremul_model_bve_layer_2_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:ok
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
3
_user_specified_namemodel/bve_layer_2/BiasAdd:NJ

_output_shapes
: 
0
_user_specified_namemodel/bve_layer_2/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
∆
b
F__inference_rescaling_layer_call_and_return_conditional_losses_4655116

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654574	
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
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
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
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
н

`
D__inference_reshape_layer_call_and_return_conditional_losses_4655187

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
Щ
,__inference_bpe_layer1_layer_call_fn_4655622

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654087|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655618:'#
!
_user_specified_name	4655616:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ь
Ћ
$__inference_internal_grad_fn_4656456
result_grads_0
result_grads_1
result_grads_2#
mul_model_bpe_activation_2_beta$
 mul_model_bpe_bpe_layer1_biasadd
identity

identity_1Э
mulMulmul_model_bpe_activation_2_beta mul_model_bpe_bpe_layer1_biasadd^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@О
mul_1Mulmul_model_bpe_activation_2_beta mul_model_bpe_bpe_layer1_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@q
SquareSquare mul_model_bpe_bpe_layer1_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:rn
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
6
_user_specified_namemodel/BPE/bpe_layer1/BiasAdd:SO

_output_shapes
: 
5
_user_specified_namemodel/BPE/activation_2/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
у	
с
@__inference_ou1_layer_call_and_return_conditional_losses_4655746

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
с	
й
8__inference_spatial_transformation_layer_call_fn_4654027
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654023:'#
!
_user_specified_name	4654021:'#
!
_user_specified_name	4654019:'#
!
_user_specified_name	4654017:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
Ќ
Ѓ
E__inference_output_u_layer_call_and_return_conditional_losses_4654665

inputs0
matmul_readvariableop_resource:@
identityИҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€:
NoOpNoOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€@: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Х
√
@__inference_BPE_layer_call_and_return_conditional_losses_4654173
bpe_layer1_input$
bpe_layer1_4654160:@ 
bpe_layer1_4654162:@$
bpe_layer2_4654166:@@ 
bpe_layer2_4654168:@
identityИҐ"bpe_layer1/StatefulPartitionedCallҐ"bpe_layer2/StatefulPartitionedCallХ
"bpe_layer1/StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputbpe_layer1_4654160bpe_layer1_4654162*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654087ц
activation_2/PartitionedCallPartitionedCall+bpe_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4654105™
"bpe_layer2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bpe_layer2_4654166bpe_layer2_4654168*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654136ц
activation_3/PartitionedCallPartitionedCall+bpe_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4654154Б
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
NoOpNoOp#^bpe_layer1/StatefulPartitionedCall#^bpe_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2H
"bpe_layer1/StatefulPartitionedCall"bpe_layer1/StatefulPartitionedCall2H
"bpe_layer2/StatefulPartitionedCall"bpe_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4654168:'#
!
_user_specified_name	4654166:'#
!
_user_specified_name	4654162:'#
!
_user_specified_name	4654160:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
И
Р
>__inference_U_layer_call_and_return_conditional_losses_4654305
	ou1_input
ou1_4654292:@@
ou1_4654294:@
ou2_4654298:@@
ou2_4654300:@
identityИҐou1/StatefulPartitionedCallҐou2/StatefulPartitionedCallе
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_4654292ou1_4654294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4654239в
activation_4/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4654257Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ou2_4654298ou2_4654300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4654268в
activation_5/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4654286t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	4654300:'#
!
_user_specified_name	4654298:'#
!
_user_specified_name	4654294:'#
!
_user_specified_name	4654292:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
¬
ф
6__inference_multi_head_attention_layer_call_fn_4655342	
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
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654747s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4655338:'	#
!
_user_specified_name	4655336:'#
!
_user_specified_name	4655334:'#
!
_user_specified_name	4655332:'#
!
_user_specified_name	4655330:'#
!
_user_specified_name	4655328:'#
!
_user_specified_name	4655326:'#
!
_user_specified_name	4655324:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
И#
Б
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@„
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654440*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
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
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ы
Ю
$__inference_internal_grad_fn_4656159
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
г	
“
%__inference_BPE_layer_call_fn_4654186
bpe_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4654157|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654182:'#
!
_user_specified_name	4654180:'#
!
_user_specified_name	4654178:'#
!
_user_specified_name	4654176:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
Я
у
$__inference_internal_grad_fn_4656402
result_grads_0
result_grads_1
result_grads_24
0mul_model_spatial_transformation_activation_beta;
7mul_model_spatial_transformation_spatial_layer1_biasadd
identity

identity_1Љ
mulMul0mul_model_spatial_transformation_activation_beta7mul_model_spatial_transformation_spatial_layer1_biasadd^result_grads_0*
T0*+
_output_shapes
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@≠
mul_1Mul0mul_model_spatial_transformation_activation_beta7mul_model_spatial_transformation_spatial_layer1_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@
SquareSquare7mul_model_spatial_transformation_spatial_layer1_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:А|
+
_output_shapes
:€€€€€€€€€@
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
∆
т
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985
spatial_layer1_input(
spatial_layer1_4653916:@$
spatial_layer1_4653918:@(
spatial_layer2_4653965:@@$
spatial_layer2_4653967:@
identityИҐ&spatial_layer1/StatefulPartitionedCallҐ&spatial_layer2/StatefulPartitionedCall†
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_4653916spatial_layer1_4653918*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4653915н
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4653933ѓ
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_4653965spatial_layer2_4653967*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4653964с
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4653982x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4653967:'#
!
_user_specified_name	4653965:'#
!
_user_specified_name	4653918:'#
!
_user_specified_name	4653916:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
ѕ
g
I__inference_activation_3_layer_call_and_return_conditional_losses_4655727

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
mulMulbeta:output:0inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
mul_1MulinputsSigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ќ
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655718*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: i

Identity_1IdentityIdentityN:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
–
Ю
$__inference_internal_grad_fn_4656024
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1p
mulMulmul_beta
mul_inputs^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_1Mulmul_beta
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
SquareSquare
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:<8
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
Й
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654401

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањb
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ƒ
ю
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654136

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
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
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
Ѓ
E__inference_output_u_layer_call_and_return_conditional_losses_4655499

inputs0
matmul_readvariableop_resource:@
identityИҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€:
NoOpNoOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€@: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѕ
g
I__inference_activation_2_layer_call_and_return_conditional_losses_4655670

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
mulMulbeta:output:0inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
mul_1MulinputsSigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ќ
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655661*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: i

Identity_1IdentityIdentityN:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
И
Р
>__inference_U_layer_call_and_return_conditional_losses_4654289
	ou1_input
ou1_4654240:@@
ou1_4654242:@
ou2_4654269:@@
ou2_4654271:@
identityИҐou1/StatefulPartitionedCallҐou2/StatefulPartitionedCallе
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_4654240ou1_4654242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4654239в
activation_4/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4654257Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ou2_4654269ou2_4654271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4654268в
activation_5/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4654286t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	4654271:'#
!
_user_specified_name	4654269:'#
!
_user_specified_name	4654242:'#
!
_user_specified_name	4654240:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
№
I
-__inference_rescaling_3_layer_call_fn_4655161

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654401m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Й
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4655169

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањb
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4655129

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
Я
$__inference_internal_grad_fn_4656321
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
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:]Y
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
К
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654461

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
 :€€€€€€€€€€€€€€€€€€d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЛY
з
B__inference_model_layer_call_and_return_conditional_losses_4654670
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer%
bve_layer_1_4654450:@!
bve_layer_1_4654452:@0
spatial_transformation_4654477:@,
spatial_transformation_4654479:@0
spatial_transformation_4654481:@@,
spatial_transformation_4654483:@
bpe_4654486:@
bpe_4654488:@
bpe_4654490:@@
bpe_4654492:@%
bve_layer_2_4654534:@@!
bve_layer_2_4654536:@2
multi_head_attention_4654575:@@.
multi_head_attention_4654577:@2
multi_head_attention_4654579:@@.
multi_head_attention_4654581:@2
multi_head_attention_4654583:@@.
multi_head_attention_4654585:@2
multi_head_attention_4654587:@@*
multi_head_attention_4654589:@
dense_4654638:@@
dense_4654640:@
	u_4654650:@@
	u_4654652:@
	u_4654654:@@
	u_4654656:@"
output_u_4654666:@
identityИҐBPE/StatefulPartitionedCallҐU/StatefulPartitionedCallҐ#bve_layer_1/StatefulPartitionedCallҐ#bve_layer_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ output_u/StatefulPartitionedCallҐ.spatial_transformation/StatefulPartitionedCallњ
rescaling/PartitionedCallPartitionedCallx_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4654373√
rescaling_1/PartitionedCallPartitionedCallt_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4654382“
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654392“
rescaling_3/PartitionedCallPartitionedCall	tbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654401Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4654409Т
#bve_layer_1/StatefulPartitionedCallStatefulPartitionedCall	ubc_layerbve_layer_1_4654450bve_layer_1_4654452*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654461№
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4654475Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_4654477spatial_transformation_4654479spatial_transformation_4654481spatial_transformation_4654483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985≠
BPE/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0bpe_4654486bpe_4654488bpe_4654490bpe_4654492*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4654157µ
#bve_layer_2/StatefulPartitionedCallStatefulPartitionedCall,bve_layer_1/StatefulPartitionedCall:output:0bve_layer_2_4654534bve_layer_2_4654536*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533с
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_4654575multi_head_attention_4654577multi_head_attention_4654579multi_head_attention_4654581multi_head_attention_4654583multi_head_attention_4654585multi_head_attention_4654587multi_head_attention_4654589*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654574Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4654597Д
dense/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4654638dense_4654640*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4654637Џ
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4654648О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_4654650	u_4654652	u_4654654	u_4654656*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4654289ю
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_4654666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4654665x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp^BPE/StatefulPartitionedCall^U/StatefulPartitionedCall$^bve_layer_1/StatefulPartitionedCall$^bve_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall!^output_u/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
BPE/StatefulPartitionedCallBPE/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall2J
#bve_layer_1/StatefulPartitionedCall#bve_layer_1/StatefulPartitionedCall2J
#bve_layer_2/StatefulPartitionedCall#bve_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:'#
!
_user_specified_name	4654666:'#
!
_user_specified_name	4654656:'#
!
_user_specified_name	4654654:'#
!
_user_specified_name	4654652:'#
!
_user_specified_name	4654650:'#
!
_user_specified_name	4654640:'#
!
_user_specified_name	4654638:'#
!
_user_specified_name	4654589:'#
!
_user_specified_name	4654587:'#
!
_user_specified_name	4654585:'#
!
_user_specified_name	4654583:'#
!
_user_specified_name	4654581:'#
!
_user_specified_name	4654579:'#
!
_user_specified_name	4654577:'#
!
_user_specified_name	4654575:'#
!
_user_specified_name	4654536:'#
!
_user_specified_name	4654534:'#
!
_user_specified_name	4654492:'#
!
_user_specified_name	4654490:'#
!
_user_specified_name	4654488:'#
!
_user_specified_name	4654486:'
#
!
_user_specified_name	4654483:'	#
!
_user_specified_name	4654481:'#
!
_user_specified_name	4654479:'#
!
_user_specified_name	4654477:'#
!
_user_specified_name	4654452:'#
!
_user_specified_name	4654450:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
И#
Б
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@„
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654524*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
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
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Т
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4655200
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
 :€€€€€€€€€€€€€€€€€€d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:^Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
ё
J
.__inference_activation_3_layer_call_fn_4655714

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4654154m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655414	
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
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
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
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Џ
g
I__inference_activation_5_layer_call_and_return_conditional_losses_4655801

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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@≥
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655792*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≠
Щ
,__inference_bpe_layer2_layer_call_fn_4655679

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654136|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655675:'#
!
_user_specified_name	4655673:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ь
e
G__inference_activation_layer_call_and_return_conditional_losses_4655556

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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@ї
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655547*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
’
Я
$__inference_internal_grad_fn_4656267
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
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:]Y
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
у	
с
@__inference_ou2_layer_call_and_return_conditional_losses_4654268

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
∆
Ю
$__inference_internal_grad_fn_4655916
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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:OK
'
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ѓ
Ъ
-__inference_bve_layer_2_layer_call_fn_4655257

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655253:'#
!
_user_specified_name	4655251:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
–
Ю
$__inference_internal_grad_fn_4656078
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1p
mulMulmul_beta
mul_inputs^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_1Mulmul_beta
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
SquareSquare
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:<8
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ƒ
ю
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654087

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
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
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Љ
`
D__inference_flatten_layer_call_and_return_conditional_losses_4654648

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
’
Я
$__inference_internal_grad_fn_4656348
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
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:]Y
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
№
ј
$__inference_internal_grad_fn_4656564
result_grads_0
result_grads_1
result_grads_2!
mul_model_u_activation_4_beta
mul_model_u_ou1_biasadd
identity

identity_1Е
mulMulmul_model_u_activation_4_betamul_model_u_ou1_biasadd^result_grads_0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@v
mul_1Mulmul_model_u_activation_4_betamul_model_u_ou1_biasadd*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@[
SquareSquaremul_model_u_ou1_biasadd*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:\X
'
_output_shapes
:€€€€€€€€€@
-
_user_specified_namemodel/U/ou1/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/U/activation_4/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ЛY
з
B__inference_model_layer_call_and_return_conditional_losses_4654785
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer%
bve_layer_1_4654682:@!
bve_layer_1_4654684:@0
spatial_transformation_4654689:@,
spatial_transformation_4654691:@0
spatial_transformation_4654693:@@,
spatial_transformation_4654695:@
bpe_4654698:@
bpe_4654700:@
bpe_4654702:@@
bpe_4654704:@%
bve_layer_2_4654707:@@!
bve_layer_2_4654709:@2
multi_head_attention_4654748:@@.
multi_head_attention_4654750:@2
multi_head_attention_4654752:@@.
multi_head_attention_4654754:@2
multi_head_attention_4654756:@@.
multi_head_attention_4654758:@2
multi_head_attention_4654760:@@*
multi_head_attention_4654762:@
dense_4654766:@@
dense_4654768:@
	u_4654772:@@
	u_4654774:@
	u_4654776:@@
	u_4654778:@"
output_u_4654781:@
identityИҐBPE/StatefulPartitionedCallҐU/StatefulPartitionedCallҐ#bve_layer_1/StatefulPartitionedCallҐ#bve_layer_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ output_u/StatefulPartitionedCallҐ.spatial_transformation/StatefulPartitionedCallњ
rescaling/PartitionedCallPartitionedCallx_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4654373√
rescaling_1/PartitionedCallPartitionedCallt_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4654382“
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654392“
rescaling_3/PartitionedCallPartitionedCall	tbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654401Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4654409Т
#bve_layer_1/StatefulPartitionedCallStatefulPartitionedCall	ubc_layerbve_layer_1_4654682bve_layer_1_4654684*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654461№
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4654475Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_4654689spatial_transformation_4654691spatial_transformation_4654693spatial_transformation_4654695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001≠
BPE/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0bpe_4654698bpe_4654700bpe_4654702bpe_4654704*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4654173µ
#bve_layer_2/StatefulPartitionedCallStatefulPartitionedCall,bve_layer_1/StatefulPartitionedCall:output:0bve_layer_2_4654707bve_layer_2_4654709*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533с
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_4654748multi_head_attention_4654750multi_head_attention_4654752multi_head_attention_4654754multi_head_attention_4654756multi_head_attention_4654758multi_head_attention_4654760multi_head_attention_4654762*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654747Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4654597Д
dense/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4654766dense_4654768*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4654637Џ
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4654648О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_4654772	u_4654774	u_4654776	u_4654778*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4654305ю
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_4654781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4654665x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp^BPE/StatefulPartitionedCall^U/StatefulPartitionedCall$^bve_layer_1/StatefulPartitionedCall$^bve_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall!^output_u/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
BPE/StatefulPartitionedCallBPE/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall2J
#bve_layer_1/StatefulPartitionedCall#bve_layer_1/StatefulPartitionedCall2J
#bve_layer_2/StatefulPartitionedCall#bve_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:'#
!
_user_specified_name	4654781:'#
!
_user_specified_name	4654778:'#
!
_user_specified_name	4654776:'#
!
_user_specified_name	4654774:'#
!
_user_specified_name	4654772:'#
!
_user_specified_name	4654768:'#
!
_user_specified_name	4654766:'#
!
_user_specified_name	4654762:'#
!
_user_specified_name	4654760:'#
!
_user_specified_name	4654758:'#
!
_user_specified_name	4654756:'#
!
_user_specified_name	4654754:'#
!
_user_specified_name	4654752:'#
!
_user_specified_name	4654750:'#
!
_user_specified_name	4654748:'#
!
_user_specified_name	4654709:'#
!
_user_specified_name	4654707:'#
!
_user_specified_name	4654704:'#
!
_user_specified_name	4654702:'#
!
_user_specified_name	4654700:'#
!
_user_specified_name	4654698:'
#
!
_user_specified_name	4654695:'	#
!
_user_specified_name	4654693:'#
!
_user_specified_name	4654691:'#
!
_user_specified_name	4654689:'#
!
_user_specified_name	4654684:'#
!
_user_specified_name	4654682:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Ы
Ю
$__inference_internal_grad_fn_4656132
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ю
g
I__inference_activation_1_layer_call_and_return_conditional_losses_4653982

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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@ї
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653973*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ю
†
'__inference_model_layer_call_fn_4654911
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
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

unknown_25:@
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_25*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*=
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4654785o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654907:'#
!
_user_specified_name	4654905:'#
!
_user_specified_name	4654903:'#
!
_user_specified_name	4654901:'#
!
_user_specified_name	4654899:'#
!
_user_specified_name	4654897:'#
!
_user_specified_name	4654895:'#
!
_user_specified_name	4654893:'#
!
_user_specified_name	4654891:'#
!
_user_specified_name	4654889:'#
!
_user_specified_name	4654887:'#
!
_user_specified_name	4654885:'#
!
_user_specified_name	4654883:'#
!
_user_specified_name	4654881:'#
!
_user_specified_name	4654879:'#
!
_user_specified_name	4654877:'#
!
_user_specified_name	4654875:'#
!
_user_specified_name	4654873:'#
!
_user_specified_name	4654871:'#
!
_user_specified_name	4654869:'#
!
_user_specified_name	4654867:'
#
!
_user_specified_name	4654865:'	#
!
_user_specified_name	4654863:'#
!
_user_specified_name	4654861:'#
!
_user_specified_name	4654859:'#
!
_user_specified_name	4654857:'#
!
_user_specified_name	4654855:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Х
√
@__inference_BPE_layer_call_and_return_conditional_losses_4654157
bpe_layer1_input$
bpe_layer1_4654088:@ 
bpe_layer1_4654090:@$
bpe_layer2_4654137:@@ 
bpe_layer2_4654139:@
identityИҐ"bpe_layer1/StatefulPartitionedCallҐ"bpe_layer2/StatefulPartitionedCallХ
"bpe_layer1/StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputbpe_layer1_4654088bpe_layer1_4654090*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654087ц
activation_2/PartitionedCallPartitionedCall+bpe_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4654105™
"bpe_layer2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bpe_layer2_4654137bpe_layer2_4654139*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654136ц
activation_3/PartitionedCallPartitionedCall+bpe_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4654154Б
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
NoOpNoOp#^bpe_layer1/StatefulPartitionedCall#^bpe_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2H
"bpe_layer1/StatefulPartitionedCall"bpe_layer1/StatefulPartitionedCall2H
"bpe_layer2/StatefulPartitionedCall"bpe_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4654139:'#
!
_user_specified_name	4654137:'#
!
_user_specified_name	4654090:'#
!
_user_specified_name	4654088:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
∆
Ю
$__inference_internal_grad_fn_4655970
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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:OK
'
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ґ
H
,__inference_activation_layer_call_fn_4655543

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4653933d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
®
E
)__inference_flatten_layer_call_fn_4655479

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4654648`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
µ
Q
%__inference_add_layer_call_fn_4655420
inputs_0
inputs_1
identityњ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4654597d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
»
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4654382

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
с	
й
8__inference_spatial_transformation_layer_call_fn_4654014
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654010:'#
!
_user_specified_name	4654008:'#
!
_user_specified_name	4654006:'#
!
_user_specified_name	4654004:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
г	
“
%__inference_BPE_layer_call_fn_4654199
bpe_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4654173|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654195:'#
!
_user_specified_name	4654193:'#
!
_user_specified_name	4654191:'#
!
_user_specified_name	4654189:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
∆
Ю
$__inference_internal_grad_fn_4655889
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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:OK
'
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ƒ
ю
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4655709

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
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
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
л
Т
%__inference_ou2_layer_call_fn_4655773

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4654268o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655769:'#
!
_user_specified_name	4655767:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
I
-__inference_rescaling_2_layer_call_fn_4655147

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654392m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
®
I
-__inference_rescaling_1_layer_call_fn_4655121

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4654382`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
g
I__inference_activation_3_layer_call_and_return_conditional_losses_4654154

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
mulMulbeta:output:0inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
mul_1MulinputsSigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ќ
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654145*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: i

Identity_1IdentityIdentityN:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ь
Ю
%__inference_signature_wrapper_4655103
	xbc_layer
t_input
	tbc_layer
	ubc_layer
x_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
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

unknown_25:@
identityИҐStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_25*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*=
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_4653883o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655099:'#
!
_user_specified_name	4655097:'#
!
_user_specified_name	4655095:'#
!
_user_specified_name	4655093:'#
!
_user_specified_name	4655091:'#
!
_user_specified_name	4655089:'#
!
_user_specified_name	4655087:'#
!
_user_specified_name	4655085:'#
!
_user_specified_name	4655083:'#
!
_user_specified_name	4655081:'#
!
_user_specified_name	4655079:'#
!
_user_specified_name	4655077:'#
!
_user_specified_name	4655075:'#
!
_user_specified_name	4655073:'#
!
_user_specified_name	4655071:'#
!
_user_specified_name	4655069:'#
!
_user_specified_name	4655067:'#
!
_user_specified_name	4655065:'#
!
_user_specified_name	4655063:'#
!
_user_specified_name	4655061:'#
!
_user_specified_name	4655059:'
#
!
_user_specified_name	4655057:'	#
!
_user_specified_name	4655055:'#
!
_user_specified_name	4655053:'#
!
_user_specified_name	4655051:'#
!
_user_specified_name	4655049:'#
!
_user_specified_name	4655047:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:_ [
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655378	
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
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
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
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4653964

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
£
~
*__inference_output_u_layer_call_fn_4655492

inputs
unknown:@
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4654665o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€@: 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655488:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѕ
g
I__inference_activation_2_layer_call_and_return_conditional_losses_4654105

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?`
mulMulbeta:output:0inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
mul_1MulinputsSigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ќ
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4654096*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: i

Identity_1IdentityIdentityN:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
€
Ф
'__inference_dense_layer_call_fn_4655435

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4654637s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655431:'#
!
_user_specified_name	4655429:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ц	
…
#__inference_U_layer_call_fn_4654331
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4654305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654327:'#
!
_user_specified_name	4654325:'#
!
_user_specified_name	4654323:'#
!
_user_specified_name	4654321:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
™
J
.__inference_activation_5_layer_call_fn_4655788

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4654286`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
С
Э
0__inference_spatial_layer1_layer_call_fn_4655508

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4653915s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655504:'#
!
_user_specified_name	4655502:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
Y
-__inference_concatenate_layer_call_fn_4655135
inputs_0
inputs_1
identity√
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4654409`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0
®
E
)__inference_reshape_layer_call_fn_4655174

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4654475d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у	
с
@__inference_ou2_layer_call_and_return_conditional_losses_4655783

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
Ы
Ю
$__inference_internal_grad_fn_4656186
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
л
Т
%__inference_ou1_layer_call_fn_4655736

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4654239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655732:'#
!
_user_specified_name	4655730:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ь
e
G__inference_activation_layer_call_and_return_conditional_losses_4653933

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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@W
mul_1MulinputsSigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@U
IdentityIdentity	mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@ї
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653924*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: `

Identity_1IdentityIdentityN:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
–
Ю
$__inference_internal_grad_fn_4656051
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1p
mulMulmul_beta
mul_inputs^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_1Mulmul_beta
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
SquareSquare
mul_inputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:<8
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
’
Я
$__inference_internal_grad_fn_4656294
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
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@b
mul_1Mulmul_betamul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@\
SquareSquaremul_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:]Y
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
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
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
∆
т
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001
spatial_layer1_input(
spatial_layer1_4653988:@$
spatial_layer1_4653990:@(
spatial_layer2_4653994:@@$
spatial_layer2_4653996:@
identityИҐ&spatial_layer1/StatefulPartitionedCallҐ&spatial_layer2/StatefulPartitionedCall†
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_4653988spatial_layer1_4653990*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4653915н
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4653933ѓ
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_4653994spatial_layer2_4653996*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4653964с
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4653982x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4653996:'#
!
_user_specified_name	4653994:'#
!
_user_specified_name	4653990:'#
!
_user_specified_name	4653988:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
Ю
†
'__inference_model_layer_call_fn_4654848
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@
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

unknown_25:@
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_25*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*=
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4654670o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654844:'#
!
_user_specified_name	4654842:'#
!
_user_specified_name	4654840:'#
!
_user_specified_name	4654838:'#
!
_user_specified_name	4654836:'#
!
_user_specified_name	4654834:'#
!
_user_specified_name	4654832:'#
!
_user_specified_name	4654830:'#
!
_user_specified_name	4654828:'#
!
_user_specified_name	4654826:'#
!
_user_specified_name	4654824:'#
!
_user_specified_name	4654822:'#
!
_user_specified_name	4654820:'#
!
_user_specified_name	4654818:'#
!
_user_specified_name	4654816:'#
!
_user_specified_name	4654814:'#
!
_user_specified_name	4654812:'#
!
_user_specified_name	4654810:'#
!
_user_specified_name	4654808:'#
!
_user_specified_name	4654806:'#
!
_user_specified_name	4654804:'
#
!
_user_specified_name	4654802:'	#
!
_user_specified_name	4654800:'#
!
_user_specified_name	4654798:'#
!
_user_specified_name	4654796:'#
!
_user_specified_name	4654794:'#
!
_user_specified_name	4654792:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Ѕ
t
H__inference_concatenate_layer_call_and_return_conditional_losses_4655142
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
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0
§
G
+__inference_rescaling_layer_call_fn_4655108

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4654373`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
§
”
#__inference__traced_restore_4656808
file_prefix5
#assignvariableop_bve_layer_1_kernel:@1
#assignvariableop_1_bve_layer_1_bias:@7
%assignvariableop_2_bve_layer_2_kernel:@@1
#assignvariableop_3_bve_layer_2_bias:@1
assignvariableop_4_dense_kernel:@@+
assignvariableop_5_dense_bias:@4
"assignvariableop_6_output_u_kernel:@:
(assignvariableop_7_spatial_layer1_kernel:@4
&assignvariableop_8_spatial_layer1_bias:@:
(assignvariableop_9_spatial_layer2_kernel:@@5
'assignvariableop_10_spatial_layer2_bias:@7
%assignvariableop_11_bpe_layer1_kernel:@1
#assignvariableop_12_bpe_layer1_bias:@7
%assignvariableop_13_bpe_layer2_kernel:@@1
#assignvariableop_14_bpe_layer2_bias:@K
5assignvariableop_15_multi_head_attention_query_kernel:@@E
3assignvariableop_16_multi_head_attention_query_bias:@I
3assignvariableop_17_multi_head_attention_key_kernel:@@C
1assignvariableop_18_multi_head_attention_key_bias:@K
5assignvariableop_19_multi_head_attention_value_kernel:@@E
3assignvariableop_20_multi_head_attention_value_bias:@V
@assignvariableop_21_multi_head_attention_attention_output_kernel:@@L
>assignvariableop_22_multi_head_attention_attention_output_bias:@0
assignvariableop_23_ou1_kernel:@@*
assignvariableop_24_ou1_bias:@0
assignvariableop_25_ou2_kernel:@@*
assignvariableop_26_ou2_bias:@
identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ї

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б	
value„	B‘	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ђ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOpAssignVariableOp#assignvariableop_bve_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOp#assignvariableop_1_bve_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp%assignvariableop_2_bve_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOp#assignvariableop_3_bve_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_output_u_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_7AssignVariableOp(assignvariableop_7_spatial_layer1_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_8AssignVariableOp&assignvariableop_8_spatial_layer1_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_9AssignVariableOp(assignvariableop_9_spatial_layer2_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_10AssignVariableOp'assignvariableop_10_spatial_layer2_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_11AssignVariableOp%assignvariableop_11_bpe_layer1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_bpe_layer1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_13AssignVariableOp%assignvariableop_13_bpe_layer2_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_bpe_layer2_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_15AssignVariableOp5assignvariableop_15_multi_head_attention_query_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_16AssignVariableOp3assignvariableop_16_multi_head_attention_query_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_17AssignVariableOp3assignvariableop_17_multi_head_attention_key_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp1assignvariableop_18_multi_head_attention_key_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_19AssignVariableOp5assignvariableop_19_multi_head_attention_value_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_20AssignVariableOp3assignvariableop_20_multi_head_attention_value_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_21AssignVariableOp@assignvariableop_21_multi_head_attention_attention_output_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_22AssignVariableOp>assignvariableop_22_multi_head_attention_attention_output_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_23AssignVariableOpassignvariableop_23_ou1_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_24AssignVariableOpassignvariableop_24_ou1_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_25AssignVariableOpassignvariableop_25_ou2_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_26AssignVariableOpassignvariableop_26_ou2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 °
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: к
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_28Identity_28:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
ou2/bias:*&
$
_user_specified_name
ou2/kernel:($
"
_user_specified_name
ou1/bias:*&
$
_user_specified_name
ou1/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:/+
)
_user_specified_namebpe_layer2/bias:1-
+
_user_specified_namebpe_layer2/kernel:/+
)
_user_specified_namebpe_layer1/bias:1-
+
_user_specified_namebpe_layer1/kernel:3/
-
_user_specified_namespatial_layer2/bias:5
1
/
_user_specified_namespatial_layer2/kernel:3	/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:/+
)
_user_specified_nameoutput_u/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:0,
*
_user_specified_namebve_layer_2/bias:2.
,
_user_specified_namebve_layer_2/kernel:0,
*
_user_specified_namebve_layer_1/bias:2.
,
_user_specified_namebve_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
џ
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4655156

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @S
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
addAddV2mul:z:0
Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
Э
0__inference_spatial_layer2_layer_call_fn_4655565

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4653964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655561:'#
!
_user_specified_name	4655559:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
ј
$__inference_internal_grad_fn_4656591
result_grads_0
result_grads_1
result_grads_2!
mul_model_u_activation_5_beta
mul_model_u_ou2_biasadd
identity

identity_1Е
mulMulmul_model_u_activation_5_betamul_model_u_ou2_biasadd^result_grads_0*
T0*'
_output_shapes
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@v
mul_1Mulmul_model_u_activation_5_betamul_model_u_ou2_biasadd*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@[
SquareSquaremul_model_u_ou2_biasadd*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:\X
'
_output_shapes
:€€€€€€€€€@
-
_user_specified_namemodel/U/ou2/BiasAdd:QM

_output_shapes
: 
3
_user_specified_namemodel/U/activation_5/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
€
[
/__inference_concatenate_1_layer_call_fn_4655193
inputs_0
inputs_1
identity“
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654461m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:^Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
€‘
“
 __inference__traced_save_4656718
file_prefix;
)read_disablecopyonread_bve_layer_1_kernel:@7
)read_1_disablecopyonread_bve_layer_1_bias:@=
+read_2_disablecopyonread_bve_layer_2_kernel:@@7
)read_3_disablecopyonread_bve_layer_2_bias:@7
%read_4_disablecopyonread_dense_kernel:@@1
#read_5_disablecopyonread_dense_bias:@:
(read_6_disablecopyonread_output_u_kernel:@@
.read_7_disablecopyonread_spatial_layer1_kernel:@:
,read_8_disablecopyonread_spatial_layer1_bias:@@
.read_9_disablecopyonread_spatial_layer2_kernel:@@;
-read_10_disablecopyonread_spatial_layer2_bias:@=
+read_11_disablecopyonread_bpe_layer1_kernel:@7
)read_12_disablecopyonread_bpe_layer1_bias:@=
+read_13_disablecopyonread_bpe_layer2_kernel:@@7
)read_14_disablecopyonread_bpe_layer2_bias:@Q
;read_15_disablecopyonread_multi_head_attention_query_kernel:@@K
9read_16_disablecopyonread_multi_head_attention_query_bias:@O
9read_17_disablecopyonread_multi_head_attention_key_kernel:@@I
7read_18_disablecopyonread_multi_head_attention_key_bias:@Q
;read_19_disablecopyonread_multi_head_attention_value_kernel:@@K
9read_20_disablecopyonread_multi_head_attention_value_bias:@\
Fread_21_disablecopyonread_multi_head_attention_attention_output_kernel:@@R
Dread_22_disablecopyonread_multi_head_attention_attention_output_bias:@6
$read_23_disablecopyonread_ou1_kernel:@@0
"read_24_disablecopyonread_ou1_bias:@6
$read_25_disablecopyonread_ou2_kernel:@@0
"read_26_disablecopyonread_ou2_bias:@
savev2_const
identity_55ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
: {
Read/DisableCopyOnReadDisableCopyOnRead)read_disablecopyonread_bve_layer_1_kernel"/device:CPU:0*
_output_shapes
 •
Read/ReadVariableOpReadVariableOp)read_disablecopyonread_bve_layer_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:@}
Read_1/DisableCopyOnReadDisableCopyOnRead)read_1_disablecopyonread_bve_layer_1_bias"/device:CPU:0*
_output_shapes
 •
Read_1/ReadVariableOpReadVariableOp)read_1_disablecopyonread_bve_layer_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:@
Read_2/DisableCopyOnReadDisableCopyOnRead+read_2_disablecopyonread_bve_layer_2_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_2/ReadVariableOpReadVariableOp+read_2_disablecopyonread_bve_layer_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@@}
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_bve_layer_2_bias"/device:CPU:0*
_output_shapes
 •
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_bve_layer_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:@y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 •
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
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

:@@w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Я
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_dense_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
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
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_output_u_kernel"/device:CPU:0*
_output_shapes
 ®
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_output_u_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_7/DisableCopyOnReadDisableCopyOnRead.read_7_disablecopyonread_spatial_layer1_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read_7/ReadVariableOpReadVariableOp.read_7_disablecopyonread_spatial_layer1_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:@А
Read_8/DisableCopyOnReadDisableCopyOnRead,read_8_disablecopyonread_spatial_layer1_bias"/device:CPU:0*
_output_shapes
 ®
Read_8/ReadVariableOpReadVariableOp,read_8_disablecopyonread_spatial_layer1_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@В
Read_9/DisableCopyOnReadDisableCopyOnRead.read_9_disablecopyonread_spatial_layer2_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read_9/ReadVariableOpReadVariableOp.read_9_disablecopyonread_spatial_layer2_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:@@В
Read_10/DisableCopyOnReadDisableCopyOnRead-read_10_disablecopyonread_spatial_layer2_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_10/ReadVariableOpReadVariableOp-read_10_disablecopyonread_spatial_layer2_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@А
Read_11/DisableCopyOnReadDisableCopyOnRead+read_11_disablecopyonread_bpe_layer1_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_11/ReadVariableOpReadVariableOp+read_11_disablecopyonread_bpe_layer1_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_bpe_layer1_bias"/device:CPU:0*
_output_shapes
 І
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_bpe_layer1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@А
Read_13/DisableCopyOnReadDisableCopyOnRead+read_13_disablecopyonread_bpe_layer2_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_13/ReadVariableOpReadVariableOp+read_13_disablecopyonread_bpe_layer2_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:@@~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_bpe_layer2_bias"/device:CPU:0*
_output_shapes
 І
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_bpe_layer2_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_multi_head_attention_query_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_16/DisableCopyOnReadDisableCopyOnRead9read_16_disablecopyonread_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 ї
Read_16/ReadVariableOpReadVariableOp9read_16_disablecopyonread_multi_head_attention_query_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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

:@О
Read_17/DisableCopyOnReadDisableCopyOnRead9read_17_disablecopyonread_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 њ
Read_17/ReadVariableOpReadVariableOp9read_17_disablecopyonread_multi_head_attention_key_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@М
Read_18/DisableCopyOnReadDisableCopyOnRead7read_18_disablecopyonread_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 є
Read_18/ReadVariableOpReadVariableOp7read_18_disablecopyonread_multi_head_attention_key_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@Р
Read_19/DisableCopyOnReadDisableCopyOnRead;read_19_disablecopyonread_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_19/ReadVariableOpReadVariableOp;read_19_disablecopyonread_multi_head_attention_value_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_20/DisableCopyOnReadDisableCopyOnRead9read_20_disablecopyonread_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 ї
Read_20/ReadVariableOpReadVariableOp9read_20_disablecopyonread_multi_head_attention_value_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 ћ
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_multi_head_attention_attention_output_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Щ
Read_22/DisableCopyOnReadDisableCopyOnReadDread_22_disablecopyonread_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 ¬
Read_22/ReadVariableOpReadVariableOpDread_22_disablecopyonread_multi_head_attention_attention_output_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_23/DisableCopyOnReadDisableCopyOnRead$read_23_disablecopyonread_ou1_kernel"/device:CPU:0*
_output_shapes
 ¶
Read_23/ReadVariableOpReadVariableOp$read_23_disablecopyonread_ou1_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_24/DisableCopyOnReadDisableCopyOnRead"read_24_disablecopyonread_ou1_bias"/device:CPU:0*
_output_shapes
 †
Read_24/ReadVariableOpReadVariableOp"read_24_disablecopyonread_ou1_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_ou2_kernel"/device:CPU:0*
_output_shapes
 ¶
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_ou2_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_26/DisableCopyOnReadDisableCopyOnRead"read_26_disablecopyonread_ou2_bias"/device:CPU:0*
_output_shapes
 †
Read_26/ReadVariableOpReadVariableOp"read_26_disablecopyonread_ou2_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@Є

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б	
value„	B‘	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH•
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: ґ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
ou2/bias:*&
$
_user_specified_name
ou2/kernel:($
"
_user_specified_name
ou1/bias:*&
$
_user_specified_name
ou1/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:/+
)
_user_specified_namebpe_layer2/bias:1-
+
_user_specified_namebpe_layer2/kernel:/+
)
_user_specified_namebpe_layer1/bias:1-
+
_user_specified_namebpe_layer1/kernel:3/
-
_user_specified_namespatial_layer2/bias:5
1
/
_user_specified_namespatial_layer2/kernel:3	/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:/+
)
_user_specified_nameoutput_u/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:0,
*
_user_specified_namebve_layer_2/bias:2.
,
_user_specified_namebve_layer_2/kernel:0,
*
_user_specified_namebve_layer_1/bias:2.
,
_user_specified_namebve_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
И#
Б
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
mulMulbeta:output:0BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@j
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@„
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655239*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: p

Identity_1IdentityIdentityN:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
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
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
¬
ф
6__inference_multi_head_attention_layer_call_fn_4655319	
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
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654574s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4655315:'	#
!
_user_specified_name	4655313:'#
!
_user_specified_name	4655311:'#
!
_user_specified_name	4655309:'#
!
_user_specified_name	4655307:'#
!
_user_specified_name	4655305:'#
!
_user_specified_name	4655303:'#
!
_user_specified_name	4655301:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
щ
√
$__inference_internal_grad_fn_4656375
result_grads_0
result_grads_1
result_grads_2
mul_model_bve_layer_1_beta!
mul_model_bve_layer_1_biasadd
identity

identity_1Х
mulMulmul_model_bve_layer_1_betamul_model_bve_layer_1_biasadd^result_grads_0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
SigmoidSigmoidmul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ж
mul_1Mulmul_model_bve_layer_1_betamul_model_bve_layer_1_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
subSubsub/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@_
mul_2Mul	mul_1:z:0sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?j
addAddV2add/Const:output:0	mul_2:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_3MulSigmoid:y:0add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@n
SquareSquaremul_model_bve_layer_1_biasadd*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@g
mul_4Mulresult_grads_0
Square:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@c
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?n
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Z
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
 :€€€€€€€€€€€€€€€€€€@^
IdentityIdentity	mul_7:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : :€€€€€€€€€€€€€€€€€€@:ok
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
3
_user_specified_namemodel/bve_layer_1/BiasAdd:NJ

_output_shapes
: 
0
_user_specified_namemodel/bve_layer_1/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:d`
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Н И
&
 _has_manual_control_dependencies(
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ј”
И
"__inference__wrapped_model_4653883
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layerE
3model_bve_layer_1_tensordot_readvariableop_resource:@?
1model_bve_layer_1_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer1_tensordot_readvariableop_resource:@Y
Kmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer2_tensordot_readvariableop_resource:@@Y
Kmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource:@H
6model_bpe_bpe_layer1_tensordot_readvariableop_resource:@B
4model_bpe_bpe_layer1_biasadd_readvariableop_resource:@H
6model_bpe_bpe_layer2_tensordot_readvariableop_resource:@@B
4model_bpe_bpe_layer2_biasadd_readvariableop_resource:@E
3model_bve_layer_2_tensordot_readvariableop_resource:@@?
1model_bve_layer_2_biasadd_readvariableop_resource:@\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_query_add_readvariableop_resource:@Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@L
:model_multi_head_attention_key_add_readvariableop_resource:@\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_value_add_readvariableop_resource:@g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:@?
-model_dense_tensordot_readvariableop_resource:@@9
+model_dense_biasadd_readvariableop_resource:@<
*model_u_ou1_matmul_readvariableop_resource:@@9
+model_u_ou1_biasadd_readvariableop_resource:@<
*model_u_ou2_matmul_readvariableop_resource:@@9
+model_u_ou2_biasadd_readvariableop_resource:@?
-model_output_u_matmul_readvariableop_resource:@
identityИҐ+model/BPE/bpe_layer1/BiasAdd/ReadVariableOpҐ-model/BPE/bpe_layer1/Tensordot/ReadVariableOpҐ+model/BPE/bpe_layer2/BiasAdd/ReadVariableOpҐ-model/BPE/bpe_layer2/Tensordot/ReadVariableOpҐ"model/U/ou1/BiasAdd/ReadVariableOpҐ!model/U/ou1/MatMul/ReadVariableOpҐ"model/U/ou2/BiasAdd/ReadVariableOpҐ!model/U/ou2/MatMul/ReadVariableOpҐ(model/bve_layer_1/BiasAdd/ReadVariableOpҐ*model/bve_layer_1/Tensordot/ReadVariableOpҐ(model/bve_layer_2/BiasAdd/ReadVariableOpҐ*model/bve_layer_2/Tensordot/ReadVariableOpҐ"model/dense/BiasAdd/ReadVariableOpҐ$model/dense/Tensordot/ReadVariableOpҐ>model/multi_head_attention/attention_output/add/ReadVariableOpҐHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpҐ1model/multi_head_attention/key/add/ReadVariableOpҐ;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/query/add/ReadVariableOpҐ=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/value/add/ReadVariableOpҐ=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpҐ$model/output_u/MatMul/ReadVariableOpҐBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpҐDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpҐBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpҐDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp[
model/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @]
model/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањv
model/rescaling/mulMulx_inputmodel/rescaling/Cast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
model/rescaling/addAddV2model/rescaling/mul:z:0!model/rescaling/Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
model/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
model/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањz
model/rescaling_1/mulMult_input!model/rescaling_1/Cast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Р
model/rescaling_1/addAddV2model/rescaling_1/mul:z:0#model/rescaling_1/Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
model/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
model/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€u
model/rescaling_2/Cast_1Cast#model/rescaling_2/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Й
model/rescaling_2/mulMul	xbc_layer!model/rescaling_2/Cast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
model/rescaling_2/addAddV2model/rescaling_2/mul:z:0model/rescaling_2/Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€]
model/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
model/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњЙ
model/rescaling_3/mulMul	tbc_layer!model/rescaling_3/Cast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Э
model/rescaling_3/addAddV2model/rescaling_3/mul:z:0#model/rescaling_3/Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ї
model/concatenate/concatConcatV2model/rescaling/add:z:0model/rescaling_1/add:z:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ю
*model/bve_layer_1/Tensordot/ReadVariableOpReadVariableOp3model_bve_layer_1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0j
 model/bve_layer_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model/bve_layer_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
!model/bve_layer_1/Tensordot/ShapeShape	ubc_layer*
T0*
_output_shapes
::нѕk
)model/bve_layer_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$model/bve_layer_1/Tensordot/GatherV2GatherV2*model/bve_layer_1/Tensordot/Shape:output:0)model/bve_layer_1/Tensordot/free:output:02model/bve_layer_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model/bve_layer_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&model/bve_layer_1/Tensordot/GatherV2_1GatherV2*model/bve_layer_1/Tensordot/Shape:output:0)model/bve_layer_1/Tensordot/axes:output:04model/bve_layer_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model/bve_layer_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 model/bve_layer_1/Tensordot/ProdProd-model/bve_layer_1/Tensordot/GatherV2:output:0*model/bve_layer_1/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#model/bve_layer_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"model/bve_layer_1/Tensordot/Prod_1Prod/model/bve_layer_1/Tensordot/GatherV2_1:output:0,model/bve_layer_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'model/bve_layer_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"model/bve_layer_1/Tensordot/concatConcatV2)model/bve_layer_1/Tensordot/free:output:0)model/bve_layer_1/Tensordot/axes:output:00model/bve_layer_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!model/bve_layer_1/Tensordot/stackPack)model/bve_layer_1/Tensordot/Prod:output:0+model/bve_layer_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:©
%model/bve_layer_1/Tensordot/transpose	Transpose	ubc_layer+model/bve_layer_1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
#model/bve_layer_1/Tensordot/ReshapeReshape)model/bve_layer_1/Tensordot/transpose:y:0*model/bve_layer_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ј
"model/bve_layer_1/Tensordot/MatMulMatMul,model/bve_layer_1/Tensordot/Reshape:output:02model/bve_layer_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@m
#model/bve_layer_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@k
)model/bve_layer_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$model/bve_layer_1/Tensordot/concat_1ConcatV2-model/bve_layer_1/Tensordot/GatherV2:output:0,model/bve_layer_1/Tensordot/Const_2:output:02model/bve_layer_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¬
model/bve_layer_1/TensordotReshape,model/bve_layer_1/Tensordot/MatMul:product:0-model/bve_layer_1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ц
(model/bve_layer_1/BiasAdd/ReadVariableOpReadVariableOp1model_bve_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ї
model/bve_layer_1/BiasAddBiasAdd$model/bve_layer_1/Tensordot:output:00model/bve_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
model/bve_layer_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?†
model/bve_layer_1/mulMulmodel/bve_layer_1/beta:output:0"model/bve_layer_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@~
model/bve_layer_1/SigmoidSigmoidmodel/bve_layer_1/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@†
model/bve_layer_1/mul_1Mul"model/bve_layer_1/BiasAdd:output:0model/bve_layer_1/Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@В
model/bve_layer_1/IdentityIdentitymodel/bve_layer_1/mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Я
model/bve_layer_1/IdentityN	IdentityNmodel/bve_layer_1/mul_1:z:0"model/bve_layer_1/BiasAdd:output:0model/bve_layer_1/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653587*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ќ
model/concatenate_1/concatConcatV2model/rescaling_2/add:z:0model/rescaling_3/add:z:0(model/concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€r
model/reshape/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
::нѕk
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
€€€€€€€€€«
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Я
model/reshape/ReshapeReshape!model/concatenate/concat:output:0$model/reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€“
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
::нѕЕ
Cmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
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
value	B : п
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
valueB: т
:model/spatial_transformation/spatial_layer1/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<model/spatial_transformation/spatial_layer1/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<model/spatial_transformation/spatial_layer1/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer1/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;model/spatial_transformation/spatial_layer1/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer1/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:й
?model/spatial_transformation/spatial_layer1/Tensordot/transpose	Transposemodel/reshape/Reshape:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€О
=model/spatial_transformation/spatial_layer1/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer1/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<model/spatial_transformation/spatial_layer1/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer1/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>model/spatial_transformation/spatial_layer1/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer1/TensordotReshapeFmodel/spatial_transformation/spatial_layer1/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@ 
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer1/BiasAddBiasAdd>model/spatial_transformation/spatial_layer1/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@q
,model/spatial_transformation/activation/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ё
+model/spatial_transformation/activation/mulMul5model/spatial_transformation/activation/beta:output:0<model/spatial_transformation/spatial_layer1/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@°
/model/spatial_transformation/activation/SigmoidSigmoid/model/spatial_transformation/activation/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Ё
-model/spatial_transformation/activation/mul_1Mul<model/spatial_transformation/spatial_layer1/BiasAdd:output:03model/spatial_transformation/activation/Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@•
0model/spatial_transformation/activation/IdentityIdentity1model/spatial_transformation/activation/mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@й
1model/spatial_transformation/activation/IdentityN	IdentityN1model/spatial_transformation/activation/mul_1:z:0<model/spatial_transformation/spatial_layer1/BiasAdd:output:05model/spatial_transformation/activation/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653633*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: “
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
valueB"       ≥
;model/spatial_transformation/spatial_layer2/Tensordot/ShapeShape:model/spatial_transformation/activation/IdentityN:output:0*
T0*
_output_shapes
::нѕЕ
Cmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
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
value	B : п
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
valueB: т
:model/spatial_transformation/spatial_layer2/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<model/spatial_transformation/spatial_layer2/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<model/spatial_transformation/spatial_layer2/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer2/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;model/spatial_transformation/spatial_layer2/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer2/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Е
?model/spatial_transformation/spatial_layer2/Tensordot/transpose	Transpose:model/spatial_transformation/activation/IdentityN:output:0Emodel/spatial_transformation/spatial_layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@О
=model/spatial_transformation/spatial_layer2/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer2/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<model/spatial_transformation/spatial_layer2/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer2/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>model/spatial_transformation/spatial_layer2/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer2/TensordotReshapeFmodel/spatial_transformation/spatial_layer2/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@ 
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer2/BiasAddBiasAdd>model/spatial_transformation/spatial_layer2/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@s
.model/spatial_transformation/activation_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
-model/spatial_transformation/activation_1/mulMul7model/spatial_transformation/activation_1/beta:output:0<model/spatial_transformation/spatial_layer2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@•
1model/spatial_transformation/activation_1/SigmoidSigmoid1model/spatial_transformation/activation_1/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@б
/model/spatial_transformation/activation_1/mul_1Mul<model/spatial_transformation/spatial_layer2/BiasAdd:output:05model/spatial_transformation/activation_1/Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@©
2model/spatial_transformation/activation_1/IdentityIdentity3model/spatial_transformation/activation_1/mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@п
3model/spatial_transformation/activation_1/IdentityN	IdentityN3model/spatial_transformation/activation_1/mul_1:z:0<model/spatial_transformation/spatial_layer2/BiasAdd:output:07model/spatial_transformation/activation_1/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653668*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: §
-model/BPE/bpe_layer1/Tensordot/ReadVariableOpReadVariableOp6model_bpe_bpe_layer1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#model/BPE/bpe_layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#model/BPE/bpe_layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Е
$model/BPE/bpe_layer1/Tensordot/ShapeShape#model/concatenate_1/concat:output:0*
T0*
_output_shapes
::нѕn
,model/BPE/bpe_layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'model/BPE/bpe_layer1/Tensordot/GatherV2GatherV2-model/BPE/bpe_layer1/Tensordot/Shape:output:0,model/BPE/bpe_layer1/Tensordot/free:output:05model/BPE/bpe_layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.model/BPE/bpe_layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)model/BPE/bpe_layer1/Tensordot/GatherV2_1GatherV2-model/BPE/bpe_layer1/Tensordot/Shape:output:0,model/BPE/bpe_layer1/Tensordot/axes:output:07model/BPE/bpe_layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$model/BPE/bpe_layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≠
#model/BPE/bpe_layer1/Tensordot/ProdProd0model/BPE/bpe_layer1/Tensordot/GatherV2:output:0-model/BPE/bpe_layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&model/BPE/bpe_layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ≥
%model/BPE/bpe_layer1/Tensordot/Prod_1Prod2model/BPE/bpe_layer1/Tensordot/GatherV2_1:output:0/model/BPE/bpe_layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*model/BPE/bpe_layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
%model/BPE/bpe_layer1/Tensordot/concatConcatV2,model/BPE/bpe_layer1/Tensordot/free:output:0,model/BPE/bpe_layer1/Tensordot/axes:output:03model/BPE/bpe_layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Є
$model/BPE/bpe_layer1/Tensordot/stackPack,model/BPE/bpe_layer1/Tensordot/Prod:output:0.model/BPE/bpe_layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
(model/BPE/bpe_layer1/Tensordot/transpose	Transpose#model/concatenate_1/concat:output:0.model/BPE/bpe_layer1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€…
&model/BPE/bpe_layer1/Tensordot/ReshapeReshape,model/BPE/bpe_layer1/Tensordot/transpose:y:0-model/BPE/bpe_layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€…
%model/BPE/bpe_layer1/Tensordot/MatMulMatMul/model/BPE/bpe_layer1/Tensordot/Reshape:output:05model/BPE/bpe_layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@p
&model/BPE/bpe_layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,model/BPE/bpe_layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
'model/BPE/bpe_layer1/Tensordot/concat_1ConcatV20model/BPE/bpe_layer1/Tensordot/GatherV2:output:0/model/BPE/bpe_layer1/Tensordot/Const_2:output:05model/BPE/bpe_layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ћ
model/BPE/bpe_layer1/TensordotReshape/model/BPE/bpe_layer1/Tensordot/MatMul:product:00model/BPE/bpe_layer1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ь
+model/BPE/bpe_layer1/BiasAdd/ReadVariableOpReadVariableOp4model_bpe_bpe_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ƒ
model/BPE/bpe_layer1/BiasAddBiasAdd'model/BPE/bpe_layer1/Tensordot:output:03model/BPE/bpe_layer1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
model/BPE/activation_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
model/BPE/activation_2/mulMul$model/BPE/activation_2/beta:output:0%model/BPE/bpe_layer1/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@И
model/BPE/activation_2/SigmoidSigmoidmodel/BPE/activation_2/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@≠
model/BPE/activation_2/mul_1Mul%model/BPE/bpe_layer1/BiasAdd:output:0"model/BPE/activation_2/Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@М
model/BPE/activation_2/IdentityIdentity model/BPE/activation_2/mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@±
 model/BPE/activation_2/IdentityN	IdentityN model/BPE/activation_2/mul_1:z:0%model/BPE/bpe_layer1/BiasAdd:output:0$model/BPE/activation_2/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653703*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: §
-model/BPE/bpe_layer2/Tensordot/ReadVariableOpReadVariableOp6model_bpe_bpe_layer2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0m
#model/BPE/bpe_layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#model/BPE/bpe_layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Л
$model/BPE/bpe_layer2/Tensordot/ShapeShape)model/BPE/activation_2/IdentityN:output:0*
T0*
_output_shapes
::нѕn
,model/BPE/bpe_layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'model/BPE/bpe_layer2/Tensordot/GatherV2GatherV2-model/BPE/bpe_layer2/Tensordot/Shape:output:0,model/BPE/bpe_layer2/Tensordot/free:output:05model/BPE/bpe_layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.model/BPE/bpe_layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)model/BPE/bpe_layer2/Tensordot/GatherV2_1GatherV2-model/BPE/bpe_layer2/Tensordot/Shape:output:0,model/BPE/bpe_layer2/Tensordot/axes:output:07model/BPE/bpe_layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$model/BPE/bpe_layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≠
#model/BPE/bpe_layer2/Tensordot/ProdProd0model/BPE/bpe_layer2/Tensordot/GatherV2:output:0-model/BPE/bpe_layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&model/BPE/bpe_layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ≥
%model/BPE/bpe_layer2/Tensordot/Prod_1Prod2model/BPE/bpe_layer2/Tensordot/GatherV2_1:output:0/model/BPE/bpe_layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*model/BPE/bpe_layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
%model/BPE/bpe_layer2/Tensordot/concatConcatV2,model/BPE/bpe_layer2/Tensordot/free:output:0,model/BPE/bpe_layer2/Tensordot/axes:output:03model/BPE/bpe_layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Є
$model/BPE/bpe_layer2/Tensordot/stackPack,model/BPE/bpe_layer2/Tensordot/Prod:output:0.model/BPE/bpe_layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ѕ
(model/BPE/bpe_layer2/Tensordot/transpose	Transpose)model/BPE/activation_2/IdentityN:output:0.model/BPE/bpe_layer2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@…
&model/BPE/bpe_layer2/Tensordot/ReshapeReshape,model/BPE/bpe_layer2/Tensordot/transpose:y:0-model/BPE/bpe_layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€…
%model/BPE/bpe_layer2/Tensordot/MatMulMatMul/model/BPE/bpe_layer2/Tensordot/Reshape:output:05model/BPE/bpe_layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@p
&model/BPE/bpe_layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,model/BPE/bpe_layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
'model/BPE/bpe_layer2/Tensordot/concat_1ConcatV20model/BPE/bpe_layer2/Tensordot/GatherV2:output:0/model/BPE/bpe_layer2/Tensordot/Const_2:output:05model/BPE/bpe_layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ћ
model/BPE/bpe_layer2/TensordotReshape/model/BPE/bpe_layer2/Tensordot/MatMul:product:00model/BPE/bpe_layer2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ь
+model/BPE/bpe_layer2/BiasAdd/ReadVariableOpReadVariableOp4model_bpe_bpe_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ƒ
model/BPE/bpe_layer2/BiasAddBiasAdd'model/BPE/bpe_layer2/Tensordot:output:03model/BPE/bpe_layer2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@`
model/BPE/activation_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
model/BPE/activation_3/mulMul$model/BPE/activation_3/beta:output:0%model/BPE/bpe_layer2/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@И
model/BPE/activation_3/SigmoidSigmoidmodel/BPE/activation_3/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@≠
model/BPE/activation_3/mul_1Mul%model/BPE/bpe_layer2/BiasAdd:output:0"model/BPE/activation_3/Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@М
model/BPE/activation_3/IdentityIdentity model/BPE/activation_3/mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@±
 model/BPE/activation_3/IdentityN	IdentityN model/BPE/activation_3/mul_1:z:0%model/BPE/bpe_layer2/BiasAdd:output:0$model/BPE/activation_3/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653738*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: Ю
*model/bve_layer_2/Tensordot/ReadVariableOpReadVariableOp3model_bve_layer_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0j
 model/bve_layer_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model/bve_layer_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Г
!model/bve_layer_2/Tensordot/ShapeShape$model/bve_layer_1/IdentityN:output:0*
T0*
_output_shapes
::нѕk
)model/bve_layer_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$model/bve_layer_2/Tensordot/GatherV2GatherV2*model/bve_layer_2/Tensordot/Shape:output:0)model/bve_layer_2/Tensordot/free:output:02model/bve_layer_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model/bve_layer_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&model/bve_layer_2/Tensordot/GatherV2_1GatherV2*model/bve_layer_2/Tensordot/Shape:output:0)model/bve_layer_2/Tensordot/axes:output:04model/bve_layer_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model/bve_layer_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 model/bve_layer_2/Tensordot/ProdProd-model/bve_layer_2/Tensordot/GatherV2:output:0*model/bve_layer_2/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#model/bve_layer_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"model/bve_layer_2/Tensordot/Prod_1Prod/model/bve_layer_2/Tensordot/GatherV2_1:output:0,model/bve_layer_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'model/bve_layer_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"model/bve_layer_2/Tensordot/concatConcatV2)model/bve_layer_2/Tensordot/free:output:0)model/bve_layer_2/Tensordot/axes:output:00model/bve_layer_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!model/bve_layer_2/Tensordot/stackPack)model/bve_layer_2/Tensordot/Prod:output:0+model/bve_layer_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ƒ
%model/bve_layer_2/Tensordot/transpose	Transpose$model/bve_layer_1/IdentityN:output:0+model/bve_layer_2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@ј
#model/bve_layer_2/Tensordot/ReshapeReshape)model/bve_layer_2/Tensordot/transpose:y:0*model/bve_layer_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ј
"model/bve_layer_2/Tensordot/MatMulMatMul,model/bve_layer_2/Tensordot/Reshape:output:02model/bve_layer_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@m
#model/bve_layer_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@k
)model/bve_layer_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$model/bve_layer_2/Tensordot/concat_1ConcatV2-model/bve_layer_2/Tensordot/GatherV2:output:0,model/bve_layer_2/Tensordot/Const_2:output:02model/bve_layer_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¬
model/bve_layer_2/TensordotReshape,model/bve_layer_2/Tensordot/MatMul:product:0-model/bve_layer_2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ц
(model/bve_layer_2/BiasAdd/ReadVariableOpReadVariableOp1model_bve_layer_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ї
model/bve_layer_2/BiasAddBiasAdd$model/bve_layer_2/Tensordot:output:00model/bve_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@[
model/bve_layer_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?†
model/bve_layer_2/mulMulmodel/bve_layer_2/beta:output:0"model/bve_layer_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@~
model/bve_layer_2/SigmoidSigmoidmodel/bve_layer_2/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@†
model/bve_layer_2/mul_1Mul"model/bve_layer_2/BiasAdd:output:0model/bve_layer_2/Sigmoid:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@В
model/bve_layer_2/IdentityIdentitymodel/bve_layer_2/mul_1:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Я
model/bve_layer_2/IdentityN	IdentityNmodel/bve_layer_2/mul_1:z:0"model/bve_layer_2/BiasAdd:output:0model/bve_layer_2/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653773*V
_output_shapesD
B:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: »
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Э
.model/multi_head_attention/query/einsum/EinsumEinsum<model/spatial_transformation/activation_1/IdentityN:output:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abde∞
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype0б
(model/multi_head_attention/query/add/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@ƒ
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0П
,model/multi_head_attention/key/einsum/EinsumEinsum)model/BPE/activation_3/IdentityN:output:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdeђ
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype0д
&model/multi_head_attention/key/add/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@»
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0О
.model/multi_head_attention/value/einsum/EinsumEinsum$model/bve_layer_2/IdentityN:output:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abde∞
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype0к
(model/multi_head_attention/value/add/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >Є
model/multi_head_attention/MulMul,model/multi_head_attention/query/add/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@н
(model/multi_head_attention/einsum/EinsumEinsum*model/multi_head_attention/key/add/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeЂ
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€∞
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€ъ
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0,model/multi_head_attention/value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcdё
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0¶
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abe¬
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0ю
3model/multi_head_attention/attention_output/add/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@√
model/add/addAddV2<model/spatial_transformation/activation_1/IdentityN:output:07model/multi_head_attention/attention_output/add/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Т
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:@@*
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
valueB"       j
model/dense/Tensordot/ShapeShapemodel/add/add:z:0*
T0*
_output_shapes
::нѕe
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
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
value	B : п
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
value	B : ћ
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
model/dense/Tensordot/transpose	Transposemodel/add/add:z:0%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@Ѓ
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѓ
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:І
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0†
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@U
model/dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
model/dense/mulMulmodel/dense/beta:output:0model/dense/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@i
model/dense/SigmoidSigmoidmodel/dense/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Е
model/dense/mul_1Mulmodel/dense/BiasAdd:output:0model/dense/Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@m
model/dense/IdentityIdentitymodel/dense/mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@х
model/dense/IdentityN	IdentityNmodel/dense/mul_1:z:0model/dense/BiasAdd:output:0model/dense/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653839*D
_output_shapes2
0:€€€€€€€€€@:€€€€€€€€€@: d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   Р
model/flatten/ReshapeReshapemodel/dense/IdentityN:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@М
!model/U/ou1/MatMul/ReadVariableOpReadVariableOp*model_u_ou1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Щ
model/U/ou1/MatMulMatMulmodel/flatten/Reshape:output:0)model/U/ou1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@К
"model/U/ou1/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou1/BiasAddBiasAddmodel/U/ou1/MatMul:product:0*model/U/ou1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
model/U/activation_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/U/activation_4/mulMul"model/U/activation_4/beta:output:0model/U/ou1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@w
model/U/activation_4/SigmoidSigmoidmodel/U/activation_4/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@У
model/U/activation_4/mul_1Mulmodel/U/ou1/BiasAdd:output:0 model/U/activation_4/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
model/U/activation_4/IdentityIdentitymodel/U/activation_4/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@И
model/U/activation_4/IdentityN	IdentityNmodel/U/activation_4/mul_1:z:0model/U/ou1/BiasAdd:output:0"model/U/activation_4/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653856*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: М
!model/U/ou2/MatMul/ReadVariableOpReadVariableOp*model_u_ou2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Ґ
model/U/ou2/MatMulMatMul'model/U/activation_4/IdentityN:output:0)model/U/ou2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@К
"model/U/ou2/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou2/BiasAddBiasAddmodel/U/ou2/MatMul:product:0*model/U/ou2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
model/U/activation_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  А?У
model/U/activation_5/mulMul"model/U/activation_5/beta:output:0model/U/ou2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@w
model/U/activation_5/SigmoidSigmoidmodel/U/activation_5/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@У
model/U/activation_5/mul_1Mulmodel/U/ou2/BiasAdd:output:0 model/U/activation_5/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@{
model/U/activation_5/IdentityIdentitymodel/U/activation_5/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@И
model/U/activation_5/IdentityN	IdentityNmodel/U/activation_5/mul_1:z:0model/U/ou2/BiasAdd:output:0"model/U/activation_5/beta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4653871*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: Т
$model/output_u/MatMul/ReadVariableOpReadVariableOp-model_output_u_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0®
model/output_u/MatMulMatMul'model/U/activation_5/IdentityN:output:0,model/output_u/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
IdentityIdentitymodel/output_u/MatMul:product:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp,^model/BPE/bpe_layer1/BiasAdd/ReadVariableOp.^model/BPE/bpe_layer1/Tensordot/ReadVariableOp,^model/BPE/bpe_layer2/BiasAdd/ReadVariableOp.^model/BPE/bpe_layer2/Tensordot/ReadVariableOp#^model/U/ou1/BiasAdd/ReadVariableOp"^model/U/ou1/MatMul/ReadVariableOp#^model/U/ou2/BiasAdd/ReadVariableOp"^model/U/ou2/MatMul/ReadVariableOp)^model/bve_layer_1/BiasAdd/ReadVariableOp+^model/bve_layer_1/Tensordot/ReadVariableOp)^model/bve_layer_2/BiasAdd/ReadVariableOp+^model/bve_layer_2/Tensordot/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOp%^model/output_u/MatMul/ReadVariableOpC^model/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpC^model/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*—
_input_shapesњ
Љ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+model/BPE/bpe_layer1/BiasAdd/ReadVariableOp+model/BPE/bpe_layer1/BiasAdd/ReadVariableOp2^
-model/BPE/bpe_layer1/Tensordot/ReadVariableOp-model/BPE/bpe_layer1/Tensordot/ReadVariableOp2Z
+model/BPE/bpe_layer2/BiasAdd/ReadVariableOp+model/BPE/bpe_layer2/BiasAdd/ReadVariableOp2^
-model/BPE/bpe_layer2/Tensordot/ReadVariableOp-model/BPE/bpe_layer2/Tensordot/ReadVariableOp2H
"model/U/ou1/BiasAdd/ReadVariableOp"model/U/ou1/BiasAdd/ReadVariableOp2F
!model/U/ou1/MatMul/ReadVariableOp!model/U/ou1/MatMul/ReadVariableOp2H
"model/U/ou2/BiasAdd/ReadVariableOp"model/U/ou2/BiasAdd/ReadVariableOp2F
!model/U/ou2/MatMul/ReadVariableOp!model/U/ou2/MatMul/ReadVariableOp2T
(model/bve_layer_1/BiasAdd/ReadVariableOp(model/bve_layer_1/BiasAdd/ReadVariableOp2X
*model/bve_layer_1/Tensordot/ReadVariableOp*model/bve_layer_1/Tensordot/ReadVariableOp2T
(model/bve_layer_2/BiasAdd/ReadVariableOp(model/bve_layer_2/BiasAdd/ReadVariableOp2X
*model/bve_layer_2/Tensordot/ReadVariableOp*model/bve_layer_2/Tensordot/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2А
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2Ф
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2L
$model/output_u/MatMul/ReadVariableOp$model/output_u/MatMul/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:($
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
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Ы
Ю
$__inference_internal_grad_fn_4656105
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
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_1Mulmul_beta
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@R
SquareSquare
mul_inputs*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
ѓ
Ъ
-__inference_bve_layer_1_layer_call_fn_4655209

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4655205:'#
!
_user_specified_name	4655203:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4655595

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
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
:€€€€€€€€€@
 
_user_specified_nameinputs
Џ
g
I__inference_activation_4_layer_call_and_return_conditional_losses_4655764

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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@S
mul_1MulinputsSigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@≥
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2*-
_gradient_op_typeCustomGradient-4655755*<
_output_shapes*
(:€€€€€€€€€@:€€€€€€€€€@: \

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
’
l
@__inference_add_layer_call_and_return_conditional_losses_4655426
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
Ќ
j
@__inference_add_layer_call_and_return_conditional_losses_4654597

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џ
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654392

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @S
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
addAddV2mul:z:0
Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
r
H__inference_concatenate_layer_call_and_return_conditional_losses_4654409

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
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™
J
.__inference_activation_4_layer_call_fn_4655751

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4654257`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4655538

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
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
value	B : њ
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
:€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
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
:€€€€€€€€€
 
_user_specified_nameinputs
н

`
D__inference_reshape_layer_call_and_return_conditional_losses_4654475

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∆
Ю
$__inference_internal_grad_fn_4655943
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
:€€€€€€€€€@M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_1Mulmul_beta
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
subSubsub/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
addAddV2add/Const:output:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@N
SquareSquare
mul_inputs*
T0*'
_output_shapes
:€€€€€€€€€@Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:€€€€€€€€€@V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@V
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
:€€€€€€€€€@Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:OK
'
_output_shapes
:€€€€€€€€€@
 
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0
І
х
$__inference_internal_grad_fn_4656429
result_grads_0
result_grads_1
result_grads_26
2mul_model_spatial_transformation_activation_1_beta;
7mul_model_spatial_transformation_spatial_layer2_biasadd
identity

identity_1Њ
mulMul2mul_model_spatial_transformation_activation_1_beta7mul_model_spatial_transformation_spatial_layer2_biasadd^result_grads_0*
T0*+
_output_shapes
:€€€€€€€€€@Q
SigmoidSigmoidmul:z:0*
T0*+
_output_shapes
:€€€€€€€€€@ѓ
mul_1Mul2mul_model_spatial_transformation_activation_1_beta7mul_model_spatial_transformation_spatial_layer2_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@N
	sub/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
subSubsub/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@V
mul_2Mul	mul_1:z:0sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€@N
	add/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
addAddV2add/Const:output:0	mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_3MulSigmoid:y:0add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@
SquareSquare7mul_model_spatial_transformation_spatial_layer2_biasadd*
T0*+
_output_shapes
:€€€€€€€€€@^
mul_4Mulresult_grads_0
Square:y:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@P
sub_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?e
sub_1Subsub_1/Const:output:0Sigmoid:y:0*
T0*+
_output_shapes
:€€€€€€€€€@X
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Z
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
:€€€€€€€€€@U
IdentityIdentity	mul_7:z:0*
T0*+
_output_shapes
:€€€€€€€€€@E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€@:€€€€€€€€€@: : :€€€€€€€€€@:А|
+
_output_shapes
:€€€€€€€€€@
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
:€€€€€€€€€@
(
_user_specified_nameresult_grads_1:Г 
&
 _has_manual_control_dependencies(
+
_output_shapes
:€€€€€€€€€@
(
_user_specified_nameresult_grads_0>
$__inference_internal_grad_fn_4655889CustomGradient-4655792>
$__inference_internal_grad_fn_4655916CustomGradient-4654277>
$__inference_internal_grad_fn_4655943CustomGradient-4655755>
$__inference_internal_grad_fn_4655970CustomGradient-4654248>
$__inference_internal_grad_fn_4655997CustomGradient-4655718>
$__inference_internal_grad_fn_4656024CustomGradient-4654145>
$__inference_internal_grad_fn_4656051CustomGradient-4655661>
$__inference_internal_grad_fn_4656078CustomGradient-4654096>
$__inference_internal_grad_fn_4656105CustomGradient-4655604>
$__inference_internal_grad_fn_4656132CustomGradient-4653973>
$__inference_internal_grad_fn_4656159CustomGradient-4655547>
$__inference_internal_grad_fn_4656186CustomGradient-4653924>
$__inference_internal_grad_fn_4656213CustomGradient-4655465>
$__inference_internal_grad_fn_4656240CustomGradient-4654628>
$__inference_internal_grad_fn_4656267CustomGradient-4655287>
$__inference_internal_grad_fn_4656294CustomGradient-4654524>
$__inference_internal_grad_fn_4656321CustomGradient-4655239>
$__inference_internal_grad_fn_4656348CustomGradient-4654440>
$__inference_internal_grad_fn_4656375CustomGradient-4653587>
$__inference_internal_grad_fn_4656402CustomGradient-4653633>
$__inference_internal_grad_fn_4656429CustomGradient-4653668>
$__inference_internal_grad_fn_4656456CustomGradient-4653703>
$__inference_internal_grad_fn_4656483CustomGradient-4653738>
$__inference_internal_grad_fn_4656510CustomGradient-4653773>
$__inference_internal_grad_fn_4656537CustomGradient-4653839>
$__inference_internal_grad_fn_4656564CustomGradient-4653856>
$__inference_internal_grad_fn_4656591CustomGradient-4653871"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*“
serving_defaultЊ
L
	Xbc_layer?
serving_default_Xbc_layer:0€€€€€€€€€€€€€€€€€€
;
t_input0
serving_default_t_input:0€€€€€€€€€
L
	tbc_layer?
serving_default_tbc_layer:0€€€€€€€€€€€€€€€€€€
L
	ubc_layer?
serving_default_ubc_layer:0€€€€€€€€€€€€€€€€€€
;
x_input0
serving_default_x_input:0€€€€€€€€€<
output_u0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:¶я
ќ
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
layer_with_weights-0
layer-12
layer_with_weights-1
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
layer_with_weights-4
layer-16
layer-17
layer_with_weights-5
layer-18
layer-19
layer_with_weights-6
layer-20
layer_with_weights-7
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
•
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
•
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
•
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
•
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
•
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias"
_tf_keras_layer
Т
Qlayer_with_weights-0
Qlayer-0
Rlayer-1
Slayer_with_weights-1
Slayer-2
Tlayer-3
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_sequential
Т
[layer_with_weights-0
[layer-0
\layer-1
]layer_with_weights-1
]layer-2
^layer-3
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_sequential
ї
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias"
_tf_keras_layer
О
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_query_dense
t
_key_dense
u_value_dense
v_softmax
w_dropout_layer
x_output_dense"
_tf_keras_layer
•
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
¬
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
Еkernel
	Жbias"
_tf_keras_layer
Ђ
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
Ю
Нlayer_with_weights-0
Нlayer-0
Оlayer-1
Пlayer_with_weights-1
Пlayer-2
Рlayer-3
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"
_tf_keras_sequential
Є
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Эkernel"
_tf_keras_layer
Е
O0
P1
Ю2
Я3
†4
°5
Ґ6
£7
§8
•9
k10
l11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Е20
Ж21
Ѓ22
ѓ23
∞24
±25
Э26"
trackable_list_wrapper
Е
O0
P1
Ю2
Я3
†4
°5
Ґ6
£7
§8
•9
k10
l11
¶12
І13
®14
©15
™16
Ђ17
ђ18
≠19
Е20
Ж21
Ѓ22
ѓ23
∞24
±25
Э26"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
≈
Јtrace_0
Єtrace_12К
'__inference_model_layer_call_fn_4654848
'__inference_model_layer_call_fn_4654911µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0zЄtrace_1
ы
єtrace_0
Їtrace_12ј
B__inference_model_layer_call_and_return_conditional_losses_4654670
B__inference_model_layer_call_and_return_conditional_losses_4654785µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0zЇtrace_1
чBф
"__inference__wrapped_model_4653883x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"Ш
С≤Н
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
annotations™ *
 
-
їserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
з
Ѕtrace_02»
+__inference_rescaling_layer_call_fn_4655108Ш
С≤Н
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
annotations™ *
 zЅtrace_0
В
¬trace_02г
F__inference_rescaling_layer_call_and_return_conditional_losses_4655116Ш
С≤Н
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
annotations™ *
 z¬trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
√non_trainable_variables
ƒlayers
≈metrics
 ∆layer_regularization_losses
«layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
й
»trace_02 
-__inference_rescaling_1_layer_call_fn_4655121Ш
С≤Н
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
annotations™ *
 z»trace_0
Д
…trace_02е
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4655129Ш
С≤Н
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
annotations™ *
 z…trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
й
ѕtrace_02 
-__inference_concatenate_layer_call_fn_4655135Ш
С≤Н
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
annotations™ *
 zѕtrace_0
Д
–trace_02е
H__inference_concatenate_layer_call_and_return_conditional_losses_4655142Ш
С≤Н
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
annotations™ *
 z–trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
й
÷trace_02 
-__inference_rescaling_2_layer_call_fn_4655147Ш
С≤Н
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
annotations™ *
 z÷trace_0
Д
„trace_02е
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4655156Ш
С≤Н
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
annotations™ *
 z„trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
й
Ёtrace_02 
-__inference_rescaling_3_layer_call_fn_4655161Ш
С≤Н
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
annotations™ *
 zЁtrace_0
Д
ёtrace_02е
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4655169Ш
С≤Н
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
annotations™ *
 zёtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
е
дtrace_02∆
)__inference_reshape_layer_call_fn_4655174Ш
С≤Н
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
annotations™ *
 zдtrace_0
А
еtrace_02б
D__inference_reshape_layer_call_and_return_conditional_losses_4655187Ш
С≤Н
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
annotations™ *
 zеtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
л
лtrace_02ћ
/__inference_concatenate_1_layer_call_fn_4655193Ш
С≤Н
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
annotations™ *
 zлtrace_0
Ж
мtrace_02з
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4655200Ш
С≤Н
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
annotations™ *
 zмtrace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
й
тtrace_02 
-__inference_bve_layer_1_layer_call_fn_4655209Ш
С≤Н
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
annotations™ *
 zтtrace_0
Д
уtrace_02е
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248Ш
С≤Н
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
annotations™ *
 zуtrace_0
$:"@2bve_layer_1/kernel
:@2bve_layer_1/bias
√
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
Юkernel
	Яbias"
_tf_keras_layer
Ђ
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses"
_tf_keras_layer
√
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
†kernel
	°bias"
_tf_keras_layer
Ђ
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
@
Ю0
Я1
†2
°3"
trackable_list_wrapper
@
Ю0
Я1
†2
°3"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
з
Сtrace_0
Тtrace_12ђ
8__inference_spatial_transformation_layer_call_fn_4654014
8__inference_spatial_transformation_layer_call_fn_4654027µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0zТtrace_1
Э
Уtrace_0
Фtrace_12в
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0zФtrace_1
√
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ґkernel
	£bias"
_tf_keras_layer
Ђ
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses"
_tf_keras_layer
√
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
§kernel
	•bias"
_tf_keras_layer
Ђ
І	variables
®trainable_variables
©regularization_losses
™	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
@
Ґ0
£1
§2
•3"
trackable_list_wrapper
@
Ґ0
£1
§2
•3"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
Ѕ
≤trace_0
≥trace_12Ж
%__inference_BPE_layer_call_fn_4654186
%__inference_BPE_layer_call_fn_4654199µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0z≥trace_1
ч
іtrace_0
µtrace_12Љ
@__inference_BPE_layer_call_and_return_conditional_losses_4654157
@__inference_BPE_layer_call_and_return_conditional_losses_4654173µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
й
їtrace_02 
-__inference_bve_layer_2_layer_call_fn_4655257Ш
С≤Н
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
annotations™ *
 zїtrace_0
Д
Љtrace_02е
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296Ш
С≤Н
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
annotations™ *
 zЉtrace_0
$:"@@2bve_layer_2/kernel
:@2bve_layer_2/bias
`
¶0
І1
®2
©3
™4
Ђ5
ђ6
≠7"
trackable_list_wrapper
`
¶0
І1
®2
©3
™4
Ђ5
ђ6
≠7"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
ґ
¬trace_0
√trace_12ы
6__inference_multi_head_attention_layer_call_fn_4655319
6__inference_multi_head_attention_layer_call_fn_4655342И
Б≤э
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
defaultsҐ
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
annotations™ *
 z¬trace_0z√trace_1
м
ƒtrace_0
≈trace_12±
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655378
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655414И
Б≤э
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
defaultsҐ
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
annotations™ *
 zƒtrace_0z≈trace_1
ц
∆	variables
«trainable_variables
»regularization_losses
…	keras_api
 __call__
+Ћ&call_and_return_all_conditional_losses
ћpartial_output_shape
Ќfull_output_shape
¶kernel
	Іbias"
_tf_keras_layer
ц
ќ	variables
ѕtrainable_variables
–regularization_losses
—	keras_api
“__call__
+”&call_and_return_all_conditional_losses
‘partial_output_shape
’full_output_shape
®kernel
	©bias"
_tf_keras_layer
ц
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№partial_output_shape
Ёfull_output_shape
™kernel
	Ђbias"
_tf_keras_layer
Ђ
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses"
_tf_keras_layer
√
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
к_random_generator"
_tf_keras_layer
ц
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses
сpartial_output_shape
тfull_output_shape
ђkernel
	≠bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
б
шtrace_02¬
%__inference_add_layer_call_fn_4655420Ш
С≤Н
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
annotations™ *
 zшtrace_0
ь
щtrace_02Ё
@__inference_add_layer_call_and_return_conditional_losses_4655426Ш
С≤Н
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
annotations™ *
 zщtrace_0
0
Е0
Ж1"
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ј
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
г
€trace_02ƒ
'__inference_dense_layer_call_fn_4655435Ш
С≤Н
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
annotations™ *
 z€trace_0
ю
Аtrace_02я
B__inference_dense_layer_call_and_return_conditional_losses_4655474Ш
С≤Н
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
annotations™ *
 zАtrace_0
:@@2dense/kernel
:@2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
е
Жtrace_02∆
)__inference_flatten_layer_call_fn_4655479Ш
С≤Н
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
annotations™ *
 zЖtrace_0
А
Зtrace_02б
D__inference_flatten_layer_call_and_return_conditional_losses_4655485Ш
С≤Н
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
annotations™ *
 zЗtrace_0
√
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Ѓkernel
	ѓbias"
_tf_keras_layer
Ђ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
∞kernel
	±bias"
_tf_keras_layer
Ђ
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
@
Ѓ0
ѓ1
∞2
±3"
trackable_list_wrapper
@
Ѓ0
ѓ1
∞2
±3"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
љ
•trace_0
¶trace_12В
#__inference_U_layer_call_fn_4654318
#__inference_U_layer_call_fn_4654331µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0z¶trace_1
у
Іtrace_0
®trace_12Є
>__inference_U_layer_call_and_return_conditional_losses_4654289
>__inference_U_layer_call_and_return_conditional_losses_4654305µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0z®trace_1
(
Э0"
trackable_list_wrapper
(
Э0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
ж
Ѓtrace_02«
*__inference_output_u_layer_call_fn_4655492Ш
С≤Н
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
annotations™ *
 zЃtrace_0
Б
ѓtrace_02в
E__inference_output_u_layer_call_and_return_conditional_losses_4655499Ш
С≤Н
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
annotations™ *
 zѓtrace_0
!:@2output_u/kernel
':%@2spatial_layer1/kernel
!:@2spatial_layer1/bias
':%@@2spatial_layer2/kernel
!:@2spatial_layer2/bias
#:!@2bpe_layer1/kernel
:@2bpe_layer1/bias
#:!@@2bpe_layer2/kernel
:@2bpe_layer2/bias
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
 "
trackable_list_wrapper
∆
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
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РBН
'__inference_model_layer_call_fn_4654848x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
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
annotations™ *
 
РBН
'__inference_model_layer_call_fn_4654911x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
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
annotations™ *
 
ЂB®
B__inference_model_layer_call_and_return_conditional_losses_4654670x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
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
annotations™ *
 
ЂB®
B__inference_model_layer_call_and_return_conditional_losses_4654785x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
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
annotations™ *
 
ЂB®
%__inference_signature_wrapper_4655103	Xbc_layert_input	tbc_layer	ubc_layerx_input"Ћ
ƒ≤ј
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 N

kwonlyargs@Ъ=
j	Xbc_layer
	jt_input
j	tbc_layer
j	ubc_layer
	jx_input
kwonlydefaults
 
annotations™ *
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
’B“
+__inference_rescaling_layer_call_fn_4655108inputs"Ш
С≤Н
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
annotations™ *
 
рBн
F__inference_rescaling_layer_call_and_return_conditional_losses_4655116inputs"Ш
С≤Н
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
annotations™ *
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
„B‘
-__inference_rescaling_1_layer_call_fn_4655121inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4655129inputs"Ш
С≤Н
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
annotations™ *
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
гBа
-__inference_concatenate_layer_call_fn_4655135inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
 
юBы
H__inference_concatenate_layer_call_and_return_conditional_losses_4655142inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
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
„B‘
-__inference_rescaling_2_layer_call_fn_4655147inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4655156inputs"Ш
С≤Н
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
annotations™ *
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
„B‘
-__inference_rescaling_3_layer_call_fn_4655161inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4655169inputs"Ш
С≤Н
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
annotations™ *
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
”B–
)__inference_reshape_layer_call_fn_4655174inputs"Ш
С≤Н
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
annotations™ *
 
оBл
D__inference_reshape_layer_call_and_return_conditional_losses_4655187inputs"Ш
С≤Н
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
annotations™ *
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
еBв
/__inference_concatenate_1_layer_call_fn_4655193inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
 
АBэ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4655200inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
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
„B‘
-__inference_bve_layer_1_layer_call_fn_4655209inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248inputs"Ш
С≤Н
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
annotations™ *
 
0
Ю0
Я1"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
м
µtrace_02Ќ
0__inference_spatial_layer1_layer_call_fn_4655508Ш
С≤Н
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
annotations™ *
 zµtrace_0
З
ґtrace_02и
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4655538Ш
С≤Н
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
annotations™ *
 zґtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses"
_generic_user_object
и
Љtrace_02…
,__inference_activation_layer_call_fn_4655543Ш
С≤Н
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
annotations™ *
 zЉtrace_0
Г
љtrace_02д
G__inference_activation_layer_call_and_return_conditional_losses_4655556Ш
С≤Н
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
annotations™ *
 zљtrace_0
0
†0
°1"
trackable_list_wrapper
0
†0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
м
√trace_02Ќ
0__inference_spatial_layer2_layer_call_fn_4655565Ш
С≤Н
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
annotations™ *
 z√trace_0
З
ƒtrace_02и
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4655595Ш
С≤Н
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
annotations™ *
 zƒtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
к
 trace_02Ћ
.__inference_activation_1_layer_call_fn_4655600Ш
С≤Н
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
annotations™ *
 z trace_0
Е
Ћtrace_02ж
I__inference_activation_1_layer_call_and_return_conditional_losses_4655613Ш
С≤Н
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
annotations™ *
 zЋtrace_0
 "
trackable_list_wrapper
<
Q0
R1
S2
T3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
8__inference_spatial_transformation_layer_call_fn_4654014spatial_layer1_input"ђ
•≤°
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
annotations™ *
 
ДBБ
8__inference_spatial_transformation_layer_call_fn_4654027spatial_layer1_input"ђ
•≤°
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
annotations™ *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985spatial_layer1_input"ђ
•≤°
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
annotations™ *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001spatial_layer1_input"ђ
•≤°
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
annotations™ *
 
0
Ґ0
£1"
trackable_list_wrapper
0
Ґ0
£1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
и
—trace_02…
,__inference_bpe_layer1_layer_call_fn_4655622Ш
С≤Н
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
annotations™ *
 z—trace_0
Г
“trace_02д
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4655652Ш
С≤Н
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
annotations™ *
 z“trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
к
Ўtrace_02Ћ
.__inference_activation_2_layer_call_fn_4655657Ш
С≤Н
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
annotations™ *
 zЎtrace_0
Е
ўtrace_02ж
I__inference_activation_2_layer_call_and_return_conditional_losses_4655670Ш
С≤Н
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
annotations™ *
 zўtrace_0
0
§0
•1"
trackable_list_wrapper
0
§0
•1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
и
яtrace_02…
,__inference_bpe_layer2_layer_call_fn_4655679Ш
С≤Н
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
annotations™ *
 zяtrace_0
Г
аtrace_02д
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4655709Ш
С≤Н
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
annotations™ *
 zаtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
І	variables
®trainable_variables
©regularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
к
жtrace_02Ћ
.__inference_activation_3_layer_call_fn_4655714Ш
С≤Н
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
annotations™ *
 zжtrace_0
Е
зtrace_02ж
I__inference_activation_3_layer_call_and_return_conditional_losses_4655727Ш
С≤Н
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
annotations™ *
 zзtrace_0
 "
trackable_list_wrapper
<
[0
\1
]2
^3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
%__inference_BPE_layer_call_fn_4654186bpe_layer1_input"ђ
•≤°
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
annotations™ *
 
нBк
%__inference_BPE_layer_call_fn_4654199bpe_layer1_input"ђ
•≤°
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
annotations™ *
 
ИBЕ
@__inference_BPE_layer_call_and_return_conditional_losses_4654157bpe_layer1_input"ђ
•≤°
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
annotations™ *
 
ИBЕ
@__inference_BPE_layer_call_and_return_conditional_losses_4654173bpe_layer1_input"ђ
•≤°
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
annotations™ *
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
„B‘
-__inference_bve_layer_2_layer_call_fn_4655257inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296inputs"Ш
С≤Н
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
annotations™ *
 
 "
trackable_list_wrapper
J
s0
t1
u2
v3
w4
x5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∆B√
6__inference_multi_head_attention_layer_call_fn_4655319queryvaluekey"у
м≤и
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
annotations™ *
 
∆B√
6__inference_multi_head_attention_layer_call_fn_4655342queryvaluekey"у
м≤и
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
annotations™ *
 
бBё
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655378queryvaluekey"у
м≤и
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
annotations™ *
 
бBё
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655414queryvaluekey"у
м≤и
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
annotations™ *
 
0
¶0
І1"
trackable_list_wrapper
0
¶0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
∆	variables
«trainable_variables
»regularization_losses
 __call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
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
annotations™ *
 
Ю2ЫШ
С≤Н
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
®0
©1"
trackable_list_wrapper
0
®0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
ќ	variables
ѕtrainable_variables
–regularization_losses
“__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
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
annotations™ *
 
Ю2ЫШ
С≤Н
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
™0
Ђ1"
trackable_list_wrapper
0
™0
Ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
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
annotations™ *
 
Ю2ЫШ
С≤Н
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
annotations™ *
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
Є
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
ђ0
≠1"
trackable_list_wrapper
0
ђ0
≠1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
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
annotations™ *
 
Ю2ЫШ
С≤Н
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
annotations™ *
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
џBЎ
%__inference_add_layer_call_fn_4655420inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
 
цBу
@__inference_add_layer_call_and_return_conditional_losses_4655426inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
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
—Bќ
'__inference_dense_layer_call_fn_4655435inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense_layer_call_and_return_conditional_losses_4655474inputs"Ш
С≤Н
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
annotations™ *
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
”B–
)__inference_flatten_layer_call_fn_4655479inputs"Ш
С≤Н
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
annotations™ *
 
оBл
D__inference_flatten_layer_call_and_return_conditional_losses_4655485inputs"Ш
С≤Н
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
annotations™ *
 
0
Ѓ0
ѓ1"
trackable_list_wrapper
0
Ѓ0
ѓ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
б
Лtrace_02¬
%__inference_ou1_layer_call_fn_4655736Ш
С≤Н
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
annotations™ *
 zЛtrace_0
ь
Мtrace_02Ё
@__inference_ou1_layer_call_and_return_conditional_losses_4655746Ш
С≤Н
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
annotations™ *
 zМtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
к
Тtrace_02Ћ
.__inference_activation_4_layer_call_fn_4655751Ш
С≤Н
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
annotations™ *
 zТtrace_0
Е
Уtrace_02ж
I__inference_activation_4_layer_call_and_return_conditional_losses_4655764Ш
С≤Н
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
annotations™ *
 zУtrace_0
0
∞0
±1"
trackable_list_wrapper
0
∞0
±1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
б
Щtrace_02¬
%__inference_ou2_layer_call_fn_4655773Ш
С≤Н
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
annotations™ *
 zЩtrace_0
ь
Ъtrace_02Ё
@__inference_ou2_layer_call_and_return_conditional_losses_4655783Ш
С≤Н
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
annotations™ *
 zЪtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
к
†trace_02Ћ
.__inference_activation_5_layer_call_fn_4655788Ш
С≤Н
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
annotations™ *
 z†trace_0
Е
°trace_02ж
I__inference_activation_5_layer_call_and_return_conditional_losses_4655801Ш
С≤Н
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
annotations™ *
 z°trace_0
 "
trackable_list_wrapper
@
Н0
О1
П2
Р3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
#__inference_U_layer_call_fn_4654318	ou1_input"ђ
•≤°
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
annotations™ *
 
дBб
#__inference_U_layer_call_fn_4654331	ou1_input"ђ
•≤°
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
annotations™ *
 
€Bь
>__inference_U_layer_call_and_return_conditional_losses_4654289	ou1_input"ђ
•≤°
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
annotations™ *
 
€Bь
>__inference_U_layer_call_and_return_conditional_losses_4654305	ou1_input"ђ
•≤°
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
annotations™ *
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
‘B—
*__inference_output_u_layer_call_fn_4655492inputs"Ш
С≤Н
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
annotations™ *
 
пBм
E__inference_output_u_layer_call_and_return_conditional_losses_4655499inputs"Ш
С≤Н
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
annotations™ *
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
ЏB„
0__inference_spatial_layer1_layer_call_fn_4655508inputs"Ш
С≤Н
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
annotations™ *
 
хBт
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4655538inputs"Ш
С≤Н
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
annotations™ *
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
÷B”
,__inference_activation_layer_call_fn_4655543inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_activation_layer_call_and_return_conditional_losses_4655556inputs"Ш
С≤Н
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
annotations™ *
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
ЏB„
0__inference_spatial_layer2_layer_call_fn_4655565inputs"Ш
С≤Н
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
annotations™ *
 
хBт
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4655595inputs"Ш
С≤Н
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
annotations™ *
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
ЎB’
.__inference_activation_1_layer_call_fn_4655600inputs"Ш
С≤Н
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
annotations™ *
 
уBр
I__inference_activation_1_layer_call_and_return_conditional_losses_4655613inputs"Ш
С≤Н
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
annotations™ *
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
÷B”
,__inference_bpe_layer1_layer_call_fn_4655622inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4655652inputs"Ш
С≤Н
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
annotations™ *
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
ЎB’
.__inference_activation_2_layer_call_fn_4655657inputs"Ш
С≤Н
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
annotations™ *
 
уBр
I__inference_activation_2_layer_call_and_return_conditional_losses_4655670inputs"Ш
С≤Н
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
annotations™ *
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
÷B”
,__inference_bpe_layer2_layer_call_fn_4655679inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4655709inputs"Ш
С≤Н
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
annotations™ *
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
ЎB’
.__inference_activation_3_layer_call_fn_4655714inputs"Ш
С≤Н
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
annotations™ *
 
уBр
I__inference_activation_3_layer_call_and_return_conditional_losses_4655727inputs"Ш
С≤Н
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
annotations™ *
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
ѕBћ
%__inference_ou1_layer_call_fn_4655736inputs"Ш
С≤Н
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
annotations™ *
 
кBз
@__inference_ou1_layer_call_and_return_conditional_losses_4655746inputs"Ш
С≤Н
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
annotations™ *
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
ЎB’
.__inference_activation_4_layer_call_fn_4655751inputs"Ш
С≤Н
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
annotations™ *
 
уBр
I__inference_activation_4_layer_call_and_return_conditional_losses_4655764inputs"Ш
С≤Н
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
annotations™ *
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
ѕBћ
%__inference_ou2_layer_call_fn_4655773inputs"Ш
С≤Н
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
annotations™ *
 
кBз
@__inference_ou2_layer_call_and_return_conditional_losses_4655783inputs"Ш
С≤Н
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
annotations™ *
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
ЎB’
.__inference_activation_5_layer_call_fn_4655788inputs"Ш
С≤Н
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
annotations™ *
 
уBр
I__inference_activation_5_layer_call_and_return_conditional_losses_4655801inputs"Ш
С≤Н
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
annotations™ *
 
UbS
beta:0I__inference_activation_5_layer_call_and_return_conditional_losses_4655801
WbU
inputs:0I__inference_activation_5_layer_call_and_return_conditional_losses_4655801
UbS
beta:0I__inference_activation_5_layer_call_and_return_conditional_losses_4654286
WbU
inputs:0I__inference_activation_5_layer_call_and_return_conditional_losses_4654286
UbS
beta:0I__inference_activation_4_layer_call_and_return_conditional_losses_4655764
WbU
inputs:0I__inference_activation_4_layer_call_and_return_conditional_losses_4655764
UbS
beta:0I__inference_activation_4_layer_call_and_return_conditional_losses_4654257
WbU
inputs:0I__inference_activation_4_layer_call_and_return_conditional_losses_4654257
UbS
beta:0I__inference_activation_3_layer_call_and_return_conditional_losses_4655727
WbU
inputs:0I__inference_activation_3_layer_call_and_return_conditional_losses_4655727
UbS
beta:0I__inference_activation_3_layer_call_and_return_conditional_losses_4654154
WbU
inputs:0I__inference_activation_3_layer_call_and_return_conditional_losses_4654154
UbS
beta:0I__inference_activation_2_layer_call_and_return_conditional_losses_4655670
WbU
inputs:0I__inference_activation_2_layer_call_and_return_conditional_losses_4655670
UbS
beta:0I__inference_activation_2_layer_call_and_return_conditional_losses_4654105
WbU
inputs:0I__inference_activation_2_layer_call_and_return_conditional_losses_4654105
UbS
beta:0I__inference_activation_1_layer_call_and_return_conditional_losses_4655613
WbU
inputs:0I__inference_activation_1_layer_call_and_return_conditional_losses_4655613
UbS
beta:0I__inference_activation_1_layer_call_and_return_conditional_losses_4653982
WbU
inputs:0I__inference_activation_1_layer_call_and_return_conditional_losses_4653982
SbQ
beta:0G__inference_activation_layer_call_and_return_conditional_losses_4655556
UbS
inputs:0G__inference_activation_layer_call_and_return_conditional_losses_4655556
SbQ
beta:0G__inference_activation_layer_call_and_return_conditional_losses_4653933
UbS
inputs:0G__inference_activation_layer_call_and_return_conditional_losses_4653933
NbL
beta:0B__inference_dense_layer_call_and_return_conditional_losses_4655474
QbO
	BiasAdd:0B__inference_dense_layer_call_and_return_conditional_losses_4655474
NbL
beta:0B__inference_dense_layer_call_and_return_conditional_losses_4654637
QbO
	BiasAdd:0B__inference_dense_layer_call_and_return_conditional_losses_4654637
TbR
beta:0H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296
WbU
	BiasAdd:0H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296
TbR
beta:0H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533
WbU
	BiasAdd:0H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654533
TbR
beta:0H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248
WbU
	BiasAdd:0H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248
TbR
beta:0H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449
WbU
	BiasAdd:0H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654449
@b>
model/bve_layer_1/beta:0"__inference__wrapped_model_4653883
CbA
model/bve_layer_1/BiasAdd:0"__inference__wrapped_model_4653883
VbT
.model/spatial_transformation/activation/beta:0"__inference__wrapped_model_4653883
]b[
5model/spatial_transformation/spatial_layer1/BiasAdd:0"__inference__wrapped_model_4653883
XbV
0model/spatial_transformation/activation_1/beta:0"__inference__wrapped_model_4653883
]b[
5model/spatial_transformation/spatial_layer2/BiasAdd:0"__inference__wrapped_model_4653883
EbC
model/BPE/activation_2/beta:0"__inference__wrapped_model_4653883
FbD
model/BPE/bpe_layer1/BiasAdd:0"__inference__wrapped_model_4653883
EbC
model/BPE/activation_3/beta:0"__inference__wrapped_model_4653883
FbD
model/BPE/bpe_layer2/BiasAdd:0"__inference__wrapped_model_4653883
@b>
model/bve_layer_2/beta:0"__inference__wrapped_model_4653883
CbA
model/bve_layer_2/BiasAdd:0"__inference__wrapped_model_4653883
:b8
model/dense/beta:0"__inference__wrapped_model_4653883
=b;
model/dense/BiasAdd:0"__inference__wrapped_model_4653883
CbA
model/U/activation_4/beta:0"__inference__wrapped_model_4653883
=b;
model/U/ou1/BiasAdd:0"__inference__wrapped_model_4653883
CbA
model/U/activation_5/beta:0"__inference__wrapped_model_4653883
=b;
model/U/ou2/BiasAdd:0"__inference__wrapped_model_4653883Џ
@__inference_BPE_layer_call_and_return_conditional_losses_4654157ХҐ£§•NҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ Џ
@__inference_BPE_layer_call_and_return_conditional_losses_4654173ХҐ£§•NҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ і
%__inference_BPE_layer_call_fn_4654186КҐ£§•NҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@і
%__inference_BPE_layer_call_fn_4654199КҐ£§•NҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ґ
>__inference_U_layer_call_and_return_conditional_losses_4654289tЃѓ∞±:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ ґ
>__inference_U_layer_call_and_return_conditional_losses_4654305tЃѓ∞±:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Р
#__inference_U_layer_call_fn_4654318iЃѓ∞±:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p

 
™ "!К
unknown€€€€€€€€€@Р
#__inference_U_layer_call_fn_4654331iЃѓ∞±:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p 

 
™ "!К
unknown€€€€€€€€€@Ж
"__inference__wrapped_model_4653883я2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±ЭуҐп
зҐг
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
™ "3™0
.
output_u"К
output_u€€€€€€€€€і
I__inference_activation_1_layer_call_and_return_conditional_losses_4655613g3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ О
.__inference_activation_1_layer_call_fn_4655600\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@∆
I__inference_activation_2_layer_call_and_return_conditional_losses_4655670y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ †
.__inference_activation_2_layer_call_fn_4655657n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@∆
I__inference_activation_3_layer_call_and_return_conditional_losses_4655727y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ †
.__inference_activation_3_layer_call_fn_4655714n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ђ
I__inference_activation_4_layer_call_and_return_conditional_losses_4655764_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Ж
.__inference_activation_4_layer_call_fn_4655751T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@ђ
I__inference_activation_5_layer_call_and_return_conditional_losses_4655801_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Ж
.__inference_activation_5_layer_call_fn_4655788T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@≤
G__inference_activation_layer_call_and_return_conditional_losses_4655556g3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ М
,__inference_activation_layer_call_fn_4655543\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@џ
@__inference_add_layer_call_and_return_conditional_losses_4655426ЦbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ µ
%__inference_add_layer_call_fn_4655420ЛbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@ 
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4655652Ґ£<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ §
,__inference_bpe_layer1_layer_call_fn_4655622tҐ£<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ 
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4655709§•<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ §
,__inference_bpe_layer2_layer_call_fn_4655679t§•<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@…
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4655248}OP<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ £
-__inference_bve_layer_1_layer_call_fn_4655209rOP<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@…
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4655296}kl<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ £
-__inference_bve_layer_2_layer_call_fn_4655257rkl<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@А
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4655200±tҐq
jҐg
eЪb
/К,
inputs_0€€€€€€€€€€€€€€€€€€
/К,
inputs_1€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Џ
/__inference_concatenate_1_layer_call_fn_4655193¶tҐq
jҐg
eЪb
/К,
inputs_0€€€€€€€€€€€€€€€€€€
/К,
inputs_1€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€„
H__inference_concatenate_layer_call_and_return_conditional_losses_4655142КZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
-__inference_concatenate_layer_call_fn_4655135ZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
™ "!К
unknown€€€€€€€€€≥
B__inference_dense_layer_call_and_return_conditional_losses_4655474mЕЖ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Н
'__inference_dense_layer_call_fn_4655435bЕЖ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@Ђ
D__inference_flatten_layer_call_and_return_conditional_losses_4655485c3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Е
)__inference_flatten_layer_call_fn_4655479X3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@п
$__inference_internal_grad_fn_4655889∆Ґ£~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 п
$__inference_internal_grad_fn_4655916∆§•~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 п
$__inference_internal_grad_fn_4655943∆¶І~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 п
$__inference_internal_grad_fn_4655970∆®©~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4655997с™ЂЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656024сђ≠ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656051сЃѓЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656078с∞±ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656105‘≤≥ЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656132‘іµЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656159‘ґЈЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656186‘ЄєЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656213‘ЇїЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656240‘ЉљЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656267сЊњЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656294сјЅЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656321с¬√ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656348сƒ≈ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656375с∆«ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656402‘»…ЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656429‘ ЋЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656456сћЌЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656483сќѕЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 Ъ
$__inference_internal_grad_fn_4656510с–—ЫҐЧ
ПҐЛ

 
5К2
result_grads_0€€€€€€€€€€€€€€€€€€@
5К2
result_grads_1€€€€€€€€€€€€€€€€€€@
К
result_grads_2 
™ "KЪH

 
/К,
tensor_1€€€€€€€€€€€€€€€€€€@
К
tensor_2 э
$__inference_internal_grad_fn_4656537‘“”ЗҐГ
|Ґy

 
,К)
result_grads_0€€€€€€€€€@
,К)
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ "BЪ?

 
&К#
tensor_1€€€€€€€€€@
К
tensor_2 п
$__inference_internal_grad_fn_4656564∆‘’~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 п
$__inference_internal_grad_fn_4656591∆÷„~Ґ{
tҐq

 
(К%
result_grads_0€€€€€€€€€@
(К%
result_grads_1€€€€€€€€€@
К
result_grads_2 
™ ">Ъ;

 
"К
tensor_1€€€€€€€€€@
К
tensor_2 І
B__inference_model_layer_call_and_return_conditional_losses_4654670а2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±ЭыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ І
B__inference_model_layer_call_and_return_conditional_losses_4654785а2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±ЭыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Б
'__inference_model_layer_call_fn_4654848’2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±ЭыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Б
'__inference_model_layer_call_fn_4654911’2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±ЭыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Љ
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655378ж¶І®©™Ђђ≠ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Љ
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4655414ж¶І®©™Ђђ≠ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
6__inference_multi_head_attention_layer_call_fn_4655319џ¶І®©™Ђђ≠ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "%К"
unknown€€€€€€€€€@Ц
6__inference_multi_head_attention_layer_call_fn_4655342џ¶І®©™Ђђ≠ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "%К"
unknown€€€€€€€€€@©
@__inference_ou1_layer_call_and_return_conditional_losses_4655746eЃѓ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Г
%__inference_ou1_layer_call_fn_4655736ZЃѓ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@©
@__inference_ou2_layer_call_and_return_conditional_losses_4655783e∞±/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Г
%__inference_ou2_layer_call_fn_4655773Z∞±/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@ђ
E__inference_output_u_layer_call_and_return_conditional_losses_4655499cЭ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ж
*__inference_output_u_layer_call_fn_4655492XЭ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€Ђ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4655129_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
-__inference_rescaling_1_layer_call_fn_4655121T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€≈
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4655156y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Я
-__inference_rescaling_2_layer_call_fn_4655147n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€≈
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4655169y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Я
-__inference_rescaling_3_layer_call_fn_4655161n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€©
F__inference_rescaling_layer_call_and_return_conditional_losses_4655116_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
+__inference_rescaling_layer_call_fn_4655108T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_reshape_layer_call_and_return_conditional_losses_4655187c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Е
)__inference_reshape_layer_call_fn_4655174X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€њ
%__inference_signature_wrapper_4655103Х2OPЮЯ†°Ґ£§•kl¶І®©™Ђђ≠ЕЖЃѓ∞±Э©Ґ•
Ґ 
Э™Щ
=
	Xbc_layer0К-
	xbc_layer€€€€€€€€€€€€€€€€€€
,
t_input!К
t_input€€€€€€€€€
=
	tbc_layer0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
=
	ubc_layer0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
,
x_input!К
x_input€€€€€€€€€"3™0
.
output_u"К
output_u€€€€€€€€€Љ
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4655538mЮЯ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
0__inference_spatial_layer1_layer_call_fn_4655508bЮЯ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€@Љ
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4655595m†°3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
0__inference_spatial_layer2_layer_call_fn_4655565b†°3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@я
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4653985ЗЮЯ†°IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ я
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4654001ЗЮЯ†°IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Є
8__inference_spatial_transformation_layer_call_fn_4654014|ЮЯ†°IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€@Є
8__inference_spatial_transformation_layer_call_fn_4654027|ЮЯ†°IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€@
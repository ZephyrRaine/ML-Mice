
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shape: *
dtype0*
	container *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
shape: *
dtype0*
	container *
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
?
statePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
|
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *²Rî>*
dtype0*
_class
loc:@dense/kernel
Í
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_class
loc:@dense/kernel
Ë
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
m
dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias
z

dense/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
_
dense/MatMulMatMulstatedense/kernel/read*
transpose_a( *
transpose_b( *
T0
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
*

dense/TanhTanhdense/BiasAdd*
T0

1dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel

0dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel

2dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÐdÎ=*
dtype0*!
_class
loc:@dense_1/kernel
Ó
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_1/kernel
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
Á
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
q
dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias
~
dense_1/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
h
dense_2/MatMulMatMul
dense/Tanhdense_1/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
T0*
data_formatNHWC
.
dense_2/TanhTanhdense_2/BiasAdd*
T0

1dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel

0dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel

2dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *²Rî>*
dtype0*!
_class
loc:@dense_2/kernel
Ó
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_2/kernel
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Á
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
q
dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias
~
dense_2/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_2/bias

dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
c
dense_3/MatMulMatMulstatedense_2/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*
T0*
data_formatNHWC
.
dense_3/TanhTanhdense_3/BiasAdd*
T0

1dense_3/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel

0dense_3/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel

2dense_3/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÐdÎ=*
dtype0*!
_class
loc:@dense_3/kernel
Ó
;dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_3/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_3/kernel
Ó
/dense_3/kernel/Initializer/truncated_normal/mulMul;dense_3/kernel/Initializer/truncated_normal/TruncatedNormal2dense_3/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_3/kernel
Á
+dense_3/kernel/Initializer/truncated_normalAdd/dense_3/kernel/Initializer/truncated_normal/mul0dense_3/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
±
dense_3/kernel/AssignAssigndense_3/kernel+dense_3/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
q
dense_3/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias
~
dense_3/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
j
dense_4/MatMulMatMuldense_3/Tanhdense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*
T0*
data_formatNHWC
.
dense_4/TanhTanhdense_4/BiasAdd*
T0

1dense_4/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_4/kernel

0dense_4/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_4/kernel

2dense_4/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s%<*
dtype0*!
_class
loc:@dense_4/kernel
Ó
;dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_4/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_4/kernel
Ó
/dense_4/kernel/Initializer/truncated_normal/mulMul;dense_4/kernel/Initializer/truncated_normal/TruncatedNormal2dense_4/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_4/kernel
Á
+dense_4/kernel/Initializer/truncated_normalAdd/dense_4/kernel/Initializer/truncated_normal/mul0dense_4/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_4/kernel

dense_4/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_4/kernel
±
dense_4/kernel/AssignAssigndense_4/kernel+dense_4/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
j
dense_5/MatMulMatMuldense_2/Tanhdense_4/kernel/read*
transpose_a( *
transpose_b( *
T0
z
#log_sigma_squared/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
²
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
d
log_sigma_squared/readIdentitylog_sigma_squared*
T0*$
_class
loc:@log_sigma_squared
+
ExpExplog_sigma_squared/read*
T0
A
epsilonPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

SqrtSqrtExp*
T0
"
mulMulSqrtepsilon*
T0
(
addAdddense_5/MatMulmul*
T0
 
actionIdentityadd*
T0
-
StopGradientStopGradientaction*
T0
1
subSubStopGradientdense_5/MatMul*
T0
2
Pow/yConst*
valueB
 *   @*
dtype0

PowPowsubPow/y*
T0
4
mul_1/xConst*
valueB
 *  ¿*
dtype0
#
mul_1Mulmul_1/xPow*
T0
4
mul_2/xConst*
valueB
 *   @*
dtype0
#
mul_2Mulmul_2/xExp*
T0
)
truedivRealDivmul_1mul_2*
T0

Exp_1Exptruediv*
T0
4
mul_3/xConst*
valueB
 *   @*
dtype0
#
mul_3Mulmul_3/xExp*
T0
4
mul_4/yConst*
valueB
 *ÛI@*
dtype0
%
mul_4Mulmul_3mul_4/y*
T0

Sqrt_1Sqrtmul_4*
T0
8
truediv_1/xConst*
valueB
 *  ?*
dtype0
2
	truediv_1RealDivtruediv_1/xSqrt_1*
T0
.
action_probsMulExp_1	truediv_1*
T0
4
mul_5/xConst*
valueB
 *À¢A*
dtype0
#
mul_5Mulmul_5/xExp*
T0

LogLogmul_5*
T0
4
mul_6/xConst*
valueB
 *   ?*
dtype0
#
mul_6Mulmul_6/xLog*
T0
3
ConstConst*
valueB: *
dtype0
>
SumSummul_6Const*
	keep_dims( *
T0*

Tidx0

/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_5/kernel
}
-dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *n×\¾*
dtype0*!
_class
loc:@dense_5/kernel
}
-dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *n×\>*
dtype0*!
_class
loc:@dense_5/kernel
Ë
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_5/kernel
¾
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
È
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
º
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_5/kernel
¯
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
p
dense_5/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_5/bias
}
dense_5/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_5/bias

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
U
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias
j
dense_6/MatMulMatMuldense_4/Tanhdense_5/kernel/read*
transpose_a( *
transpose_b( *
T0
]
dense_6/BiasAddBiasAdddense_6/MatMuldense_5/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_6/BiasAdd*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
H
discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
D

advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
PolynomialDecay/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $ôI*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
4
add_1/yConst*
valueB
 *ÿæÛ.*
dtype0
1
add_1Addold_probabilitiesadd_1/y*
T0
2
	truediv_2RealDivaction_probsadd_1*
T0
,
mul_7Mul	truediv_2
advantages*
T0
4
sub_1/xConst*
valueB
 *  ?*
dtype0
/
sub_1Subsub_1/xPolynomialDecay*
T0
4
add_2/xConst*
valueB
 *  ?*
dtype0
/
add_2Addadd_2/xPolynomialDecay*
T0
;
clip_by_value/MinimumMinimum	truediv_2add_2*
T0
?
clip_by_valueMaximumclip_by_value/Minimumsub_1*
T0
0
mul_8Mulclip_by_value
advantages*
T0
)
MinimumMinimummul_7mul_8*
T0
<
Const_1Const*
valueB"       *
dtype0
D
MeanMeanMinimumConst_1*
	keep_dims( *
T0*

Tidx0

NegNegMean*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
[
Sum_1Sumvalue_estimateSum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
J
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_1*
T0
5
Const_2Const*
valueB: *
dtype0
P
Mean_1MeanSquaredDifferenceConst_2*
	keep_dims( *
T0*

Tidx0
L
PolynomialDecay_1/learning_rateConst*
valueB
 *    *
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $ôI*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
4
mul_9/xConst*
valueB
 *   ?*
dtype0
&
mul_9Mulmul_9/xMean_1*
T0
!
add_3AddNegmul_9*
T0
0
Const_3Const*
valueB *
dtype0
B
Mean_2MeanSumConst_3*
	keep_dims( *
T0*

Tidx0
1
mul_10MulPolynomialDecay_1Mean_2*
T0
$
sub_2Subadd_3mul_10*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *RI9*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $ôI*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
C
gradients/sub_2_grad/ShapeConst*
valueB *
dtype0
E
gradients/sub_2_grad/Shape_1Const*
valueB *
dtype0

*gradients/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_2_grad/Shapegradients/sub_2_grad/Shape_1*
T0

gradients/sub_2_grad/SumSumgradients/Fill*gradients/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_2_grad/ReshapeReshapegradients/sub_2_grad/Sumgradients/sub_2_grad/Shape*
T0*
Tshape0

gradients/sub_2_grad/Sum_1Sumgradients/Fill,gradients/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_2_grad/NegNeggradients/sub_2_grad/Sum_1*
T0
x
gradients/sub_2_grad/Reshape_1Reshapegradients/sub_2_grad/Neggradients/sub_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_2_grad/tuple/group_depsNoOp^gradients/sub_2_grad/Reshape^gradients/sub_2_grad/Reshape_1
¹
-gradients/sub_2_grad/tuple/control_dependencyIdentitygradients/sub_2_grad/Reshape&^gradients/sub_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_2_grad/Reshape
¿
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Reshape_1&^gradients/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_2_grad/Reshape_1
C
gradients/add_3_grad/ShapeConst*
valueB *
dtype0
E
gradients/add_3_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0
 
gradients/add_3_grad/SumSum-gradients/sub_2_grad/tuple/control_dependency*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0
¤
gradients/add_3_grad/Sum_1Sum-gradients/sub_2_grad/tuple/control_dependency,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
¹
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
¿
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
D
gradients/mul_10_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_10_grad/Shape_1Const*
valueB *
dtype0

+gradients/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_10_grad/Shapegradients/mul_10_grad/Shape_1*
T0
b
gradients/mul_10_grad/mulMul/gradients/sub_2_grad/tuple/control_dependency_1Mean_2*
T0

gradients/mul_10_grad/SumSumgradients/mul_10_grad/mul+gradients/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
w
gradients/mul_10_grad/ReshapeReshapegradients/mul_10_grad/Sumgradients/mul_10_grad/Shape*
T0*
Tshape0
o
gradients/mul_10_grad/mul_1MulPolynomialDecay_1/gradients/sub_2_grad/tuple/control_dependency_1*
T0

gradients/mul_10_grad/Sum_1Sumgradients/mul_10_grad/mul_1-gradients/mul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
}
gradients/mul_10_grad/Reshape_1Reshapegradients/mul_10_grad/Sum_1gradients/mul_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Reshape ^gradients/mul_10_grad/Reshape_1
½
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Reshape'^gradients/mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_10_grad/Reshape
Ã
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Reshape_1'^gradients/mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_10_grad/Reshape_1
U
gradients/Neg_grad/NegNeg-gradients/add_3_grad/tuple/control_dependency*
T0
C
gradients/mul_9_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_9_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_9_grad/Shapegradients/mul_9_grad/Shape_1*
T0
a
gradients/mul_9_grad/mulMul/gradients/add_3_grad/tuple/control_dependency_1Mean_1*
T0

gradients/mul_9_grad/SumSumgradients/mul_9_grad/mul*gradients/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_9_grad/ReshapeReshapegradients/mul_9_grad/Sumgradients/mul_9_grad/Shape*
T0*
Tshape0
d
gradients/mul_9_grad/mul_1Mulmul_9/x/gradients/add_3_grad/tuple/control_dependency_1*
T0

gradients/mul_9_grad/Sum_1Sumgradients/mul_9_grad/mul_1,gradients/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_9_grad/Reshape_1Reshapegradients/mul_9_grad/Sum_1gradients/mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Reshape^gradients/mul_9_grad/Reshape_1
¹
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Reshape&^gradients/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape
¿
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Reshape_1&^gradients/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_9_grad/Reshape_1
L
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB *
dtype0

gradients/Mean_2_grad/ReshapeReshape0gradients/mul_10_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
M
$gradients/Mean_2_grad/Tile/multiplesConst*
valueB *
dtype0

gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshape$gradients/Mean_2_grad/Tile/multiples*
T0*

Tmultiples0
D
gradients/Mean_2_grad/ShapeConst*
valueB *
dtype0
F
gradients/Mean_2_grad/Shape_1Const*
valueB *
dtype0
y
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
²
gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shapegradients/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
{
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
¸
gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
y
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
 
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_2_grad/Shape

gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_2_grad/Shape
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
x
gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
D
gradients/Mean_grad/ShapeShapeMinimum*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
F
gradients/Mean_grad/Shape_1ShapeMinimum*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
w
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
®
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
y
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
²
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
w
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_9_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
P
gradients/Mean_1_grad/ShapeShapeSquaredDifference*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
R
gradients/Mean_1_grad/Shape_1ShapeSquaredDifference*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¶
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
}
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
º
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
{
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¢
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
 
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
N
 gradients/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0
}
gradients/Sum_grad/ReshapeReshapegradients/Mean_2_grad/truediv gradients/Sum_grad/Reshape/shape*
T0*
Tshape0
O
!gradients/Sum_grad/Tile/multiplesConst*
valueB:*
dtype0
y
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshape!gradients/Sum_grad/Tile/multiples*
T0*

Tmultiples0
E
gradients/Minimum_grad/ShapeShapemul_7*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_8*
T0*
out_type0
]
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
q
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_7mul_8*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_1*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
t
'gradients/SquaredDifference_grad/scalarConst^gradients/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
|
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Mean_1_grad/truediv*
T0
o
$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_1^gradients/Mean_1_grad/truediv*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
C
gradients/mul_6_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_6_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
F
gradients/mul_6_grad/mulMulgradients/Sum_grad/TileLog*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/mul*gradients/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
L
gradients/mul_6_grad/mul_1Mulmul_6/xgradients/Sum_grad/Tile*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
¿
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
G
gradients/mul_7_grad/ShapeShape	truediv_2*
T0*
out_type0
J
gradients/mul_7_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
e
gradients/mul_7_grad/mulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/mul*gradients/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
f
gradients/mul_7_grad/mul_1Mul	truediv_2/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
¹
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
¿
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
K
gradients/mul_8_grad/ShapeShapeclip_by_value*
T0*
out_type0
J
gradients/mul_8_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_8_grad/Shapegradients/mul_8_grad/Shape_1*
T0
g
gradients/mul_8_grad/mulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_8_grad/SumSumgradients/mul_8_grad/mul*gradients/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_8_grad/ReshapeReshapegradients/mul_8_grad/Sumgradients/mul_8_grad/Shape*
T0*
Tshape0
l
gradients/mul_8_grad/mul_1Mulclip_by_value1gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_8_grad/Sum_1Sumgradients/mul_8_grad/mul_1,gradients/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_8_grad/Reshape_1Reshapegradients/mul_8_grad/Sum_1gradients/mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Reshape^gradients/mul_8_grad/Reshape_1
¹
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Reshape&^gradients/mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape
¿
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Reshape_1&^gradients/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_8_grad/Reshape_1
L
gradients/Sum_1_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
á
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
N*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
w
gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0
m
gradients/Log_grad/Reciprocal
Reciprocalmul_50^gradients/mul_6_grad/tuple/control_dependency_1*
T0
v
gradients/Log_grad/mulMul/gradients/mul_6_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
u
$gradients/clip_by_value_grad/Shape_2Shape-gradients/mul_8_grad/tuple/control_dependency*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/Minimumsub_1*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
´
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual-gradients/mul_8_grad/tuple/control_dependency"gradients/clip_by_value_grad/zeros*
T0
¶
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros-gradients/mul_8_grad/tuple/control_dependency*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ù
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
C
gradients/mul_5_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_5_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
E
gradients/mul_5_grad/mulMulgradients/Log_grad/mulExp*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
K
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Log_grad/mul*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
¿
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
W
*gradients/clip_by_value/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0
V
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqual	truediv_2add_2*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ñ
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ª
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ù
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
ÿ
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
t
*gradients/dense_6/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Sum_1_grad/Tile*
T0*
data_formatNHWC

/gradients/dense_6/BiasAdd_grad/tuple/group_depsNoOp^gradients/Sum_1_grad/Tile+^gradients/dense_6/BiasAdd_grad/BiasAddGrad
Ç
7gradients/dense_6/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Sum_1_grad/Tile0^gradients/dense_6/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_1_grad/Tile
ë
9gradients/dense_6/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_6/BiasAdd_grad/BiasAddGrad0^gradients/dense_6/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_6/BiasAdd_grad/BiasAddGrad
Ç
gradients/AddNAddN-gradients/mul_7_grad/tuple/control_dependency=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
N
gradients/truediv_2_grad/ShapeShapeaction_probs*
T0*
out_type0
I
 gradients/truediv_2_grad/Shape_1Shapeadd_1*
T0*
out_type0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
K
 gradients/truediv_2_grad/RealDivRealDivgradients/AddNadd_1*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
:
gradients/truediv_2_grad/NegNegaction_probs*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/Negadd_1*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1add_1*
T0
`
gradients/truediv_2_grad/mulMulgradients/AddN"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ï
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
«
$gradients/dense_6/MatMul_grad/MatMulMatMul7gradients/dense_6/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
transpose_a( *
transpose_b(*
T0
¦
&gradients/dense_6/MatMul_grad/MatMul_1MatMuldense_4/Tanh7gradients/dense_6/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_6/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_6/MatMul_grad/MatMul'^gradients/dense_6/MatMul_grad/MatMul_1
Û
6gradients/dense_6/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_6/MatMul_grad/MatMul/^gradients/dense_6/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_6/MatMul_grad/MatMul
á
8gradients/dense_6/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_6/MatMul_grad/MatMul_1/^gradients/dense_6/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_6/MatMul_grad/MatMul_1
J
!gradients/action_probs_grad/ShapeShapeExp_1*
T0*
out_type0
Q
#gradients/action_probs_grad/Shape_1Const*
valueB:*
dtype0

1gradients/action_probs_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/action_probs_grad/Shape#gradients/action_probs_grad/Shape_1*
T0
m
gradients/action_probs_grad/mulMul1gradients/truediv_2_grad/tuple/control_dependency	truediv_1*
T0
 
gradients/action_probs_grad/SumSumgradients/action_probs_grad/mul1gradients/action_probs_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum!gradients/action_probs_grad/Shape*
T0*
Tshape0
k
!gradients/action_probs_grad/mul_1MulExp_11gradients/truediv_2_grad/tuple/control_dependency*
T0
¦
!gradients/action_probs_grad/Sum_1Sum!gradients/action_probs_grad/mul_13gradients/action_probs_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

%gradients/action_probs_grad/Reshape_1Reshape!gradients/action_probs_grad/Sum_1#gradients/action_probs_grad/Shape_1*
T0*
Tshape0

,gradients/action_probs_grad/tuple/group_depsNoOp$^gradients/action_probs_grad/Reshape&^gradients/action_probs_grad/Reshape_1
Õ
4gradients/action_probs_grad/tuple/control_dependencyIdentity#gradients/action_probs_grad/Reshape-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Reshape
Û
6gradients/action_probs_grad/tuple/control_dependency_1Identity%gradients/action_probs_grad/Reshape_1-^gradients/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/action_probs_grad/Reshape_1

$gradients/dense_4/Tanh_grad/TanhGradTanhGraddense_4/Tanh6gradients/dense_6/MatMul_grad/tuple/control_dependency*
T0
e
gradients/Exp_1_grad/mulMul4gradients/action_probs_grad/tuple/control_dependencyExp_1*
T0
G
gradients/truediv_1_grad/ShapeConst*
valueB *
dtype0
N
 gradients/truediv_1_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
t
 gradients/truediv_1_grad/RealDivRealDiv6gradients/action_probs_grad/tuple/control_dependency_1Sqrt_1*
T0

gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
9
gradients/truediv_1_grad/NegNegtruediv_1/x*
T0
\
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegSqrt_1*
T0
b
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Sqrt_1*
T0

gradients/truediv_1_grad/mulMul6gradients/action_probs_grad/tuple/control_dependency_1"gradients/truediv_1_grad/RealDiv_2*
T0

gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
Ï
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1

*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_4/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_4/Tanh_grad/TanhGrad+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_4/Tanh_grad/TanhGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/Tanh_grad/TanhGrad
ë
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad
E
gradients/truediv_grad/ShapeShapemul_1*
T0*
out_type0
L
gradients/truediv_grad/Shape_1Const*
valueB:*
dtype0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
S
gradients/truediv_grad/RealDivRealDivgradients/Exp_1_grad/mulmul_2*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
1
gradients/truediv_grad/NegNegmul_1*
T0
W
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negmul_2*
T0
]
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1mul_2*
T0
f
gradients/truediv_grad/mulMulgradients/Exp_1_grad/mul gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Á
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Ç
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
p
gradients/Sqrt_1_grad/SqrtGradSqrtGradSqrt_13gradients/truediv_1_grad/tuple/control_dependency_1*
T0
«
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_a( *
transpose_b(*
T0
¦
&gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/Tanh7gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
C
gradients/mul_1_grad/Shape_1ShapePow*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
^
gradients/mul_1_grad/mulMul/gradients/truediv_grad/tuple/control_dependencyPow*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
d
gradients/mul_1_grad/mul_1Mulmul_1/x/gradients/truediv_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
¿
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
C
gradients/mul_2_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_2_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
`
gradients/mul_2_grad/mulMul1gradients/truediv_grad/tuple/control_dependency_1Exp*
T0

gradients/mul_2_grad/SumSumgradients/mul_2_grad/mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
f
gradients/mul_2_grad/mul_1Mulmul_2/x1gradients/truediv_grad/tuple/control_dependency_1*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
¹
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
¿
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
H
gradients/mul_4_grad/ShapeConst*
valueB:*
dtype0
E
gradients/mul_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
Q
gradients/mul_4_grad/mulMulgradients/Sqrt_1_grad/SqrtGradmul_4/y*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
Q
gradients/mul_4_grad/mul_1Mulmul_3gradients/Sqrt_1_grad/SqrtGrad*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1

$gradients/dense_3/Tanh_grad/TanhGradTanhGraddense_3/Tanh6gradients/dense_4/MatMul_grad/tuple/control_dependency*
T0
?
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0
C
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0

(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0
^
gradients/Pow_grad/mulMul/gradients/mul_1_grad/tuple/control_dependency_1Pow/y*
T0
E
gradients/Pow_grad/sub/yConst*
valueB
 *  ?*
dtype0
G
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0
C
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0
X
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0

gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0
I
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
Q
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0
+
gradients/Pow_grad/LogLogsub*
T0
8
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0

gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0
^
gradients/Pow_grad/mul_2Mul/gradients/mul_1_grad/tuple/control_dependency_1Pow*
T0
]
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0

gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
±
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape
·
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1
C
gradients/mul_3_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_3_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
\
gradients/mul_3_grad/mulMul-gradients/mul_4_grad/tuple/control_dependencyExp*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
b
gradients/mul_3_grad/mul_1Mulmul_3/x-gradients/mul_4_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1

*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_3/Tanh_grad/TanhGrad+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_3/Tanh_grad/TanhGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/Tanh_grad/TanhGrad
ë
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
H
gradients/sub_grad/ShapeShapeStopGradient*
T0*
out_type0
L
gradients/sub_grad/Shape_1Shapedense_5/MatMul*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0

gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0

gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_3/MatMul_grad/MatMul_1MatMulstate7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
¡
$gradients/dense_5/MatMul_grad/MatMulMatMul-gradients/sub_grad/tuple/control_dependency_1dense_4/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_2/Tanh-gradients/sub_grad/tuple/control_dependency_1*
transpose_a(*
transpose_b( *
T0

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Û
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul
á
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1

$gradients/dense_2/Tanh_grad/TanhGradTanhGraddense_2/Tanh6gradients/dense_5/MatMul_grad/tuple/control_dependency*
T0

*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_2/Tanh_grad/TanhGrad+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Tanh_grad/TanhGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Tanh_grad/TanhGrad
ë
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
ð
gradients/AddN_1AddN/gradients/mul_5_grad/tuple/control_dependency_1/gradients/mul_2_grad/tuple/control_dependency_1/gradients/mul_3_grad/tuple/control_dependency_1*
N*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
=
gradients/Exp_grad/mulMulgradients/AddN_1Exp*
T0
«
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
¤
&gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/Tanh7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
{
"gradients/dense/Tanh_grad/TanhGradTanhGrad
dense/Tanh6gradients/dense_2/MatMul_grad/tuple/control_dependency*
T0
{
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp#^gradients/dense/Tanh_grad/TanhGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
Õ
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Tanh_grad/TanhGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Tanh_grad/TanhGrad
ã
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
¥
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_a( *
transpose_b(*
T0

$gradients/dense/MatMul_grad/MatMul_1MatMulstate5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/bias
v
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_class
loc:@dense/bias
v
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/bias

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias
z
#dense/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
|
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
r
!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias

dense/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias
¥
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias
t
#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias

dense/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense/bias
«
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias

%dense_1/kernel/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
v
#dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias

dense_1/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias
­
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias
x
%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias

dense_1/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_1/bias
³
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias
~
%dense_2/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

'dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel
v
#dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias

dense_2/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_2/bias
­
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
_
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias
x
%dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias

dense_2/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_2/bias
³
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
c
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias

%dense_3/kernel/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

'dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel
v
#dense_3/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias

dense_3/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias
x
%dense_3/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias

dense_3/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_3/bias
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias
~
%dense_4/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_4/kernel

dense_4/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_4/kernel
µ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel

'dense_4/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_4/kernel

dense_4/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_4/kernel
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel

(log_sigma_squared/Adam/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
Á
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*
T0*$
_class
loc:@log_sigma_squared

*log_sigma_squared/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@log_sigma_squared
Ç
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared
~
%dense_5/kernel/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_5/kernel

dense_5/kernel/Adam
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_5/kernel
µ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel

'dense_5/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*!
_class
loc:@dense_5/kernel

dense_5/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
	container *
shared_name *!
_class
loc:@dense_5/kernel
»
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel
u
#dense_5/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_5/bias

dense_5/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_5/bias
­
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
_
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias
w
%dense_5/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_5/bias

dense_5/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@dense_5/bias
³
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
c
dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
Ë
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/kernel
Â
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/bias
×
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_1/kernel
Î
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_1/bias
×
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_2/kernel
Î
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_2/bias
×
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_3/kernel
Î
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_3/bias
×
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_4/kernel
Ä
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilongradients/Exp_grad/mul*
T0*
use_locking( *
use_nesterov( *$
_class
loc:@log_sigma_squared
×
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_6/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_5/kernel
Î
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_6/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense_5/bias

Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/bias
}
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/bias
 

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/bias
ó
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
¯
initNoOp^global_step/Assign^last_reward/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^log_sigma_squared/Assign^dense_5/kernel/Assign^dense_5/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign^dense_5/bias/Adam/Assign^dense_5/bias/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
©
save/SaveV2/tensor_namesConst*ø
valueîBë(Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1*
dtype0

save/SaveV2/shape_and_slicesConst*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ô
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_steplast_rewardlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1*6
dtypes,
*2(
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
S
save/RestoreV2/tensor_namesConst* 
valueBBbeta1_power*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
U
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
T
save/RestoreV2_2/tensor_namesConst*
valueBB
dense/bias*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assign
dense/biassave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
Y
save/RestoreV2_3/tensor_namesConst*$
valueBBdense/bias/Adam*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assigndense/bias/Adamsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
[
save/RestoreV2_4/tensor_namesConst*&
valueBBdense/bias/Adam_1*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assigndense/bias/Adam_1save/RestoreV2_4*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/bias
V
save/RestoreV2_5/tensor_namesConst*!
valueBBdense/kernel*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assigndense/kernelsave/RestoreV2_5*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
[
save/RestoreV2_6/tensor_namesConst*&
valueBBdense/kernel/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assigndense/kernel/Adamsave/RestoreV2_6*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
]
save/RestoreV2_7/tensor_namesConst*(
valueBBdense/kernel/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
V
save/RestoreV2_8/tensor_namesConst*!
valueBBdense_1/bias*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assigndense_1/biassave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
[
save/RestoreV2_9/tensor_namesConst*&
valueBBdense_1/bias/Adam*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2_9*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
^
save/RestoreV2_10/tensor_namesConst*(
valueBBdense_1/bias/Adam_1*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2_10*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias
Y
save/RestoreV2_11/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assigndense_1/kernelsave/RestoreV2_11*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
^
save/RestoreV2_12/tensor_namesConst*(
valueBBdense_1/kernel/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2_12*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
`
save/RestoreV2_13/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2_13*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
W
save/RestoreV2_14/tensor_namesConst*!
valueBBdense_2/bias*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assigndense_2/biassave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
\
save/RestoreV2_15/tensor_namesConst*&
valueBBdense_2/bias/Adam*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assigndense_2/bias/Adamsave/RestoreV2_15*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
^
save/RestoreV2_16/tensor_namesConst*(
valueBBdense_2/bias/Adam_1*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assigndense_2/bias/Adam_1save/RestoreV2_16*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias
Y
save/RestoreV2_17/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assigndense_2/kernelsave/RestoreV2_17*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
^
save/RestoreV2_18/tensor_namesConst*(
valueBBdense_2/kernel/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18Assigndense_2/kernel/Adamsave/RestoreV2_18*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
`
save/RestoreV2_19/tensor_namesConst**
value!BBdense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19Assigndense_2/kernel/Adam_1save/RestoreV2_19*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
W
save/RestoreV2_20/tensor_namesConst*!
valueBBdense_3/bias*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2

save/Assign_20Assigndense_3/biassave/RestoreV2_20*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
\
save/RestoreV2_21/tensor_namesConst*&
valueBBdense_3/bias/Adam*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21Assigndense_3/bias/Adamsave/RestoreV2_21*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
^
save/RestoreV2_22/tensor_namesConst*(
valueBBdense_3/bias/Adam_1*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2

save/Assign_22Assigndense_3/bias/Adam_1save/RestoreV2_22*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_3/bias
Y
save/RestoreV2_23/tensor_namesConst*#
valueBBdense_3/kernel*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2

save/Assign_23Assigndense_3/kernelsave/RestoreV2_23*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
^
save/RestoreV2_24/tensor_namesConst*(
valueBBdense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24Assigndense_3/kernel/Adamsave/RestoreV2_24*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
`
save/RestoreV2_25/tensor_namesConst**
value!BBdense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25Assigndense_3/kernel/Adam_1save/RestoreV2_25*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
Y
save/RestoreV2_26/tensor_namesConst*#
valueBBdense_4/kernel*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2

save/Assign_26Assigndense_4/kernelsave/RestoreV2_26*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
^
save/RestoreV2_27/tensor_namesConst*(
valueBBdense_4/kernel/Adam*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27Assigndense_4/kernel/Adamsave/RestoreV2_27*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
`
save/RestoreV2_28/tensor_namesConst**
value!BBdense_4/kernel/Adam_1*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2

save/Assign_28Assigndense_4/kernel/Adam_1save/RestoreV2_28*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_4/kernel
W
save/RestoreV2_29/tensor_namesConst*!
valueBBdense_5/bias*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2

save/Assign_29Assigndense_5/biassave/RestoreV2_29*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
\
save/RestoreV2_30/tensor_namesConst*&
valueBBdense_5/bias/Adam*
dtype0
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2

save/Assign_30Assigndense_5/bias/Adamsave/RestoreV2_30*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
^
save/RestoreV2_31/tensor_namesConst*(
valueBBdense_5/bias/Adam_1*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2

save/Assign_31Assigndense_5/bias/Adam_1save/RestoreV2_31*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_5/bias
Y
save/RestoreV2_32/tensor_namesConst*#
valueBBdense_5/kernel*
dtype0
O
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2

save/Assign_32Assigndense_5/kernelsave/RestoreV2_32*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
^
save/RestoreV2_33/tensor_namesConst*(
valueBBdense_5/kernel/Adam*
dtype0
O
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2

save/Assign_33Assigndense_5/kernel/Adamsave/RestoreV2_33*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
`
save/RestoreV2_34/tensor_namesConst**
value!BBdense_5/kernel/Adam_1*
dtype0
O
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2

save/Assign_34Assigndense_5/kernel/Adam_1save/RestoreV2_34*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_5/kernel
V
save/RestoreV2_35/tensor_namesConst* 
valueBBglobal_step*
dtype0
O
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2

save/Assign_35Assignglobal_stepsave/RestoreV2_35*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
V
save/RestoreV2_36/tensor_namesConst* 
valueBBlast_reward*
dtype0
O
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2

save/Assign_36Assignlast_rewardsave/RestoreV2_36*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
\
save/RestoreV2_37/tensor_namesConst*&
valueBBlog_sigma_squared*
dtype0
O
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2

save/Assign_37Assignlog_sigma_squaredsave/RestoreV2_37*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
a
save/RestoreV2_38/tensor_namesConst*+
value"B Blog_sigma_squared/Adam*
dtype0
O
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2

save/Assign_38Assignlog_sigma_squared/Adamsave/RestoreV2_38*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
c
save/RestoreV2_39/tensor_namesConst*-
value$B"Blog_sigma_squared/Adam_1*
dtype0
O
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2

save/Assign_39Assignlog_sigma_squared/Adam_1save/RestoreV2_39*
T0*
validate_shape(*
use_locking(*$
_class
loc:@log_sigma_squared
´
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39
±
Const_4Const*
valueBB
batch_sizeB512BbetaB0.0025Bbuffer_sizeB10000BepsilonB0.2BgammaB0.99Bhidden_unitsB128BlambdB0.95Blearning_rateB0.0003B	max_stepsB2.0e6B	normalizeBFalseB	num_epochB5B
num_layersB2Btime_horizonB64Bsequence_lengthB32Bsummary_freqB10000Buse_recurrentBFalseBgraph_scopeB Bsummary_pathB./summaries/basicCurricula5Bis_ghostBFalseBis_imitationBFalse*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_4+Hyperparameters/serialized_summary_metadata*
T0"
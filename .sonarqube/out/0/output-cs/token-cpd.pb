�L
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Controllers\HomeController.cs
	namespace

 	
TailSpin


 
.

 
	SpaceGame

 
.

 
Web

  
.

  !
Controllers

! ,
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly !
IDocumentDBRepository .
<. /
Score/ 4
>4 5
_scoreRepository6 F
;F G
private 
readonly !
IDocumentDBRepository .
<. /
Profile/ 6
>6 7
_profileRespository8 K
;K L
public 
HomeController 
( !
IDocumentDBRepository !
<! "
Score" '
>' (
scoreRepository) 8
,8 9!
IDocumentDBRepository !
<! "
Profile" )
>) *
profileRespository+ =
) 
{ 	
_scoreRepository 
= 
scoreRepository .
;. /
_profileRespository 
=  !
profileRespository" 4
;4 5
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
int 
page 
= 
$num 
, 
int 
pageSize 
= 
$num 
, 
string 
mode 
= 
$str 
, 
string   
region   
=   
$str   
)!! 
{"" 	
var$$ 
vm$$ 
=$$ 
new$$  
LeaderboardViewModel$$ -
{%% 
Page&& 
=&& 
page&& 
,&& 
PageSize'' 
='' 
pageSize'' #
,''# $
SelectedMode(( 
=(( 
mode(( #
,((# $
SelectedRegion)) 
=))  
region))! '
,))' (
	GameModes++ 
=++ 
new++ 
List++  $
<++$ %
string++% +
>+++ ,
(++, -
)++- .
{,, 
$str-- 
,-- 
$str.. 
,.. 
$str// 
}00 
,00 
GameRegions22 
=22  !
new22" %
List22& *
<22* +
string22+ 1
>221 2
(222 3
)223 4
{33 
$str44 
,44  
$str55 
,55  
$str66 
,66 
$str77 
,77 
$str88  
,88  !
}99 
}:: 
;:: 
try<< 
{== 

ExpressionBB 
<BB 
FuncBB 
<BB  
ScoreBB  %
,BB% &
boolBB' +
>BB+ ,
>BB, -
queryPredicateBB. <
=BB= >
scoreBB? D
=>BBE G
(CC 
stringCC 
.CC 
IsNullOrEmptyCC )
(CC) *
modeCC* .
)CC. /
||CC0 2
scoreCC3 8
.CC8 9
GameModeCC9 A
==CCB D
modeCCE I
)CCI J
&&CCK M
(DD 
stringDD 
.DD 
IsNullOrEmptyDD )
(DD) *
regionDD* 0
)DD0 1
||DD2 4
scoreDD5 :
.DD: ;

GameRegionDD; E
==DDF H
regionDDI O
)DDO P
;DDP Q
varGG 
countItemsTaskGG "
=GG# $
_scoreRepositoryGG% 5
.GG5 6
CountItemsAsyncGG6 E
(GGE F
queryPredicateGGF T
)GGT U
;GGU V
IEnumerableJJ 
<JJ 
ScoreJJ !
>JJ! "
scoresJJ# )
=JJ* +
awaitJJ, 1
_scoreRepositoryJJ2 B
.JJB C
GetItemsAsyncJJC P
(JJP Q
queryPredicateKK "
,KK" #
scoreLL 
=>LL 
scoreLL "
.LL" #
	HighScoreLL# ,
,LL, -
pageMM 
-MM 
$numMM 
,MM 
pageSizeNN 
)OO 
;OO 
vmRR 
.RR 
TotalResultsRR 
=RR  !
awaitRR" '
countItemsTaskRR( 6
;RR6 7
ifUU 
(UU 
pageUU 
>UU 
$numUU 
)UU 
{VV 
vmWW 
.WW 
PrevLinkWW 
=WW  !
$"WW" $
/?page=WW$ +
{WW+ ,
pageWW, 0
-WW1 2
$numWW3 4
}WW4 5

&pageSize=WW5 ?
{WW? @
pageSizeWW@ H
}WWH I
&mode=WWI O
{WWO P
modeWWP T
}WWT U
&region=WWU ]
{WW] ^
regionWW^ d
}WWd e
#leaderboardWWe q
"WWq r
;WWr s
}XX 
ifYY 
(YY 
vmYY 
.YY 
TotalResultsYY #
>YY$ %
pageYY& *
*YY+ ,
pageSizeYY- 5
)YY5 6
{ZZ 
vm[[ 
.[[ 
NextLink[[ 
=[[  !
$"[[" $
/?page=[[$ +
{[[+ ,
page[[, 0
+[[1 2
$num[[3 4
}[[4 5

&pageSize=[[5 ?
{[[? @
pageSize[[@ H
}[[H I
&mode=[[I O
{[[O P
mode[[P T
}[[T U
&region=[[U ]
{[[] ^
region[[^ d
}[[d e
#leaderboard[[e q
"[[q r
;[[r s
}\\ 
var`` 
profiles`` 
=`` 
new`` "
List``# '
<``' (
Task``( ,
<``, -
Profile``- 4
>``4 5
>``5 6
(``6 7
)``7 8
;``8 9
foreachaa 
(aa 
varaa 
scoreaa "
inaa# %
scoresaa& ,
)aa, -
{bb 
profilescc 
.cc 
Addcc  
(cc  !
_profileRespositorycc! 4
.cc4 5
GetItemAsynccc5 A
(ccA B
scoreccB G
.ccG H
	ProfileIdccH Q
)ccQ R
)ccR S
;ccS T
}dd 
Taskee 
<ee 
Profileee 
>ee 
.ee 
WaitAllee %
(ee% &
profilesee& .
.ee. /
ToArrayee/ 6
(ee6 7
)ee7 8
)ee8 9
;ee9 :
vmhh 
.hh 
Scoreshh 
=hh 
scoreshh "
.hh" #
Ziphh# &
(hh& '
profileshh' /
,hh/ 0
(hh1 2
scorehh2 7
,hh7 8
profilehh9 @
)hh@ A
=>hhB D
newhhE H
ScoreProfilehhI U
{hhV W
ScorehhX ]
=hh^ _
scorehh` e
,hhe f
Profilehhg n
=hho p
profilehhq x
.hhx y
Resulthhy 
}
hh� �
)
hh� �
;
hh� �
returnjj 
Viewjj 
(jj 
vmjj 
)jj 
;jj  
}kk 
catchll 
(ll 
	Exceptionll 
)ll 
{mm 
returnnn 
Viewnn 
(nn 
vmnn 
)nn 
;nn  
}oo 
}pp 	
[rr 	
Routerr	 
(rr 
$strrr 
)rr 
]rr  
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (
Profiless) 0
(ss0 1
stringss1 7
idss8 :
,ss: ;
stringss< B
rankssC G
=ssG H
$strssH J
)ssJ K
{tt 	
tryuu 
{vv 
returnxx 
Viewxx 
(xx 
newxx 
ProfileViewModelxx  0
{xx1 2
Profilexx3 :
=xx; <
awaitxx= B
_profileRespositoryxxC V
.xxV W
GetItemAsyncxxW c
(xxc d
idxxd f
)xxf g
,xxg h
Rankxxi m
=xxn o
rankxxp t
}xxu v
)xxv w
;xxw x
}yy 
catchzz 
(zz 
	Exceptionzz 
)zz 
{{{ 
return|| 
RedirectToAction|| '
(||' (
$str||( +
)||+ ,
;||, -
}}} 
}~~ 	
public
�� 
IActionResult
�� 
Privacy
�� $
(
��$ %
)
��% &
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
ResponseCache
��	 
(
�� 
Duration
�� 
=
��  !
$num
��" #
,
��# $
Location
��% -
=
��. /#
ResponseCacheLocation
��0 E
.
��E F
None
��F J
,
��J K
NoStore
��L S
=
��T U
true
��V Z
)
��Z [
]
��[ \
public
�� 
IActionResult
�� 
Error
�� "
(
��" #
)
��# $
{
�� 	
return
�� 
View
�� 
(
�� 
new
�� 
ErrorViewModel
�� *
{
��+ ,
	RequestId
��- 6
=
��7 8
Activity
��9 A
.
��A B
Current
��B I
?
��I J
.
��J K
Id
��K M
??
��N P
HttpContext
��Q \
.
��\ ]
TraceIdentifier
��] l
}
��m n
)
��n o
;
��o p
}
�� 	
}
�� 
}�� �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\IDocumentDBRepository.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
{ 
public		 

	interface		 !
IDocumentDBRepository		 *
<		* +
T		+ ,
>		, -
where		. 3
T		4 5
:		6 7
Model		8 =
{

 
Task 
< 
T 
> 
GetItemAsync 
( 
string #
id$ &
)& '
;' (
Task!! 
<!! 
IEnumerable!! 
<!! 
T!! 
>!! 
>!! 
GetItemsAsync!! *
(!!* +

Expression"" 
<"" 
Func"" 
<"" 
T"" 
,"" 
bool"" #
>""# $
>""$ %
queryPredicate""& 4
,""4 5

Expression## 
<## 
Func## 
<## 
T## 
,## 
int## "
>##" #
>### $$
orderDescendingPredicate##% =
,##= >
int$$ 
page$$ 
=$$ 
$num$$ 
,$$ 
int%% 
pageSize%% 
=%% 
$num%% 
)&& 	
;&&	 

Task00 
<00 
int00 
>00 
CountItemsAsync00 !
(00! "

Expression00" ,
<00, -
Func00- 1
<001 2
T002 3
,003 4
bool005 9
>009 :
>00: ;
queryPredicate00< J
)00J K
;00K L
}11 
}22 �&
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\LocalDocumentDBRepository.cs
	namespace

 	
TailSpin


 
.

 
	SpaceGame

 
.

 
Web

  
{ 
public 

class %
LocalDocumentDBRepository *
<* +
T+ ,
>, -
:. /!
IDocumentDBRepository0 E
<E F
TF G
>G H
whereI N
TO P
:Q R
ModelS X
{ 
private 
readonly 
List 
< 
T 
>  
_items! '
;' (
public %
LocalDocumentDBRepository (
(( )
string) /
fileName0 8
)8 9
{ 	
_items 
= 
JsonConvert  
.  !
DeserializeObject! 2
<2 3
List3 7
<7 8
T8 9
>9 :
>: ;
(; <
File< @
.@ A
ReadAllTextA L
(L M
fileNameM U
)U V
)V W
;W X
} 	
public %
LocalDocumentDBRepository (
(( )
Stream) /
stream0 6
)6 7
{ 	
_items 
= 
JsonConvert  
.  !
DeserializeObject! 2
<2 3
List3 7
<7 8
T8 9
>9 :
>: ;
(; <
new< ?
StreamReader@ L
(L M
streamM S
)S T
.T U
	ReadToEndU ^
(^ _
)_ `
)` a
;a b
} 	
public%% 
Task%% 
<%% 
T%% 
>%% 
GetItemAsync%% #
(%%# $
string%%$ *
id%%+ -
)%%- .
{&& 	
return'' 
Task'' 
<'' 
T'' 
>'' 
.'' 

FromResult'' %
(''% &
_items''& ,
.'', -
Single''- 3
(''3 4
item''4 8
=>''9 ;
item''< @
.''@ A
Id''A C
==''D F
id''G I
)''I J
)''J K
;''K L
}(( 	
public66 
Task66 
<66 
IEnumerable66 
<66  
T66  !
>66! "
>66" #
GetItemsAsync66$ 1
(661 2

Expression77 
<77 
Func77 
<77 
T77 
,77 
bool77 #
>77# $
>77$ %
queryPredicate77& 4
,774 5

Expression88 
<88 
Func88 
<88 
T88 
,88 
int88 "
>88" #
>88# $$
orderDescendingPredicate88% =
,88= >
int99 
page99 
=99 
$num99 
,99 
int99 
pageSize99 &
=99' (
$num99) +
):: 	
{;; 	
var<< 
result<< 
=<< 
_items<< 
.<<  
AsQueryable<<  +
(<<+ ,
)<<, -
.== 
Where== 
(== 
queryPredicate== %
)==% &
.>> 
OrderByDescending>> "
(>>" #$
orderDescendingPredicate>># ;
)>>; <
.?? 
Skip?? 
(?? 
page?? 
*?? 
pageSize?? %
)??% &
.@@ 
Take@@ 
(@@ 
pageSize@@ 
)@@ 
.AA 
AsEnumerableAA 
(AA 
)AA 
;AA  
returnCC 
TaskCC 
<CC 
IEnumerableCC #
<CC# $
TCC$ %
>CC% &
>CC& '
.CC' (

FromResultCC( 2
(CC2 3
resultCC3 9
)CC9 :
;CC: ;
}DD 	
publicNN 
TaskNN 
<NN 
intNN 
>NN 
CountItemsAsyncNN (
(NN( )

ExpressionNN) 3
<NN3 4
FuncNN4 8
<NN8 9
TNN9 :
,NN: ;
boolNN< @
>NN@ A
>NNA B
queryPredicateNNC Q
)NNQ R
{OO 	
varPP 
countPP 
=PP 
_itemsPP 
.PP 
AsQueryablePP *
(PP* +
)PP+ ,
.QQ 
WhereQQ 
(QQ 
queryPredicateQQ %
)QQ% &
.RR 
CountRR 
(RR 
)RR 
;RR 
returnTT 
TaskTT 
<TT 
intTT 
>TT 
.TT 

FromResultTT '
(TT' (
countTT( -
)TT- .
;TT. /
}UU 	
}VV 
}WW �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\ErrorViewModel.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\LeaderboardViewModel.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

class  
LeaderboardViewModel %
{ 
public 
string 
SelectedMode "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
string

 
SelectedRegion

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
int 
Page 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
IEnumerable 
< 
ScoreProfile '
>' (
Scores) /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IEnumerable 
< 
string !
>! "
	GameModes# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IEnumerable 
< 
string !
>! "
GameRegions# .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
PrevLink 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
NextLink 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
TotalResults 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public$$ 

struct$$ 
ScoreProfile$$ 
{%% 
public'' 
Score'' 
Score'' 
;'' 
public)) 
Profile)) 
Profile)) 
;)) 
}** 
}++ �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\Model.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

abstract 
class 
Model 
{		 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
} 
} �

�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\Profile.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

class 
Profile 
: 
Model  
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
string 
	AvatarUrl 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
string 
[ 
] 
Achievements $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\ProfileViewModel.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

class 
ProfileViewModel !
{ 
public 
Profile 
Profile 
; 
public 
string 
Rank 
; 
}		 
}

 �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Models\Score.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
.  !
Models! '
{ 
public 

class 
Score 
: 
Model 
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public		 
string		 
	ProfileId		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
int 
	HighScore 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
GameMode 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

GameRegion  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �	
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Program.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	 
CreateWebHostBuilder

  
(

  !
args

! %
)

% &
.

& '
Build

' ,
(

, -
)

- .
.

. /
Run

/ 2
(

2 3
)

3 4
;

4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} �
�C:\Users\Usuario.DESKTOP-4SRB24B\Documents\Proyectos\mslearn-tailspin-spacegame-web\mslearn-tailspin-spacegame-web\Tailspin.SpaceGame.Web\Startup.cs
	namespace 	
TailSpin
 
. 
	SpaceGame 
. 
Web  
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
services 
. 
	Configure 
< 
CookiePolicyOptions 2
>2 3
(3 4
options4 ;
=>< >
{ 
options!! 
.!! 
CheckConsentNeeded!! *
=!!+ ,
context!!- 4
=>!!5 7
true!!8 <
;!!< =
options"" 
."" !
MinimumSameSitePolicy"" -
="". /
SameSiteMode""0 <
.""< =
None""= A
;""A B
}## 
)## 
;## 
services&& 
.&& 
AddSingleton&& !
<&&! "!
IDocumentDBRepository&&" 7
<&&7 8
Score&&8 =
>&&= >
>&&> ?
(&&? @
new&&@ C%
LocalDocumentDBRepository&&D ]
<&&] ^
Score&&^ c
>&&c d
(&&d e
$str&&e ~
)&&~ 
)	&& �
;
&&� �
services'' 
.'' 
AddSingleton'' !
<''! "!
IDocumentDBRepository''" 7
<''7 8
Profile''8 ?
>''? @
>''@ A
(''A B
new''B E%
LocalDocumentDBRepository''F _
<''_ `
Profile''` g
>''g h
(''h i
$str	''i �
)
''� �
)
''� �
;
''� �
}(( 	
public++ 
void++ 
	Configure++ 
(++ 
IApplicationBuilder++ 1
app++2 5
,++5 6
IWebHostEnvironment++7 J
env++K N
)++N O
{,, 	
if-- 
(-- 
env-- 
.-- 
IsDevelopment-- !
(--! "
)--" #
)--# $
{.. 
app// 
.// %
UseDeveloperExceptionPage// -
(//- .
)//. /
;/// 0
}00 
else11 
{22 
app33 
.33 
UseExceptionHandler33 '
(33' (
$str33( 5
)335 6
;336 7
app44 
.44 
UseHsts44 
(44 
)44 
;44 
}55 
app77 
.77 
UseHttpsRedirection77 #
(77# $
)77$ %
;77% &
app88 
.88 
UseStaticFiles88 
(88 
)88  
;88  !
app:: 
.:: 

UseRouting:: 
(:: 
):: 
;:: 
app<< 
.<< 
UseAuthorization<<  
(<<  !
)<<! "
;<<" #
app>> 
.>> 
UseEndpoints>> 
(>> 
	endpoints>> &
=>>>' )
{?? 
	endpoints@@ 
.@@ 
MapControllerRoute@@ ,
(@@, -
nameAA 
:AA 
$strAA #
,AA# $
patternBB 
:BB 
$strBB E
)BBE F
;BBF G
}CC 
)CC 
;CC 
}DD 	
}EE 
}FF 
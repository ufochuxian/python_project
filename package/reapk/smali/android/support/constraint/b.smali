.class public Landroid/support/constraint/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/b$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x5

.field private static final B:I = 0x6

.field private static final C:I = 0x7

.field private static final D:I = 0x8

.field private static final E:I = 0x9

.field private static final F:I = 0xa

.field private static final G:I = 0xb

.field private static final H:I = 0xc

.field private static final I:I = 0xd

.field private static final J:I = 0xe

.field private static final K:I = 0xf

.field private static final L:I = 0x10

.field private static final M:I = 0x11

.field private static final N:I = 0x12

.field private static final O:I = 0x13

.field private static final P:I = 0x14

.field private static final Q:I = 0x15

.field private static final R:I = 0x16

.field private static final S:I = 0x17

.field private static final T:I = 0x18

.field private static final U:I = 0x19

.field private static final V:I = 0x1a

.field private static final W:I = 0x1b

.field private static final X:I = 0x1c

.field private static final Y:I = 0x1d

.field private static final Z:I = 0x1e

.field public static final a:I = 0x0

.field private static final aa:I = 0x1f

.field private static final ab:I = 0x20

.field private static final ac:I = 0x21

.field private static final ad:I = 0x22

.field private static final ae:I = 0x23

.field private static final af:I = 0x24

.field private static final ag:I = 0x25

.field private static final ah:I = 0x26

.field private static final ai:I = 0x27

.field private static final aj:I = 0x28

.field private static final ak:I = 0x29

.field private static final al:I = 0x2a

.field private static final am:I = 0x2b

.field public static final b:I = -0x2

.field public static final c:I = 0x0

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x0

.field public static final i:I = 0x4

.field public static final j:I = 0x8

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field private static final r:Ljava/lang/String; = "ConstraintSet"

.field private static final s:Z = false

.field private static final t:[I

.field private static v:Landroid/util/SparseIntArray; = null

.field private static final w:I = 0x1

.field private static final x:I = 0x2

.field private static final y:I = 0x3

.field private static final z:I = 0x4


# instance fields
.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x2b

    .line 158
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/constraint/b;->t:[I

    .line 162
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    .line 210
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 211
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 212
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 213
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 214
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 215
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 216
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 217
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 218
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 220
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 221
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 222
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 223
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 224
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 225
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 227
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 228
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 229
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 230
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 232
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 233
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 234
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 237
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 238
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 239
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 243
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 245
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintLeft_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 248
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 250
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 252
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 255
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 257
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 258
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 259
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    sget-object v0, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/c$c;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 261
    return-void

    .line 158
    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    .line 263
    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "def"    # I

    .prologue
    const/4 v1, -0x1

    .line 1005
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1006
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    .line 1007
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1009
    :cond_0
    return v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/b$a;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1013
    new-instance v1, Landroid/support/constraint/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/constraint/b$a;-><init>(Landroid/support/constraint/b$1;)V

    .line 1014
    .local v1, "c":Landroid/support/constraint/b$a;
    sget-object v2, Landroid/support/constraint/c$c;->ConstraintSet:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1015
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1, v0}, Landroid/support/constraint/b;->a(Landroid/support/constraint/b$a;Landroid/content/res/TypedArray;)V

    .line 1016
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1017
    return-object v1
.end method

.method private a(Landroid/support/constraint/b$a;Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "c"    # Landroid/support/constraint/b$a;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1021
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1022
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1023
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1058
    .local v1, "attr":I
    sget-object v3, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1187
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/b;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :pswitch_0
    iget v3, p1, Landroid/support/constraint/b$a;->i:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->i:I

    goto :goto_1

    .line 1063
    :pswitch_1
    iget v3, p1, Landroid/support/constraint/b$a;->j:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->j:I

    goto :goto_1

    .line 1066
    :pswitch_2
    iget v3, p1, Landroid/support/constraint/b$a;->k:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->k:I

    goto :goto_1

    .line 1069
    :pswitch_3
    iget v3, p1, Landroid/support/constraint/b$a;->l:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->l:I

    goto :goto_1

    .line 1072
    :pswitch_4
    iget v3, p1, Landroid/support/constraint/b$a;->m:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->m:I

    goto :goto_1

    .line 1075
    :pswitch_5
    iget v3, p1, Landroid/support/constraint/b$a;->n:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->n:I

    goto :goto_1

    .line 1078
    :pswitch_6
    iget v3, p1, Landroid/support/constraint/b$a;->o:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->o:I

    goto :goto_1

    .line 1081
    :pswitch_7
    iget v3, p1, Landroid/support/constraint/b$a;->p:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->p:I

    goto :goto_1

    .line 1084
    :pswitch_8
    iget v3, p1, Landroid/support/constraint/b$a;->q:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->q:I

    goto :goto_1

    .line 1087
    :pswitch_9
    iget v3, p1, Landroid/support/constraint/b$a;->y:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->y:I

    goto :goto_1

    .line 1090
    :pswitch_a
    iget v3, p1, Landroid/support/constraint/b$a;->z:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->z:I

    goto :goto_1

    .line 1093
    :pswitch_b
    iget v3, p1, Landroid/support/constraint/b$a;->f:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->f:I

    goto :goto_1

    .line 1096
    :pswitch_c
    iget v3, p1, Landroid/support/constraint/b$a;->g:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->g:I

    goto :goto_1

    .line 1099
    :pswitch_d
    iget v3, p1, Landroid/support/constraint/b$a;->h:F

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->h:F

    goto :goto_1

    .line 1102
    :pswitch_e
    iget v3, p1, Landroid/support/constraint/b$a;->A:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->A:I

    goto/16 :goto_1

    .line 1105
    :pswitch_f
    iget v3, p1, Landroid/support/constraint/b$a;->r:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->r:I

    goto/16 :goto_1

    .line 1108
    :pswitch_10
    iget v3, p1, Landroid/support/constraint/b$a;->s:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->s:I

    goto/16 :goto_1

    .line 1111
    :pswitch_11
    iget v3, p1, Landroid/support/constraint/b$a;->t:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->t:I

    goto/16 :goto_1

    .line 1114
    :pswitch_12
    iget v3, p1, Landroid/support/constraint/b$a;->u:I

    invoke-static {p2, v1, v3}, Landroid/support/constraint/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->o:I

    goto/16 :goto_1

    .line 1117
    :pswitch_13
    iget v3, p1, Landroid/support/constraint/b$a;->I:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->I:I

    goto/16 :goto_1

    .line 1120
    :pswitch_14
    iget v3, p1, Landroid/support/constraint/b$a;->J:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->J:I

    goto/16 :goto_1

    .line 1123
    :pswitch_15
    iget v3, p1, Landroid/support/constraint/b$a;->K:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->K:I

    goto/16 :goto_1

    .line 1126
    :pswitch_16
    iget v3, p1, Landroid/support/constraint/b$a;->L:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->L:I

    goto/16 :goto_1

    .line 1129
    :pswitch_17
    iget v3, p1, Landroid/support/constraint/b$a;->N:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->N:I

    goto/16 :goto_1

    .line 1132
    :pswitch_18
    iget v3, p1, Landroid/support/constraint/b$a;->M:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->M:I

    goto/16 :goto_1

    .line 1135
    :pswitch_19
    iget v3, p1, Landroid/support/constraint/b$a;->v:F

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->v:F

    goto/16 :goto_1

    .line 1138
    :pswitch_1a
    iget v3, p1, Landroid/support/constraint/b$a;->w:F

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->w:F

    goto/16 :goto_1

    .line 1141
    :pswitch_1b
    iget v3, p1, Landroid/support/constraint/b$a;->B:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->B:I

    goto/16 :goto_1

    .line 1144
    :pswitch_1c
    iget v3, p1, Landroid/support/constraint/b$a;->C:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->C:I

    goto/16 :goto_1

    .line 1147
    :pswitch_1d
    iget v3, p1, Landroid/support/constraint/b$a;->G:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->G:I

    goto/16 :goto_1

    .line 1150
    :pswitch_1e
    iget v3, p1, Landroid/support/constraint/b$a;->F:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->F:I

    goto/16 :goto_1

    .line 1153
    :pswitch_1f
    iget v3, p1, Landroid/support/constraint/b$a;->D:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->D:I

    goto/16 :goto_1

    .line 1156
    :pswitch_20
    iget v3, p1, Landroid/support/constraint/b$a;->E:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->E:I

    goto/16 :goto_1

    .line 1159
    :pswitch_21
    iget v3, p1, Landroid/support/constraint/b$a;->b:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->b:I

    goto/16 :goto_1

    .line 1162
    :pswitch_22
    iget v3, p1, Landroid/support/constraint/b$a;->c:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->c:I

    goto/16 :goto_1

    .line 1165
    :pswitch_23
    iget v3, p1, Landroid/support/constraint/b$a;->H:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->H:I

    .line 1166
    sget-object v3, Landroid/support/constraint/b;->t:[I

    iget v4, p1, Landroid/support/constraint/b$a;->H:I

    aget v3, v3, v4

    iput v3, p1, Landroid/support/constraint/b$a;->H:I

    goto/16 :goto_1

    .line 1169
    :pswitch_24
    iget v3, p1, Landroid/support/constraint/b$a;->O:F

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->O:F

    goto/16 :goto_1

    .line 1172
    :pswitch_25
    iget v3, p1, Landroid/support/constraint/b$a;->P:F

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->P:F

    goto/16 :goto_1

    .line 1175
    :pswitch_26
    iget v3, p1, Landroid/support/constraint/b$a;->R:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->R:I

    goto/16 :goto_1

    .line 1178
    :pswitch_27
    iget v3, p1, Landroid/support/constraint/b$a;->Q:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->Q:I

    goto/16 :goto_1

    .line 1181
    :pswitch_28
    iget v3, p1, Landroid/support/constraint/b$a;->d:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroid/support/constraint/b$a;->d:I

    goto/16 :goto_1

    .line 1184
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/support/constraint/b$a;->x:Ljava/lang/String;

    goto/16 :goto_1

    .line 1190
    .end local v1    # "attr":I
    :cond_0
    return-void

    .line 1058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_20
        :pswitch_7
        :pswitch_6
        :pswitch_29
        :pswitch_9
        :pswitch_a
        :pswitch_1e
        :pswitch_12
        :pswitch_11
        :pswitch_16
        :pswitch_18
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_19
        :pswitch_22
        :pswitch_23
        :pswitch_21
        :pswitch_1b
        :pswitch_0
        :pswitch_1
        :pswitch_e
        :pswitch_1c
        :pswitch_2
        :pswitch_3
        :pswitch_1d
        :pswitch_f
        :pswitch_10
        :pswitch_1f
        :pswitch_5
        :pswitch_4
        :pswitch_1a
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method private b(I)Landroid/support/constraint/b$a;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/b$a;-><init>(Landroid/support/constraint/b$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    return-object v0
.end method

.method private b(IIIIIIIF)V
    .locals 7
    .param p1, "centerID"    # I
    .param p2, "leftId"    # I
    .param p3, "leftSide"    # I
    .param p4, "leftMargin"    # I
    .param p5, "rightId"    # I
    .param p6, "rightSide"    # I
    .param p7, "rightMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 512
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 513
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 514
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/b$a;

    .line 515
    .local v6, "constraint":Landroid/support/constraint/b$a;
    iput p8, v6, Landroid/support/constraint/b$a;->v:F

    .line 516
    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 1
    .param p1, "side"    # I

    .prologue
    .line 943
    packed-switch p1, :pswitch_data_0

    .line 959
    const-string v0, "undefined"

    :goto_0
    return-object v0

    .line 945
    :pswitch_0
    const-string v0, "left"

    goto :goto_0

    .line 947
    :pswitch_1
    const-string v0, "right"

    goto :goto_0

    .line 949
    :pswitch_2
    const-string v0, "top"

    goto :goto_0

    .line 951
    :pswitch_3
    const-string v0, "bottom"

    goto :goto_0

    .line 953
    :pswitch_4
    const-string v0, "baseline"

    goto :goto_0

    .line 955
    :pswitch_5
    const-string v0, "start"

    goto :goto_0

    .line 957
    :pswitch_6
    const-string v0, "end"

    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c(IIIIIIIF)V
    .locals 7
    .param p1, "centerID"    # I
    .param p2, "topId"    # I
    .param p3, "topSide"    # I
    .param p4, "topMargin"    # I
    .param p5, "bottomId"    # I
    .param p6, "bottomSide"    # I
    .param p7, "bottomMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 519
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 520
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 521
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/b$a;

    .line 522
    .local v6, "constraint":Landroid/support/constraint/b$a;
    iput p8, v6, Landroid/support/constraint/b$a;->w:F

    .line 523
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    return-void
.end method

.method public a(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .prologue
    .line 832
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->v:F

    .line 833
    return-void
.end method

.method public a(II)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .prologue
    const/4 v4, 0x0

    .line 718
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/b;->a(IIIIIIIF)V

    .line 719
    return-void
.end method

.method public a(III)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .prologue
    .line 798
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    .line 799
    .local v0, "constraint":Landroid/support/constraint/b$a;
    packed-switch p2, :pswitch_data_0

    .line 821
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 801
    :pswitch_0
    iput p3, v0, Landroid/support/constraint/b$a;->B:I

    .line 823
    :goto_0
    return-void

    .line 804
    :pswitch_1
    iput p3, v0, Landroid/support/constraint/b$a;->C:I

    goto :goto_0

    .line 807
    :pswitch_2
    iput p3, v0, Landroid/support/constraint/b$a;->D:I

    goto :goto_0

    .line 810
    :pswitch_3
    iput p3, v0, Landroid/support/constraint/b$a;->E:I

    goto :goto_0

    .line 813
    :pswitch_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    :pswitch_5
    iput p3, v0, Landroid/support/constraint/b$a;->G:I

    goto :goto_0

    .line 818
    :pswitch_6
    iput p3, v0, Landroid/support/constraint/b$a;->F:I

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(IIIII)V
    .locals 10
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I
    .param p5, "margin"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 608
    iget-object v1, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    iget-object v1, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/support/constraint/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/constraint/b$a;-><init>(Landroid/support/constraint/b$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    .line 612
    .local v0, "constraint":Landroid/support/constraint/b$a;
    packed-switch p2, :pswitch_data_0

    .line 707
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :pswitch_0
    if-ne p4, v6, :cond_1

    .line 615
    iput p3, v0, Landroid/support/constraint/b$a;->i:I

    .line 616
    iput v5, v0, Landroid/support/constraint/b$a;->j:I

    .line 624
    :goto_0
    iput p5, v0, Landroid/support/constraint/b$a;->B:I

    .line 709
    :goto_1
    return-void

    .line 617
    :cond_1
    if-ne p4, v7, :cond_2

    .line 618
    iput p3, v0, Landroid/support/constraint/b$a;->j:I

    .line 619
    iput v5, v0, Landroid/support/constraint/b$a;->i:I

    goto :goto_0

    .line 622
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :pswitch_1
    if-ne p4, v6, :cond_3

    .line 628
    iput p3, v0, Landroid/support/constraint/b$a;->k:I

    .line 629
    iput v5, v0, Landroid/support/constraint/b$a;->l:I

    .line 638
    :goto_2
    iput p5, v0, Landroid/support/constraint/b$a;->C:I

    goto :goto_1

    .line 631
    :cond_3
    if-ne p4, v7, :cond_4

    .line 632
    iput p3, v0, Landroid/support/constraint/b$a;->l:I

    .line 633
    iput v5, v0, Landroid/support/constraint/b$a;->k:I

    goto :goto_2

    .line 636
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :pswitch_2
    if-ne p4, v8, :cond_5

    .line 642
    iput p3, v0, Landroid/support/constraint/b$a;->m:I

    .line 643
    iput v5, v0, Landroid/support/constraint/b$a;->n:I

    .line 644
    iput v5, v0, Landroid/support/constraint/b$a;->q:I

    .line 653
    :goto_3
    iput p5, v0, Landroid/support/constraint/b$a;->D:I

    goto :goto_1

    .line 645
    :cond_5
    if-ne p4, v9, :cond_6

    .line 646
    iput p3, v0, Landroid/support/constraint/b$a;->n:I

    .line 647
    iput v5, v0, Landroid/support/constraint/b$a;->m:I

    .line 648
    iput v5, v0, Landroid/support/constraint/b$a;->q:I

    goto :goto_3

    .line 651
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :pswitch_3
    if-ne p4, v9, :cond_7

    .line 657
    iput p3, v0, Landroid/support/constraint/b$a;->p:I

    .line 658
    iput v5, v0, Landroid/support/constraint/b$a;->o:I

    .line 659
    iput v5, v0, Landroid/support/constraint/b$a;->q:I

    .line 669
    :goto_4
    iput p5, v0, Landroid/support/constraint/b$a;->E:I

    goto/16 :goto_1

    .line 661
    :cond_7
    if-ne p4, v8, :cond_8

    .line 662
    iput p3, v0, Landroid/support/constraint/b$a;->o:I

    .line 663
    iput v5, v0, Landroid/support/constraint/b$a;->p:I

    .line 664
    iput v5, v0, Landroid/support/constraint/b$a;->q:I

    goto :goto_4

    .line 667
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :pswitch_4
    const/4 v1, 0x5

    if-ne p4, v1, :cond_9

    .line 673
    iput p3, v0, Landroid/support/constraint/b$a;->q:I

    .line 674
    iput v5, v0, Landroid/support/constraint/b$a;->p:I

    .line 675
    iput v5, v0, Landroid/support/constraint/b$a;->o:I

    .line 676
    iput v5, v0, Landroid/support/constraint/b$a;->m:I

    .line 677
    iput v5, v0, Landroid/support/constraint/b$a;->n:I

    goto/16 :goto_1

    .line 679
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :pswitch_5
    const/4 v1, 0x6

    if-ne p4, v1, :cond_a

    .line 684
    iput p3, v0, Landroid/support/constraint/b$a;->s:I

    .line 685
    iput v5, v0, Landroid/support/constraint/b$a;->r:I

    .line 692
    :goto_5
    iput p5, v0, Landroid/support/constraint/b$a;->G:I

    goto/16 :goto_1

    .line 686
    :cond_a
    const/4 v1, 0x7

    if-ne p4, v1, :cond_b

    .line 687
    iput p3, v0, Landroid/support/constraint/b$a;->r:I

    .line 688
    iput v5, v0, Landroid/support/constraint/b$a;->s:I

    goto :goto_5

    .line 690
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :pswitch_6
    const/4 v1, 0x7

    if-ne p4, v1, :cond_c

    .line 696
    iput p3, v0, Landroid/support/constraint/b$a;->u:I

    .line 697
    iput v5, v0, Landroid/support/constraint/b$a;->t:I

    .line 704
    :goto_6
    iput p5, v0, Landroid/support/constraint/b$a;->F:I

    goto/16 :goto_1

    .line 698
    :cond_c
    const/4 v1, 0x6

    if-ne p4, v1, :cond_d

    .line 699
    iput p3, v0, Landroid/support/constraint/b$a;->t:I

    .line 700
    iput v5, v0, Landroid/support/constraint/b$a;->u:I

    goto :goto_6

    .line 702
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(IIIIIIIF)V
    .locals 7
    .param p1, "centerID"    # I
    .param p2, "firstID"    # I
    .param p3, "firstSide"    # I
    .param p4, "firstMargin"    # I
    .param p5, "secondId"    # I
    .param p6, "secondSide"    # I
    .param p7, "secondMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 488
    if-gez p4, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    if-gez p7, :cond_1

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p8, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p8, v0

    if-lez v0, :cond_3

    .line 495
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_3
    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 499
    :cond_4
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 500
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 501
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/b$a;

    .line 502
    .local v6, "constraint":Landroid/support/constraint/b$a;
    iput p8, v6, Landroid/support/constraint/b$a;->v:F

    .line 509
    :goto_0
    return-void

    .line 504
    .end local v6    # "constraint":Landroid/support/constraint/b$a;
    :cond_5
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 505
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 506
    iget-object v0, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/b$a;

    .line 507
    .restart local v6    # "constraint":Landroid/support/constraint/b$a;
    iput p8, v6, Landroid/support/constraint/b$a;->w:F

    goto :goto_0
.end method

.method public a(II[I[FI)V
    .locals 8
    .param p1, "topId"    # I
    .param p2, "bottomId"    # I
    .param p3, "chainIds"    # [I
    .param p4, "weights"    # [F
    .param p5, "style"    # I

    .prologue
    .line 536
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-eq v0, v1, :cond_1

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_1
    if-eqz p4, :cond_2

    .line 543
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 545
    :cond_2
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p5, v0, Landroid/support/constraint/b$a;->R:I

    .line 547
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 548
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_4

    .line 549
    aget v6, p3, v7

    .line 550
    .local v6, "chainId":I
    aget v1, p3, v7

    const/4 v2, 0x3

    add-int/lit8 v0, v7, -0x1

    aget v3, p3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 551
    add-int/lit8 v0, v7, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    aget v3, p3, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 552
    if-eqz p4, :cond_3

    .line 553
    aget v0, p3, v7

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    aget v1, p4, v7

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 548
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 556
    .end local v6    # "chainId":I
    :cond_4
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 557
    if-eqz p4, :cond_5

    .line 558
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 560
    :cond_5
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "ratio"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput-object p2, v0, Landroid/support/constraint/b$a;->x:Ljava/lang/String;

    .line 854
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constraintLayoutId"    # I

    .prologue
    .line 412
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/b;->a(Landroid/support/constraint/ConstraintLayout;)V

    .line 413
    return-void
.end method

.method public a(Landroid/support/constraint/ConstraintLayout;)V
    .locals 10
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 422
    .local v1, "count":I
    iget-object v6, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 423
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 424
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 425
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$a;

    .line 427
    .local v4, "param":Landroid/support/constraint/ConstraintLayout$a;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    .line 428
    .local v3, "id":I
    iget-object v6, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 429
    iget-object v6, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/support/constraint/b$a;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/support/constraint/b$a;-><init>(Landroid/support/constraint/b$1;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_0
    iget-object v6, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    .line 432
    .local v0, "constraint":Landroid/support/constraint/b$a;
    invoke-static {v0, v3, v4}, Landroid/support/constraint/b$a;->a(Landroid/support/constraint/b$a;ILandroid/support/constraint/ConstraintLayout$a;)V

    .line 433
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v0, Landroid/support/constraint/b$a;->H:I

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "constraint":Landroid/support/constraint/b$a;
    .end local v3    # "id":I
    .end local v4    # "param":Landroid/support/constraint/ConstraintLayout$a;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public b(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->w:F

    .line 843
    return-void
.end method

.method public b(II)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .prologue
    const/4 v4, 0x0

    .line 728
    const/4 v3, 0x3

    const/4 v6, 0x4

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/b;->a(IIIIIIIF)V

    .line 729
    return-void
.end method

.method public b(II[I[FI)V
    .locals 8
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I
    .param p3, "chainIds"    # [I
    .param p4, "weights"    # [F
    .param p5, "style"    # I

    .prologue
    .line 573
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-eq v0, v1, :cond_1

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_1
    if-eqz p4, :cond_2

    .line 580
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 582
    :cond_2
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p5, v0, Landroid/support/constraint/b$a;->Q:I

    .line 583
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 584
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_4

    .line 585
    aget v6, p3, v7

    .line 586
    .local v6, "chainId":I
    aget v1, p3, v7

    const/4 v2, 0x3

    add-int/lit8 v0, v7, -0x1

    aget v3, p3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 587
    add-int/lit8 v0, v7, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    aget v3, p3, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 588
    if-eqz p4, :cond_3

    .line 589
    aget v0, p3, v7

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    aget v1, p4, v7

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 584
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 592
    .end local v6    # "chainId":I
    :cond_4
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/b;->a(IIIII)V

    .line 593
    if-eqz p4, :cond_5

    .line 594
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/b$a;->O:F

    .line 596
    :cond_5
    return-void
.end method

.method public b(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    const/4 v9, 0x1

    .line 969
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 970
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 971
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 972
    .local v1, "document":Ljava/lang/String;
    const/4 v6, 0x0

    .line 975
    .local v6, "tagName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 976
    .local v3, "eventType":I
    :goto_0
    if-eq v3, v9, :cond_1

    .line 978
    packed-switch v3, :pswitch_data_0

    .line 977
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 980
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 981
    goto :goto_1

    .line 983
    :pswitch_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 984
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Landroid/support/constraint/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/b$a;

    move-result-object v0

    .line 985
    .local v0, "constraint":Landroid/support/constraint/b$a;
    const-string v7, "Guideline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 986
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/support/constraint/b$a;->a:Z

    .line 988
    :cond_0
    iget-object v7, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    iget v8, v0, Landroid/support/constraint/b$a;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 997
    .end local v0    # "constraint":Landroid/support/constraint/b$a;
    .end local v3    # "eventType":I
    :catch_0
    move-exception v2

    .line 998
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1002
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 991
    .restart local v3    # "eventType":I
    :pswitch_3
    const/4 v6, 0x0

    .line 992
    goto :goto_1

    .line 999
    .end local v3    # "eventType":I
    :catch_1
    move-exception v2

    .line 1000
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Landroid/support/constraint/ConstraintLayout;)V
    .locals 10
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 444
    .local v1, "count":I
    new-instance v6, Ljava/util/HashSet;

    iget-object v8, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v6, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 447
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 448
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v4

    .line 449
    .local v4, "id":I
    iget-object v8, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 450
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v8, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    .line 452
    .local v0, "constraint":Landroid/support/constraint/b$a;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$a;

    .line 453
    .local v5, "param":Landroid/support/constraint/ConstraintLayout$a;
    invoke-virtual {v0, v5}, Landroid/support/constraint/b$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    .line 454
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget v8, v0, Landroid/support/constraint/b$a;->H:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .end local v0    # "constraint":Landroid/support/constraint/b$a;
    .end local v5    # "param":Landroid/support/constraint/ConstraintLayout$a;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    .end local v4    # "id":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 459
    .local v4, "id":Ljava/lang/Integer;
    iget-object v9, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    .line 460
    .restart local v0    # "constraint":Landroid/support/constraint/b$a;
    iget-boolean v9, v0, Landroid/support/constraint/b$a;->a:Z

    if-eqz v9, :cond_2

    .line 461
    new-instance v2, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 462
    .local v2, "g":Landroid/support/constraint/Guideline;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 463
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->b()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v5

    .line 464
    .restart local v5    # "param":Landroid/support/constraint/ConstraintLayout$a;
    invoke-virtual {v0, v5}, Landroid/support/constraint/b$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    .line 465
    invoke-virtual {p1, v2, v5}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 468
    .end local v0    # "constraint":Landroid/support/constraint/b$a;
    .end local v2    # "g":Landroid/support/constraint/Guideline;
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "param":Landroid/support/constraint/ConstraintLayout$a;
    :cond_3
    return-void
.end method

.method public c(IF)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "ratio"    # F

    .prologue
    const/4 v1, -0x1

    .line 930
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->h:F

    .line 931
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/b$a;->g:I

    .line 932
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/b$a;->f:I

    .line 933
    return-void
.end method

.method public c(II)V
    .locals 5
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 747
    iget-object v1, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Landroid/support/constraint/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/b$a;

    .line 749
    .local v0, "constraint":Landroid/support/constraint/b$a;
    packed-switch p2, :pswitch_data_0

    .line 785
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :pswitch_0
    iput v3, v0, Landroid/support/constraint/b$a;->j:I

    .line 752
    iput v3, v0, Landroid/support/constraint/b$a;->i:I

    .line 753
    iput v4, v0, Landroid/support/constraint/b$a;->B:I

    .line 788
    .end local v0    # "constraint":Landroid/support/constraint/b$a;
    :cond_0
    :goto_0
    return-void

    .line 756
    .restart local v0    # "constraint":Landroid/support/constraint/b$a;
    :pswitch_1
    iput v3, v0, Landroid/support/constraint/b$a;->j:I

    .line 757
    iput v3, v0, Landroid/support/constraint/b$a;->i:I

    .line 758
    iput v4, v0, Landroid/support/constraint/b$a;->C:I

    goto :goto_0

    .line 761
    :pswitch_2
    iput v3, v0, Landroid/support/constraint/b$a;->n:I

    .line 762
    iput v3, v0, Landroid/support/constraint/b$a;->m:I

    .line 763
    iput v4, v0, Landroid/support/constraint/b$a;->D:I

    goto :goto_0

    .line 766
    :pswitch_3
    iput v3, v0, Landroid/support/constraint/b$a;->o:I

    .line 767
    iput v3, v0, Landroid/support/constraint/b$a;->p:I

    .line 768
    iput v4, v0, Landroid/support/constraint/b$a;->E:I

    goto :goto_0

    .line 772
    :pswitch_4
    iput v3, v0, Landroid/support/constraint/b$a;->q:I

    goto :goto_0

    .line 775
    :pswitch_5
    iput v3, v0, Landroid/support/constraint/b$a;->r:I

    .line 776
    iput v3, v0, Landroid/support/constraint/b$a;->s:I

    .line 777
    iput v4, v0, Landroid/support/constraint/b$a;->G:I

    goto :goto_0

    .line 780
    :pswitch_6
    iput v3, v0, Landroid/support/constraint/b$a;->t:I

    .line 781
    iput v3, v0, Landroid/support/constraint/b$a;->u:I

    .line 782
    iput v4, v0, Landroid/support/constraint/b$a;->F:I

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public d(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 863
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->H:I

    .line 864
    return-void
.end method

.method public e(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .prologue
    .line 873
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->c:I

    .line 874
    return-void
.end method

.method public f(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .prologue
    .line 883
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->b:I

    .line 884
    return-void
.end method

.method public g(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 893
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    .line 894
    .local v0, "constraint":Landroid/support/constraint/b$a;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/b$a;->a:Z

    .line 895
    iput p2, v0, Landroid/support/constraint/b$a;->A:I

    .line 896
    return-void
.end method

.method public h(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .prologue
    .line 905
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->f:I

    .line 906
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/b$a;->g:I

    .line 907
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/support/constraint/b$a;->h:F

    .line 909
    return-void
.end method

.method public i(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .prologue
    .line 918
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/b$a;->g:I

    .line 919
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/b$a;->f:I

    .line 920
    invoke-direct {p0, p1}, Landroid/support/constraint/b;->b(I)Landroid/support/constraint/b$a;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/support/constraint/b$a;->h:F

    .line 921
    return-void
.end method

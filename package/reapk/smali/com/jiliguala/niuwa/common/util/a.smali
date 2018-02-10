.class public Lcom/jiliguala/niuwa/common/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:I = 0x12c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/common/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x2

    .line 62
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 63
    .local v0, "animSet":Lcom/nineoldandroids/a/d;
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 64
    .local v1, "scaleX":Lcom/nineoldandroids/a/l;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 65
    .local v2, "scaleY":Lcom/nineoldandroids/a/l;
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 66
    new-array v3, v5, [Lcom/nineoldandroids/a/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 67
    new-instance v3, Lcom/jiliguala/niuwa/common/util/a$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/common/util/a$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 90
    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->a()V

    .line 91
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Landroid/view/View;FF)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "begin"    # F
    .param p2, "end"    # F

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 28
    .local v0, "animSet":Lcom/nineoldandroids/a/d;
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 30
    .local v1, "scaleX":Lcom/nineoldandroids/a/l;
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 32
    .local v2, "scaleY":Lcom/nineoldandroids/a/l;
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 33
    new-array v3, v7, [Lcom/nineoldandroids/a/a;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 34
    new-instance v3, Lcom/jiliguala/niuwa/common/util/a$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/common/util/a$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 57
    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->a()V

    .line 58
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x2

    .line 94
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 95
    .local v0, "animSet":Lcom/nineoldandroids/a/d;
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 96
    .local v1, "scaleX":Lcom/nineoldandroids/a/l;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 97
    .local v2, "scaleY":Lcom/nineoldandroids/a/l;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 98
    new-array v3, v5, [Lcom/nineoldandroids/a/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 99
    new-instance v3, Lcom/jiliguala/niuwa/common/util/a$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/common/util/a$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 129
    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->a()V

    .line 130
    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 96
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static c(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 140
    .local v0, "fadeInAnim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/jiliguala/niuwa/common/util/a$4;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/common/util/a$4;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    .local v0, "fadeOutAnim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/jiliguala/niuwa/common/util/a$5;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/common/util/a$5;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 200
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 202
    .local v0, "expandAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 207
    .local v1, "restoreAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    new-instance v2, Lcom/jiliguala/niuwa/common/util/a$6;

    invoke-direct {v2, p0, v1}, Lcom/jiliguala/niuwa/common/util/a$6;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 224
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 235
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 236
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 237
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 238
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 239
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    new-instance v1, Lcom/jiliguala/niuwa/common/util/a$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/util/a$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    return-void
.end method

.method public static g(Landroid/view/View;)Lcom/nineoldandroids/a/d;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 256
    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 258
    .local v0, "animatorSet":Lcom/nineoldandroids/a/d;
    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    .line 260
    .local v1, "xAnimation":Lcom/nineoldandroids/a/l;
    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v2

    .line 262
    .local v2, "yAnimation":Lcom/nineoldandroids/a/l;
    invoke-virtual {v1, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 263
    invoke-virtual {v2, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 265
    invoke-virtual {v1, v5}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 266
    invoke-virtual {v2, v5}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 268
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/d;->a(Landroid/view/animation/Interpolator;)V

    .line 270
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/d;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nineoldandroids/a/d$b;->a(Lcom/nineoldandroids/a/a;)Lcom/nineoldandroids/a/d$b;

    .line 272
    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->a()V

    .line 274
    return-object v0

    .line 258
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 260
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static h(Landroid/view/View;)Lcom/nineoldandroids/a/l;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 279
    const-string v1, "alpha"

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 280
    .local v0, "objectAnimator":Lcom/nineoldandroids/a/l;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 281
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 282
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 283
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 284
    return-object v0

    .line 279
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

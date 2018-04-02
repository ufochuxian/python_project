.class public Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$a;
    }
.end annotation


# static fields
.field public static final HEIGHT_WIDTH_RATIO:F = 0.4375f

.field private static final TAG:Ljava/lang/String;

.field private static anotherBgImgsInt:[I

.field private static sBgImgsInt:[I


# instance fields
.field private array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field private imageSize:Lcom/nostra13/universalimageloader/core/assist/c;

.field protected final mCompositeSubscription:Lrx/i/b;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0x46

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->sBgImgsInt:[I

    .line 48
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->anotherBgImgsInt:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x7f080282
        0x7f080283
        0x7f080284
        0x7f080285
        0x7f080286
        0x7f080287
        0x7f080288
        0x7f080289
        0x7f08028a
        0x7f08028b
        0x7f08028c
        0x7f08028d
        0x7f08028e
        0x7f08028f
        0x7f080290
        0x7f080291
        0x7f080292
        0x7f080293
        0x7f080294
        0x7f080295
        0x7f080296
        0x7f080297
        0x7f080298
        0x7f080299
        0x7f08029a
        0x7f08029b
        0x7f08029c
        0x7f08029d
        0x7f08029e
        0x7f08029f
        0x7f0802a0
        0x7f0802a1
        0x7f0802a2
        0x7f0802a3
        0x7f0802a4
        0x7f0802a5
        0x7f0802a6
        0x7f0802a7
        0x7f0802a8
        0x7f0802a9
        0x7f0802aa
        0x7f0802ab
        0x7f0802ac
        0x7f0802ad
        0x7f0802ae
        0x7f0802af
        0x7f0802b0
        0x7f0802b1
        0x7f0802b2
        0x7f0802b3
        0x7f0802b4
        0x7f0802b5
        0x7f0802b6
        0x7f0802b7
        0x7f0802b8
        0x7f0802b9
        0x7f0802ba
        0x7f0802bb
        0x7f0802bc
        0x7f0802bd
        0x7f0802be
        0x7f0802bf
        0x7f0802c0
        0x7f0802c1
        0x7f0802c2
        0x7f0802c3
        0x7f0802c4
        0x7f0802c5
        0x7f0802c6
        0x7f0802c7
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x7f08024d
        0x7f08024e
        0x7f08024f
        0x7f080250
        0x7f080251
        0x7f080252
        0x7f080253
        0x7f080254
        0x7f080255
        0x7f080256
        0x7f080257
        0x7f080258
        0x7f080259
        0x7f08025a
        0x7f08025b
        0x7f08025c
        0x7f08025d
        0x7f08025e
        0x7f08025f
        0x7f080260
        0x7f080261
        0x7f080262
        0x7f080263
        0x7f080264
        0x7f080265
        0x7f080266
        0x7f080267
        0x7f080268
        0x7f080269
        0x7f08026a
        0x7f08026b
        0x7f08026c
        0x7f08026d
        0x7f08026e
        0x7f08026f
        0x7f080270
        0x7f080271
        0x7f080272
        0x7f080273
        0x7f080274
        0x7f080275
        0x7f080276
        0x7f080277
        0x7f080278
        0x7f080279
        0x7f08027a
        0x7f08027b
        0x7f08027c
        0x7f08027d
        0x7f08027e
        0x7f08027f
        0x7f080280
        0x7f080281
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->mCompositeSubscription:Lrx/i/b;

    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->initialize()V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$1;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;)Lcom/nostra13/universalimageloader/core/assist/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->imageSize:Lcom/nostra13/universalimageloader/core/assist/c;

    return-object v0
.end method

.method private calculateSize()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->width:I

    .line 84
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3ee00000    # 0.4375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->height:I

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->imageSize:Lcom/nostra13/universalimageloader/core/assist/c;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/c;

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->width:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->height:I

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->imageSize:Lcom/nostra13/universalimageloader/core/assist/c;

    .line 89
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    return-object v0
.end method

.method private getObservable()Lrx/e;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->anotherBgImgsInt:[I

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->array:Ljava/util/List;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->array:Ljava/util/List;

    invoke-static {v0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;)V

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->sBgImgsInt:[I

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->array:Ljava/util/List;

    goto :goto_0
.end method

.method private getObserver()Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/f",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->mCompositeSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    .line 78
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->calculateSize()V

    .line 79
    return-void
.end method


# virtual methods
.method public getResIdByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 96
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->anotherBgImgsInt:[I

    aget v0, v0, p1

    .line 99
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->sBgImgsInt:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->mCompositeSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 93
    return-void
.end method

.method public startPreLoad()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->mCompositeSubscription:Lrx/i/b;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getObservable()Lrx/e;

    move-result-object v1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getObserver()Lrx/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/f;)Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 105
    return-void
.end method

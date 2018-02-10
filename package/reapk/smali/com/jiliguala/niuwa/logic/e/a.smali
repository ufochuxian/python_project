.class public Lcom/jiliguala/niuwa/logic/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/jiliguala/niuwa/logic/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/logic/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/e/a;
    .locals 5

    .prologue
    .line 30
    sget-object v2, Lcom/jiliguala/niuwa/logic/e/a;->b:Lcom/jiliguala/niuwa/logic/e/a;

    if-nez v2, :cond_1

    .line 31
    const-class v3, Lcom/jiliguala/niuwa/logic/e/a;

    monitor-enter v3

    .line 32
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/e/a;->b:Lcom/jiliguala/niuwa/logic/e/a;

    .line 33
    .local v0, "instance":Lcom/jiliguala/niuwa/logic/e/a;
    sget-object v2, Lcom/jiliguala/niuwa/logic/e/a;->b:Lcom/jiliguala/niuwa/logic/e/a;

    if-nez v2, :cond_0

    .line 34
    const-class v4, Lcom/jiliguala/niuwa/logic/e/a;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    new-instance v1, Lcom/jiliguala/niuwa/logic/e/a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/e/a;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .end local v0    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    .local v1, "instance":Lcom/jiliguala/niuwa/logic/e/a;
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 38
    .end local v1    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    .restart local v0    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    :cond_0
    :try_start_3
    sput-object v0, Lcom/jiliguala/niuwa/logic/e/a;->b:Lcom/jiliguala/niuwa/logic/e/a;

    .line 39
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/logic/e/a;->b:Lcom/jiliguala/niuwa/logic/e/a;

    return-object v2

    .line 36
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 39
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 36
    .end local v0    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    .restart local v1    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    .restart local v0    # "instance":Lcom/jiliguala/niuwa/logic/e/a;
    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const v2, 0x7f080405

    .line 322
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 324
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 325
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 327
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public a(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/core/c;
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "loadingPicRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 143
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 144
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 145
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 146
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public c()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0801b9

    .line 51
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 57
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 60
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public d()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f080148

    .line 64
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 69
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 70
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 72
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public e()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f08031b

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 79
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 82
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public f()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f08013e

    .line 86
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 90
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 91
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 92
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 93
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public g()Lcom/nostra13/universalimageloader/core/c;
    .locals 6

    .prologue
    const v5, 0x7f080141

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f08013e

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 101
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 102
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 103
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 104
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public h()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f08013e

    .line 108
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 112
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 113
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 115
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public i()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const v4, 0x7f08013f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 123
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 124
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 125
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 126
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public j()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 133
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 134
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 135
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 136
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public k()Lcom/nostra13/universalimageloader/core/c;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 151
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 154
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 155
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 156
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 157
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public l()Lcom/nostra13/universalimageloader/core/c;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 163
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 164
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 165
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 166
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public m()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v4, 0x7f0600f3

    .line 170
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 172
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 173
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 174
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 175
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public n()Lcom/nostra13/universalimageloader/core/c;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 181
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 183
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 184
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 186
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public o()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const v4, 0x7f080318

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    .line 191
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->c(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 193
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 194
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 195
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 196
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public p()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 203
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 204
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 205
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 206
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public q()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 213
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 214
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 216
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public r()Lcom/nostra13/universalimageloader/core/c;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#1A000000"

    .line 221
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 220
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#1A000000"

    .line 222
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->c(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#1A000000"

    .line 223
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 226
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 227
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 228
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 229
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public s()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 236
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 237
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/f;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/b/f;-><init>()V

    .line 239
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 240
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public t()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 247
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/f;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/b/f;-><init>()V

    .line 250
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 251
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public u()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f08040e

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 258
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 259
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/f;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/b/f;-><init>()V

    .line 261
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 262
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public v()Lcom/nostra13/universalimageloader/core/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 269
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 270
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 271
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 272
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public w()Lcom/nostra13/universalimageloader/core/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const v2, 0x7f08012b

    .line 278
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(I)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 280
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 283
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 284
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 285
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 286
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public x()Lcom/nostra13/universalimageloader/core/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 291
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 294
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 295
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/b/c;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(I)V

    .line 296
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 297
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public y()Lcom/nostra13/universalimageloader/core/c;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 301
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 302
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 303
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 305
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 306
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 308
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

.method public z()Lcom/nostra13/universalimageloader/core/c;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->e(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 314
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 315
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 317
    .local v0, "options":Lcom/nostra13/universalimageloader/core/c;
    return-object v0
.end method

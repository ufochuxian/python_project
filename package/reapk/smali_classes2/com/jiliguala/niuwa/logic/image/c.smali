.class public Lcom/jiliguala/niuwa/logic/image/c;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "CountingBitmapDrawable"


# instance fields
.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 34
    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    .line 35
    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    .line 41
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->d:Z

    if-eqz v0, :cond_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/c;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/c;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->d:Z

    .line 59
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/c;->a()V

    .line 64
    return-void

    .line 57
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->c:I

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 1
    .param p1, "isCached"    # Z

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    .line 80
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/c;->a()V

    .line 85
    return-void

    .line 78
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/c;->b:I

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class public final Lcom/nostra13/universalimageloader/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/e$1;,
        Lcom/nostra13/universalimageloader/core/e$c;,
        Lcom/nostra13/universalimageloader/core/e$b;,
        Lcom/nostra13/universalimageloader/core/e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lcom/nostra13/universalimageloader/core/e/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final n:Lcom/nostra13/universalimageloader/a/b/c;

.field final o:Lcom/nostra13/universalimageloader/a/a/a;

.field final p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final q:Lcom/nostra13/universalimageloader/core/a/b;

.field final r:Lcom/nostra13/universalimageloader/core/c;

.field final s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/e$a;)V
    .locals 2
    .param p1, "builder"    # Lcom/nostra13/universalimageloader/core/e$a;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/e$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->a:Landroid/content/res/Resources;

    .line 80
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->b(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->b:I

    .line 81
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->c(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->c:I

    .line 82
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->d(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->d:I

    .line 83
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->e(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->e:I

    .line 84
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->f(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/core/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->f:Lcom/nostra13/universalimageloader/core/e/a;

    .line 85
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->g(Lcom/nostra13/universalimageloader/core/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->g:Ljava/util/concurrent/Executor;

    .line 86
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->h(Lcom/nostra13/universalimageloader/core/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->h:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->i(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:I

    .line 88
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->j(Lcom/nostra13/universalimageloader/core/e$a;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->l:I

    .line 89
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->k(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->m:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 90
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->l(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->m(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    .line 92
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->n(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->r:Lcom/nostra13/universalimageloader/core/c;

    .line 93
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->o(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 94
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->p(Lcom/nostra13/universalimageloader/core/e$a;)Lcom/nostra13/universalimageloader/core/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/a/b;

    .line 96
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->q(Lcom/nostra13/universalimageloader/core/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->i:Z

    .line 97
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->r(Lcom/nostra13/universalimageloader/core/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->j:Z

    .line 99
    new-instance v0, Lcom/nostra13/universalimageloader/core/e$b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/e$b;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 100
    new-instance v0, Lcom/nostra13/universalimageloader/core/e$c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/e$c;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 102
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e$a;->s(Lcom/nostra13/universalimageloader/core/e$a;)Z

    move-result v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/e$a;Lcom/nostra13/universalimageloader/core/e$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/core/e$a;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/core/e$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/e;-><init>(Lcom/nostra13/universalimageloader/core/e$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/e;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    new-instance v0, Lcom/nostra13/universalimageloader/core/e$a;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/nostra13/universalimageloader/core/assist/c;
    .locals 4

    .prologue
    .line 131
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/nostra13/universalimageloader/core/e;->b:I

    .line 134
    .local v2, "width":I
    if-gtz v2, :cond_0

    .line 135
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/e;->c:I

    .line 138
    .local v1, "height":I
    if-gtz v1, :cond_1

    .line 139
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-direct {v3, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(II)V

    return-object v3
.end method

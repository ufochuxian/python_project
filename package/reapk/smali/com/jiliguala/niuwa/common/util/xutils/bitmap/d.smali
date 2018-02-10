.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x200000

.field public static final b:I = 0xa00000

.field private static final c:I = 0x5

.field private static final d:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

.field private static final e:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

.field private m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

.field private n:J

.field private o:I

.field private p:I

.field private q:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

.field private r:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

.field private s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->e:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3a98

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    .line 49
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->i:I

    .line 50
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->j:Z

    .line 51
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->k:Z

    .line 54
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->n:J

    .line 55
    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->o:I

    .line 56
    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->p:I

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->s:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->g:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->u()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->r:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "xBitmapCache"

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    .line 85
    :goto_0
    return-object v1

    .line 83
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .local v0, "config":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 85
    goto :goto_0
.end method

.method private u()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    invoke-direct {v0, p0, v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    invoke-direct {v0, p0, v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 92
    return-void
.end method

.method private v()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->s:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    const/high16 v1, 0x44800000    # 1024.0f

    .line 164
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->v()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(I)V

    .line 171
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "defaultConnectTimeout"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->o:I

    .line 127
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "defaultCacheExpiry"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->n:J

    .line 119
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->q:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V

    .line 227
    :cond_0
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;)V
    .locals 0
    .param p1, "bitmapCacheListener"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->r:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    .line 235
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;)V
    .locals 0
    .param p1, "downloader"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 255
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "memoryCacheEnabled"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->j:Z

    .line 208
    return-void
.end method

.method public b()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a(J)V

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a(I)V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->b(I)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->l:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "defaultReadTimeout"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->p:I

    .line 135
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 259
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "diskCacheEnabled"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->k:Z

    .line 216
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->n:J

    return-wide v0
.end method

.method public c(I)V
    .locals 2
    .param p1, "memoryCacheSize"    # I

    .prologue
    .line 149
    const/high16 v0, 0x200000

    if-lt p1, v0, :cond_1

    .line 150
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(F)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 263
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->o:I

    return v0
.end method

.method public d(I)V
    .locals 2
    .param p1, "diskCacheSize"    # I

    .prologue
    .line 178
    const/high16 v0, 0xa00000

    if-lt p1, v0, :cond_0

    .line 179
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->i:I

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->i:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->p:I

    return v0
.end method

.method public e(I)V
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 191
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->a(I)V

    .line 192
    return-void
.end method

.method public f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->m:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->a()I

    move-result v0

    return v0
.end method

.method public j()Lcom/jiliguala/niuwa/common/util/xutils/task/c;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    return-object v0
.end method

.method public k()Lcom/jiliguala/niuwa/common/util/xutils/task/c;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->e:Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->j:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->k:Z

    return v0
.end method

.method public n()Lcom/jiliguala/niuwa/common/util/xutils/a/a;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->q:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    return-object v0
.end method

.method public o()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->r:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    return-object v0
.end method

.method public p()V
    .locals 4

    .prologue
    .line 242
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 243
    return-void
.end method

.method public q()V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 247
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 251
    return-void
.end method

.method public s()V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 267
    return-void
.end method

.method public t()V
    .locals 4

    .prologue
    .line 270
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 271
    return-void
.end method

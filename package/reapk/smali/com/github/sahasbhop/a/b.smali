.class public Lcom/github/sahasbhop/a/b;
.super Lcom/nostra13/universalimageloader/core/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/sahasbhop/a/b$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field private static g:Lcom/github/sahasbhop/a/b;


# instance fields
.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/github/sahasbhop/a/b;->a:Z

    .line 24
    sput-boolean v0, Lcom/github/sahasbhop/a/b;->b:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;-><init>()V

    return-void
.end method

.method private a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;
    .locals 1
    .param p1, "config"    # Lcom/github/sahasbhop/a/b$a;
    .param p2, "apngListener"    # Lcom/github/sahasbhop/a/a/e;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/github/sahasbhop/a/b$a;->b:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/github/sahasbhop/a/b$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/github/sahasbhop/a/b$1;-><init>(Lcom/github/sahasbhop/a/b;Lcom/github/sahasbhop/a/a/e;Lcom/github/sahasbhop/a/b$a;)V

    goto :goto_0
.end method

.method public static a()Lcom/github/sahasbhop/a/b;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/github/sahasbhop/a/b;->g:Lcom/github/sahasbhop/a/b;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/github/sahasbhop/a/b;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/github/sahasbhop/a/b;->g:Lcom/github/sahasbhop/a/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/github/sahasbhop/a/b;

    invoke-direct {v0}, Lcom/github/sahasbhop/a/b;-><init>()V

    sput-object v0, Lcom/github/sahasbhop/a/b;->g:Lcom/github/sahasbhop/a/b;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/github/sahasbhop/a/b;->g:Lcom/github/sahasbhop/a/b;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/e;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x200000

    .line 145
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->b(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->d(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v0

    .line 151
    .local v0, "defaultDisplayImageOptions":Lcom/nostra13/universalimageloader/core/c;
    new-instance v1, Lcom/nostra13/universalimageloader/core/e$a;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/nostra13/universalimageloader/a/b/a/f;

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/a/b/a/f;-><init>(I)V

    .line 152
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/a/b/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/e$a;->c(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v1

    new-instance v2, Lcom/github/sahasbhop/a/a/b;

    invoke-direct {v2, p1}, Lcom/github/sahasbhop/a/a/b;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v1

    .line 151
    return-object v1
.end method

.method private n()Lcom/nostra13/universalimageloader/core/e;
    .locals 5

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 163
    .local v0, "availableMemory":J
    long-to-float v3, v0

    const/high16 v4, 0x3d800000    # 0.0625f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 165
    .local v2, "memoryCacheSize":I
    new-instance v3, Lcom/nostra13/universalimageloader/core/e$a;

    iget-object v4, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/nostra13/universalimageloader/a/b/a/f;

    invoke-direct {v4, v2}, Lcom/nostra13/universalimageloader/a/b/a/f;-><init>(I)V

    .line 166
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/a/b/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v3

    .line 167
    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/e$a;->c(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v3

    .line 165
    return-object v3
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lcom/github/sahasbhop/a/b;->a(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/e;Lcom/nostra13/universalimageloader/core/e;)V

    .line 45
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/e;Lcom/nostra13/universalimageloader/core/e;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commonImageLoaderConfiguration"    # Lcom/nostra13/universalimageloader/core/e;
    .param p3, "apngComponentImageLoaderConfiguration"    # Lcom/nostra13/universalimageloader/core/e;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/github/sahasbhop/a/b;->n()Lcom/nostra13/universalimageloader/core/e;

    move-result-object p2

    .line 71
    :cond_0
    if-nez p3, :cond_1

    .line 72
    iget-object v0, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/github/sahasbhop/a/b;->b(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/e;

    move-result-object p3

    .line 76
    :cond_1
    invoke-static {}, Lcom/github/sahasbhop/a/a/g;->a()Lcom/github/sahasbhop/a/a/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/sahasbhop/a/a/g;->a(Lcom/nostra13/universalimageloader/core/e;)V

    .line 79
    invoke-super {p0, p3}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/e;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/sahasbhop/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/sahasbhop/a/b$a;)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/sahasbhop/a/b$a;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "config"    # Lcom/github/sahasbhop/a/b$a;

    .prologue
    .line 107
    new-instance v0, Lcom/github/sahasbhop/a/a/d;

    iget-object v1, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p3, v3}, Lcom/github/sahasbhop/a/b;->a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/github/sahasbhop/a/a/c;)V

    invoke-super {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "config"    # Lcom/github/sahasbhop/a/b$a;
    .param p4, "apngListener"    # Lcom/github/sahasbhop/a/a/e;

    .prologue
    .line 129
    new-instance v0, Lcom/github/sahasbhop/a/a/d;

    iget-object v1, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/github/sahasbhop/a/b;->a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/github/sahasbhop/a/a/c;)V

    invoke-super {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 130
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/sahasbhop/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/github/sahasbhop/a/b$a;)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/github/sahasbhop/a/b$a;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "config"    # Lcom/github/sahasbhop/a/b$a;

    .prologue
    .line 118
    new-instance v0, Lcom/github/sahasbhop/a/a/d;

    iget-object v1, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p4, v3}, Lcom/github/sahasbhop/a/b;->a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/github/sahasbhop/a/a/c;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "config"    # Lcom/github/sahasbhop/a/b$a;
    .param p5, "apngListener"    # Lcom/github/sahasbhop/a/a/e;

    .prologue
    .line 141
    new-instance v0, Lcom/github/sahasbhop/a/a/d;

    iget-object v1, p0, Lcom/github/sahasbhop/a/b;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p4, p5}, Lcom/github/sahasbhop/a/b;->a(Lcom/github/sahasbhop/a/b$a;Lcom/github/sahasbhop/a/a/e;)Lcom/github/sahasbhop/a/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/github/sahasbhop/a/a/c;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 142
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enableVerboseLog"    # Z

    .prologue
    .line 83
    sput-boolean p1, Lcom/github/sahasbhop/a/b;->a:Z

    .line 84
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "enableDebugLog"    # Z

    .prologue
    .line 87
    sput-boolean p1, Lcom/github/sahasbhop/a/b;->b:Z

    .line 88
    return-void
.end method

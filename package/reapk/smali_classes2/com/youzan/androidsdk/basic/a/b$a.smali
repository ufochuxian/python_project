.class public final Lcom/youzan/androidsdk/basic/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/basic/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final j:J = 0xe677d21fdbffL


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->c:J

    .line 199
    const-string v0, "/"

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "hostOnly"    # Z

    .prologue
    .line 240
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/a/b$a;->d:Ljava/lang/String;

    .line 241
    iput-boolean p2, p0, Lcom/youzan/androidsdk/basic/a/b$a;->i:Z

    .line 242
    return-object p0
.end method


# virtual methods
.method public a()Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->f:Z

    .line 252
    return-object p0
.end method

.method public a(J)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 3
    .param p1, "expiresAt"    # J

    .prologue
    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    .line 217
    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-wide p1, 0xe677d21fdbffL

    .line 218
    :cond_1
    iput-wide p1, p0, Lcom/youzan/androidsdk/basic/a/b$a;->c:J

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->h:Z

    .line 220
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/a/b$a;->a:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public b()Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->g:Z

    .line 257
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b$a;->b:Ljava/lang/String;

    .line 212
    return-object p0

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youzan/androidsdk/basic/a/b$a;->a(Ljava/lang/String;Z)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/youzan/androidsdk/basic/a/b;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/youzan/androidsdk/basic/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youzan/androidsdk/basic/a/b;-><init>(Lcom/youzan/androidsdk/basic/a/b$a;Lcom/youzan/androidsdk/basic/a/b$1;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/youzan/androidsdk/basic/a/b$a;->a(Ljava/lang/String;Z)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/a/b$a;->e:Ljava/lang/String;

    .line 247
    return-object p0
.end method

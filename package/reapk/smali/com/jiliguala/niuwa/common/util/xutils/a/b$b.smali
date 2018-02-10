.class final Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:J

.field private e:Z

.field private f:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

.field private g:J


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;)V
    .locals 2
    .param p2, "diskKey"    # Ljava/lang/String;

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d:J

    .line 1013
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b:Ljava/lang/String;

    .line 1014
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c:[J

    .line 1015
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;

    .prologue
    .line 990
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p1, "x1"    # J

    .prologue
    .line 990
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->f:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->f:Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    return-object p1
.end method

.method private a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    array-length v2, p1

    sub-int/2addr v2, p2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1030
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1034
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c:[J

    add-int v3, v1, p2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1040
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p1, "x1"    # Z

    .prologue
    .line 990
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .param p1, "x1"    # J

    .prologue
    .line 990
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->g:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 1047
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 1020
    .local v2, "size":J
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    .end local v2    # "size":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public b(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 1051
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

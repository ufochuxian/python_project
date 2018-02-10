.class final Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b:Ljava/lang/String;

    .line 936
    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->f(Lcom/nostra13/universalimageloader/a/a/a/a/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c:[J

    .line 937
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$1;

    .prologue
    .line 919
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;J)J
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .param p1, "x1"    # J

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->e:Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .param p1, "x1"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->e:Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    array-length v2, p1

    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-static {v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->f(Lcom/nostra13/universalimageloader/a/a/a/a/a;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 950
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 954
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 955
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 960
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .param p1, "x1"    # Z

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->d:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
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

.method static synthetic b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)J
    .locals 2
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .prologue
    .line 919
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 967
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->g(Lcom/nostra13/universalimageloader/a/a/a/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

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
    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v3, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 942
    .local v4, "size":J
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    .end local v4    # "size":J
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public b(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 971
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->g(Lcom/nostra13/universalimageloader/a/a/a/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

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

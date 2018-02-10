.class final Lcom/squareup/okhttp/internal/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private final d:[Ljava/io/File;

.field private final e:[Ljava/io/File;

.field private f:Z

.field private g:Lcom/squareup/okhttp/internal/a$a;

.field private h:J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a$b;->b:Ljava/lang/String;

    .line 948
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->c:[J

    .line 949
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->d:[Ljava/io/File;

    .line 950
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->e:[Ljava/io/File;

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 954
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 955
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->d:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->i(Lcom/squareup/okhttp/internal/a;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 958
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->e:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a;->i(Lcom/squareup/okhttp/internal/a;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;Lcom/squareup/okhttp/internal/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/a$1;

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a$b;-><init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$b;J)J
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;
    .param p1, "x1"    # J

    .prologue
    .line 928
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/a$b;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$b;->g:Lcom/squareup/okhttp/internal/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/a$a;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$b;->g:Lcom/squareup/okhttp/internal/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$b;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a$b;->a([Ljava/lang/String;)V

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
    .line 966
    array-length v2, p1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 967
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 971
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$b;->c:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 977
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a$b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;
    .param p1, "x1"    # Z

    .prologue
    .line 928
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/a$b;->f:Z

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
    .line 987
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

.method static synthetic b(Lcom/squareup/okhttp/internal/a$b;)[J
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$b;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$b;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$b;->e:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/a$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a$b;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/a$b;)J
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a$b;

    .prologue
    .line 928
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a$b;->h:J

    return-wide v0
.end method


# virtual methods
.method a()Lcom/squareup/okhttp/internal/a$c;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 996
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v1

    new-array v6, v1, [Lokio/x;

    .line 999
    .local v6, "sources":[Lokio/x;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 1001
    .local v7, "lengths":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->h(Lcom/squareup/okhttp/internal/a;)Lcom/squareup/okhttp/internal/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$b;->d:[Ljava/io/File;

    aget-object v2, v2, v9

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;)Lokio/x;

    move-result-object v1

    aput-object v1, v6, v9

    .line 1001
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    new-instance v1, Lcom/squareup/okhttp/internal/a$c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a$b;->h:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/a$c;-><init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J[Lokio/x;[JLcom/squareup/okhttp/internal/a$1;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_1
    return-object v1

    .line 1005
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a$b;->a:Lcom/squareup/okhttp/internal/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a;->g(Lcom/squareup/okhttp/internal/a;)I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 1008
    aget-object v1, v6, v9

    if-eqz v1, :cond_2

    .line 1009
    aget-object v1, v6, v9

    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 1007
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v10

    .line 1014
    goto :goto_1
.end method

.method a(Lokio/d;)V
    .locals 6
    .param p1, "writer"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a$b;->c:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v0, v3, v2

    .line 982
    .local v0, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lokio/d;->m(I)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lokio/d;->n(J)Lokio/d;

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    .end local v0    # "length":J
    :cond_0
    return-void
.end method

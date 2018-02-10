.class public Lar/com/hjg/pngj/chunks/ac;
.super Lar/com/hjg/pngj/chunks/af;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "tEXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 15
    const-string v0, "tEXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/af;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "tEXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/af;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 20
    invoke-virtual {p0, p2, p3}, Lar/com/hjg/pngj/chunks/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_1

    .line 39
    :cond_0
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/ac;->i:Ljava/lang/String;

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lar/com/hjg/pngj/chunks/ac;->j:Ljava/lang/String;

    .line 42
    return-void

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 25
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ac;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ac;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 26
    :cond_0
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "Text chunk key must be non empty"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ac;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 28
    .local v0, "b":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/ac;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    .line 29
    .local v1, "chunk":Lar/com/hjg/pngj/chunks/e;
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 30
    return-object v1
.end method

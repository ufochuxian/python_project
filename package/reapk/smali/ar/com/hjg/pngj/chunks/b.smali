.class public Lar/com/hjg/pngj/chunks/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/j;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/chunks/b;-><init>(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "parse"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/b;->a:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lar/com/hjg/pngj/chunks/e;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 2
    .param p1, "chunkRaw"    # Lar/com/hjg/pngj/chunks/e;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 24
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lar/com/hjg/pngj/chunks/b;->a(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 25
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lar/com/hjg/pngj/chunks/b;->c(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lar/com/hjg/pngj/chunks/b;->b(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 29
    :cond_1
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->b(Lar/com/hjg/pngj/chunks/e;)V

    .line 30
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->a(Lar/com/hjg/pngj/chunks/e;)V

    .line 32
    :cond_2
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 36
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lar/com/hjg/pngj/chunks/p;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/p;-><init>(Lar/com/hjg/pngj/s;)V

    .line 79
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lar/com/hjg/pngj/chunks/r;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/r;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Lar/com/hjg/pngj/chunks/w;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/w;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lar/com/hjg/pngj/chunks/q;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/q;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "tEXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    new-instance v0, Lar/com/hjg/pngj/chunks/ac;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ac;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 46
    :cond_4
    const-string v0, "iTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    new-instance v0, Lar/com/hjg/pngj/chunks/s;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/s;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 48
    :cond_5
    const-string v0, "zTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    new-instance v0, Lar/com/hjg/pngj/chunks/ah;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ah;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 50
    :cond_6
    const-string v0, "bKGD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    new-instance v0, Lar/com/hjg/pngj/chunks/i;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/i;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 52
    :cond_7
    const-string v0, "gAMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    new-instance v0, Lar/com/hjg/pngj/chunks/m;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/m;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 54
    :cond_8
    const-string v0, "pHYs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    new-instance v0, Lar/com/hjg/pngj/chunks/v;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/v;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 56
    :cond_9
    const-string v0, "iCCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    new-instance v0, Lar/com/hjg/pngj/chunks/o;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/o;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 58
    :cond_a
    const-string v0, "tIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    new-instance v0, Lar/com/hjg/pngj/chunks/ad;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ad;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 60
    :cond_b
    const-string v0, "tRNS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61
    new-instance v0, Lar/com/hjg/pngj/chunks/ae;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ae;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 62
    :cond_c
    const-string v0, "cHRM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    new-instance v0, Lar/com/hjg/pngj/chunks/j;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/j;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 64
    :cond_d
    const-string v0, "sBIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    new-instance v0, Lar/com/hjg/pngj/chunks/x;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/x;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 66
    :cond_e
    const-string v0, "sRGB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    new-instance v0, Lar/com/hjg/pngj/chunks/z;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/z;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 68
    :cond_f
    const-string v0, "hIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    new-instance v0, Lar/com/hjg/pngj/chunks/n;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/n;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 70
    :cond_10
    const-string v0, "sPLT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    new-instance v0, Lar/com/hjg/pngj/chunks/y;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/y;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 73
    :cond_11
    const-string v0, "fdAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 74
    new-instance v0, Lar/com/hjg/pngj/chunks/l;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/l;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 75
    :cond_12
    const-string v0, "acTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 76
    new-instance v0, Lar/com/hjg/pngj/chunks/h;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/h;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 77
    :cond_13
    const-string v0, "fcTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    new-instance v0, Lar/com/hjg/pngj/chunks/k;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/k;-><init>(Lar/com/hjg/pngj/s;)V

    goto/16 :goto_0

    .line 79
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 88
    new-instance v0, Lar/com/hjg/pngj/chunks/ag;

    invoke-direct {v0, p1, p2}, Lar/com/hjg/pngj/chunks/ag;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 100
    const-string v0, "oFFs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lar/com/hjg/pngj/chunks/u;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/u;-><init>(Lar/com/hjg/pngj/s;)V

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string v0, "sTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lar/com/hjg/pngj/chunks/aa;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/aa;-><init>(Lar/com/hjg/pngj/s;)V

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

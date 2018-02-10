.class public Lar/com/hjg/pngj/chunks/z;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "sRGB"

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3


# instance fields
.field private m:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 25
    const-string v0, "sRGB"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 35
    iget v0, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 36
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/z;->m:I

    .line 38
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "intent"    # I

    .prologue
    .line 53
    iput p1, p0, Lar/com/hjg/pngj/chunks/z;->m:I

    .line 54
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    invoke-virtual {p0, v1, v1}, Lar/com/hjg/pngj/chunks/z;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 44
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Lar/com/hjg/pngj/chunks/z;->m:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 45
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lar/com/hjg/pngj/chunks/z;->m:I

    return v0
.end method

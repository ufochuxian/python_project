.class public Lar/com/hjg/pngj/chunks/q;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "IEND"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 16
    const-string v0, "IEND"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 33
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lar/com/hjg/pngj/chunks/e;

    sget-object v1, Lar/com/hjg/pngj/chunks/c;->v:[B

    invoke-direct {v0, v2, v1, v2}, Lar/com/hjg/pngj/chunks/e;-><init>(I[BZ)V

    .line 27
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

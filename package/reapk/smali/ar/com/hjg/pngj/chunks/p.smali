.class public Lar/com/hjg/pngj/chunks/p;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "IDAT"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "i"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 17
    const-string v0, "IDAT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 32
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

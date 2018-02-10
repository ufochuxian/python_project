.class Lar/com/hjg/pngj/c$2;
.super Lar/com/hjg/pngj/ChunkReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/c;->a(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lar/com/hjg/pngj/c;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/c;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 8
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # J
    .param p6, "x3"    # Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .prologue
    .line 198
    iput-object p1, p0, Lar/com/hjg/pngj/c$2;->c:Lar/com/hjg/pngj/c;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/ChunkReader;-><init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-void
.end method


# virtual methods
.method protected a(I[BII)V
    .locals 2
    .param p1, "offsetinChhunk"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 206
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lar/com/hjg/pngj/c$2;->c:Lar/com/hjg/pngj/c;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/c;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 202
    return-void
.end method

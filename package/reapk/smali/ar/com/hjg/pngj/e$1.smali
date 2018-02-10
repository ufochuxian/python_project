.class Lar/com/hjg/pngj/e$1;
.super Lar/com/hjg/pngj/ChunkReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/e;->a(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lar/com/hjg/pngj/e;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/e;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 8
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # J
    .param p6, "x3"    # Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .prologue
    .line 32
    iput-object p1, p0, Lar/com/hjg/pngj/e$1;->c:Lar/com/hjg/pngj/e;

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
    .locals 6
    .param p1, "offsetinChhunk"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/e$1;->c:Lar/com/hjg/pngj/e;

    invoke-virtual {p0}, Lar/com/hjg/pngj/e$1;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lar/com/hjg/pngj/e;->a(Lar/com/hjg/pngj/chunks/e;I[BII)V

    .line 41
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lar/com/hjg/pngj/e$1;->c:Lar/com/hjg/pngj/e;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/e;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 36
    return-void
.end method

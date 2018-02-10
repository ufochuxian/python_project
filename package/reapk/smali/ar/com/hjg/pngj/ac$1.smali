.class Lar/com/hjg/pngj/ac$1;
.super Lar/com/hjg/pngj/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ac;->a()Lar/com/hjg/pngj/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lar/com/hjg/pngj/ac;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ac;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 35
    iput-object p1, p0, Lar/com/hjg/pngj/ac$1;->i:Lar/com/hjg/pngj/ac;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 0
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lar/com/hjg/pngj/d;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 50
    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/d;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lar/com/hjg/pngj/c$1;
.super Lar/com/hjg/pngj/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/c;->a(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lar/com/hjg/pngj/c;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/c;ILjava/lang/String;ZJLar/com/hjg/pngj/g;)V
    .locals 7
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Z
    .param p5, "x3"    # J
    .param p7, "x4"    # Lar/com/hjg/pngj/g;

    .prologue
    .line 170
    iput-object p1, p0, Lar/com/hjg/pngj/c$1;->c:Lar/com/hjg/pngj/c;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/f;-><init>(ILjava/lang/String;ZJLar/com/hjg/pngj/g;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lar/com/hjg/pngj/f;->c()V

    .line 174
    iget-object v0, p0, Lar/com/hjg/pngj/c$1;->c:Lar/com/hjg/pngj/c;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/c;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 175
    return-void
.end method

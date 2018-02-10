.class Lar/com/hjg/pngj/w$1$1;
.super Lar/com/hjg/pngj/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/w$1;->a(Lar/com/hjg/pngj/s;ZIII)Lar/com/hjg/pngj/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lar/com/hjg/pngj/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lar/com/hjg/pngj/s;

.field final synthetic f:Lar/com/hjg/pngj/w$1;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/w$1;Lar/com/hjg/pngj/s;ZIIILar/com/hjg/pngj/s;)V
    .locals 6
    .param p2, "x0"    # Lar/com/hjg/pngj/s;
    .param p3, "x1"    # Z
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 132
    iput-object p1, p0, Lar/com/hjg/pngj/w$1$1;->f:Lar/com/hjg/pngj/w$1;

    iput-object p7, p0, Lar/com/hjg/pngj/w$1$1;->e:Lar/com/hjg/pngj/s;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/w;-><init>(Lar/com/hjg/pngj/s;ZIII)V

    return-void
.end method


# virtual methods
.method protected b()Lar/com/hjg/pngj/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lar/com/hjg/pngj/w$1$1;->f:Lar/com/hjg/pngj/w$1;

    iget-object v0, v0, Lar/com/hjg/pngj/w$1;->a:Lar/com/hjg/pngj/n;

    iget-object v1, p0, Lar/com/hjg/pngj/w$1$1;->e:Lar/com/hjg/pngj/s;

    invoke-interface {v0, v1}, Lar/com/hjg/pngj/n;->a(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/l;

    move-result-object v0

    return-object v0
.end method

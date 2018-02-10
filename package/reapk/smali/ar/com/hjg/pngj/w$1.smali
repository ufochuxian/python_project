.class final Lar/com/hjg/pngj/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/w;->a(Lar/com/hjg/pngj/n;)Lar/com/hjg/pngj/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/n;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/n;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lar/com/hjg/pngj/w$1;->a:Lar/com/hjg/pngj/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/s;ZIII)Lar/com/hjg/pngj/o;
    .locals 8
    .param p1, "iminfo"    # Lar/com/hjg/pngj/s;
    .param p2, "singleCursor"    # Z
    .param p3, "nlines"    # I
    .param p4, "noffset"    # I
    .param p5, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/s;",
            "ZIII)",
            "Lar/com/hjg/pngj/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lar/com/hjg/pngj/w$1$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lar/com/hjg/pngj/w$1$1;-><init>(Lar/com/hjg/pngj/w$1;Lar/com/hjg/pngj/s;ZIIILar/com/hjg/pngj/s;)V

    return-object v0
.end method

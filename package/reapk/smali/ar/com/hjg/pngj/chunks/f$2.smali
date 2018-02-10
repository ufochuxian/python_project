.class final Lar/com/hjg/pngj/chunks/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/f;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/f$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/f$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    .end local p1    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :goto_0
    return v0

    .line 62
    .restart local p1    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_0
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/af;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lar/com/hjg/pngj/chunks/af;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/af;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/y;

    if-eqz v0, :cond_2

    check-cast p1, Lar/com/hjg/pngj/chunks/y;

    .end local p1    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/y;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

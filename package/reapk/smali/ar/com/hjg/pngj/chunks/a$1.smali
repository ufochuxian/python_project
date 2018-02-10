.class final Lar/com/hjg/pngj/chunks/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/a;->a(ILar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/s;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/s;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/a$1;->a:Lar/com/hjg/pngj/s;

    iput p2, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 6
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    .line 65
    iget-boolean v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->b:Z

    if-eqz v3, :cond_3

    .line 66
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "PLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/a$1;->a:Lar/com/hjg/pngj/s;

    iget-boolean v3, v3, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    invoke-static {v3, v2}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/a$1;->a:Lar/com/hjg/pngj/s;

    iget-boolean v3, v3, Lar/com/hjg/pngj/s;->g:Z

    if-nez v3, :cond_2

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    invoke-static {v3, v5}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_3
    instance-of v1, p1, Lar/com/hjg/pngj/chunks/af;

    .line 74
    .local v1, "text":Z
    iget-boolean v0, p1, Lar/com/hjg/pngj/chunks/PngChunk;->d:Z

    .line 76
    .local v0, "safe":Z
    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    invoke-static {v3, v5}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    if-eqz v0, :cond_4

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    :cond_4
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "tRNS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    :cond_5
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "pHYs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    :cond_6
    if-eqz v1, :cond_7

    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    :cond_7
    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v1, :cond_8

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "hIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v4, "tIME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :cond_8
    iget v3, p0, Lar/com/hjg/pngj/chunks/a$1;->b:I

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0
.end method

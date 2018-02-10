.class Lar/com/hjg/pngj/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lar/com/hjg/pngj/s;

.field public final b:Lar/com/hjg/pngj/h;

.field public final c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:[B

.field p:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;)V
    .locals 1
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p2, "deinterlacer"    # Lar/com/hjg/pngj/h;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/ag;->a:Lar/com/hjg/pngj/s;

    .line 23
    iput-object p2, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    .line 24
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lar/com/hjg/pngj/ag;->c:Z

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 2
    .param p1, "rowseq"    # I

    .prologue
    const/4 v1, 0x1

    .line 28
    iput p1, p0, Lar/com/hjg/pngj/ag;->h:I

    .line 29
    iget-boolean v0, p0, Lar/com/hjg/pngj/ag;->c:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->e()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/ag;->n:I

    .line 31
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    iget v0, v0, Lar/com/hjg/pngj/h;->c:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->e:I

    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    iget v0, v0, Lar/com/hjg/pngj/h;->b:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->d:I

    .line 33
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    iget v0, v0, Lar/com/hjg/pngj/h;->e:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->g:I

    .line 34
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    iget v0, v0, Lar/com/hjg/pngj/h;->d:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->f:I

    .line 35
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->d()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/ag;->i:I

    .line 36
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->c()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/ag;->j:I

    .line 37
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->f()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/ag;->k:I

    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->b:Lar/com/hjg/pngj/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/h;->g()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/ag;->l:I

    .line 39
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->j:I

    iget v1, p0, Lar/com/hjg/pngj/ag;->l:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/ag;->m:I

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    iput v1, p0, Lar/com/hjg/pngj/ag;->n:I

    .line 42
    iput v1, p0, Lar/com/hjg/pngj/ag;->d:I

    iput v1, p0, Lar/com/hjg/pngj/ag;->e:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/ag;->f:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->g:I

    .line 44
    iput p1, p0, Lar/com/hjg/pngj/ag;->j:I

    iput p1, p0, Lar/com/hjg/pngj/ag;->i:I

    .line 45
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->c:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->k:I

    .line 46
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->b:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->l:I

    .line 47
    iget-object v0, p0, Lar/com/hjg/pngj/ag;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->l:I

    iput v0, p0, Lar/com/hjg/pngj/ag;->m:I

    goto :goto_0
.end method

.method a([BI)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "buflen"    # I

    .prologue
    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/ag;->o:[B

    .line 53
    iput p2, p0, Lar/com/hjg/pngj/ag;->p:I

    .line 54
    return-void
.end method

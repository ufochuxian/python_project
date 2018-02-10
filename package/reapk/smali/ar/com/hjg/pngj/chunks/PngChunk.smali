.class public abstract Lar/com/hjg/pngj/chunks/PngChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field protected final e:Lar/com/hjg/pngj/s;

.field protected f:Lar/com/hjg/pngj/chunks/e;

.field protected g:I

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->h:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->g:I

    .line 111
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->e:Lar/com/hjg/pngj/s;

    .line 113
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->b:Z

    .line 114
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->c:Z

    .line 115
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->d:Z

    .line 116
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->g:I

    return v0
.end method

.method protected final a(IZ)Lar/com/hjg/pngj/chunks/e;
    .locals 2
    .param p1, "len"    # I
    .param p2, "alloc"    # Z

    .prologue
    .line 119
    new-instance v0, Lar/com/hjg/pngj/chunks/e;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lar/com/hjg/pngj/chunks/e;-><init>(I[BZ)V

    .line 120
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    return-object v0
.end method

.method final a(I)V
    .locals 0
    .param p1, "chunkGroup"    # I

    .prologue
    .line 136
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->g:I

    .line 137
    return-void
.end method

.method protected abstract a(Lar/com/hjg/pngj/chunks/e;)V
.end method

.method final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 148
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-nez v0, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->c()Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    .line 150
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null chunk ! creation failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 153
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "priority"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->h:Z

    .line 145
    return-void
.end method

.method b(Lar/com/hjg/pngj/chunks/e;)V
    .locals 0
    .param p1, "raw"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 181
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    .line 182
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->h:Z

    return v0
.end method

.method public abstract c()Lar/com/hjg/pngj/chunks/e;
.end method

.method protected abstract d()Z
.end method

.method public e()Lar/com/hjg/pngj/chunks/e;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    iget v0, v0, Lar/com/hjg/pngj/chunks/e;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/e;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->f:Lar/com/hjg/pngj/chunks/e;

    .line 204
    return-void
.end method

.method public abstract i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

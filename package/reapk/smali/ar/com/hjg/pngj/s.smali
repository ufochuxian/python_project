.class public Lar/com/hjg/pngj/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1000000


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 7
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "bitdepth"    # I
    .param p4, "alpha"    # Z

    .prologue
    const/4 v5, 0x0

    .line 100
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/s;-><init>(IIIZZZ)V

    .line 101
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 6
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "bitdepth"    # I
    .param p4, "alpha"    # Z
    .param p5, "grayscale"    # Z
    .param p6, "indexed"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/high16 v3, 0x1000000

    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide v4, p0, Lar/com/hjg/pngj/s;->o:J

    .line 94
    iput-wide v4, p0, Lar/com/hjg/pngj/s;->p:J

    .line 115
    iput p1, p0, Lar/com/hjg/pngj/s;->b:I

    .line 116
    iput p2, p0, Lar/com/hjg/pngj/s;->c:I

    .line 117
    iput-boolean p4, p0, Lar/com/hjg/pngj/s;->f:Z

    .line 118
    iput-boolean p6, p0, Lar/com/hjg/pngj/s;->h:Z

    .line 119
    iput-boolean p5, p0, Lar/com/hjg/pngj/s;->g:Z

    .line 120
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    .line 121
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "palette and greyscale are mutually exclusive"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p5, :cond_1

    if-eqz p6, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lar/com/hjg/pngj/s;->e:I

    .line 124
    iput p3, p0, Lar/com/hjg/pngj/s;->d:I

    .line 125
    const/16 v0, 0x8

    if-ge p3, v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/s;->i:Z

    .line 126
    iget v0, p0, Lar/com/hjg/pngj/s;->e:I

    iget v2, p0, Lar/com/hjg/pngj/s;->d:I

    mul-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/s;->j:I

    .line 127
    iget v0, p0, Lar/com/hjg/pngj/s;->j:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/s;->k:I

    .line 128
    iget v0, p0, Lar/com/hjg/pngj/s;->j:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/s;->l:I

    .line 129
    iget v0, p0, Lar/com/hjg/pngj/s;->e:I

    iget v2, p0, Lar/com/hjg/pngj/s;->b:I

    mul-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/s;->m:I

    .line 130
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->i:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lar/com/hjg/pngj/s;->l:I

    :goto_2
    iput v0, p0, Lar/com/hjg/pngj/s;->n:I

    .line 132
    iget v0, p0, Lar/com/hjg/pngj/s;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 122
    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 125
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :cond_6
    iget v0, p0, Lar/com/hjg/pngj/s;->m:I

    goto :goto_2

    .line 136
    :sswitch_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->h:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_7

    .line 137
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only indexed or grayscale can have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :sswitch_1
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_7

    .line 143
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexed can\'t have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_7
    :sswitch_2
    if-lt p1, v1, :cond_8

    if-le p1, v3, :cond_9

    .line 149
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_9
    if-lt p2, v1, :cond_a

    if-le p2, v3, :cond_b

    .line 151
    :cond_a
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_b
    iget v0, p0, Lar/com/hjg/pngj/s;->m:I

    if-ge v0, v1, :cond_c

    .line 153
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "invalid image parameters (overflow?)"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_c
    return-void

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 169
    iget-wide v0, p0, Lar/com/hjg/pngj/s;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 170
    iget v0, p0, Lar/com/hjg/pngj/s;->b:I

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/s;->c:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/s;->o:J

    .line 171
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/s;->o:J

    return-wide v0
.end method

.method public a(II)Lar/com/hjg/pngj/s;
    .locals 7
    .param p1, "cols"    # I
    .param p2, "rows"    # I

    .prologue
    .line 164
    new-instance v0, Lar/com/hjg/pngj/s;

    if-lez p1, :cond_0

    move v1, p1

    :goto_0
    if-lez p2, :cond_1

    move v2, p2

    :goto_1
    iget v3, p0, Lar/com/hjg/pngj/s;->d:I

    iget-boolean v4, p0, Lar/com/hjg/pngj/s;->f:Z

    iget-boolean v5, p0, Lar/com/hjg/pngj/s;->g:Z

    iget-boolean v6, p0, Lar/com/hjg/pngj/s;->h:Z

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/s;-><init>(IIIZZZ)V

    return-object v0

    :cond_0
    iget v1, p0, Lar/com/hjg/pngj/s;->b:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/s;->c:I

    goto :goto_1
.end method

.method a(Ljava/util/zip/Checksum;)V
    .locals 3
    .param p1, "crc"    # Ljava/util/zip/Checksum;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 207
    iget v0, p0, Lar/com/hjg/pngj/s;->c:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 208
    iget v0, p0, Lar/com/hjg/pngj/s;->c:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 209
    iget v0, p0, Lar/com/hjg/pngj/s;->c:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 210
    iget v0, p0, Lar/com/hjg/pngj/s;->b:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 211
    iget v0, p0, Lar/com/hjg/pngj/s;->b:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 212
    iget v0, p0, Lar/com/hjg/pngj/s;->b:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 213
    iget v0, p0, Lar/com/hjg/pngj/s;->d:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 214
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 215
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 216
    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-interface {p1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 217
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 215
    goto :goto_1

    :cond_2
    move v1, v2

    .line 216
    goto :goto_2
.end method

.method public b()J
    .locals 4

    .prologue
    .line 178
    iget-wide v0, p0, Lar/com/hjg/pngj/s;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 179
    iget v0, p0, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/s;->c:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/s;->p:J

    .line 180
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/s;->p:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lar/com/hjg/pngj/s;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lar/com/hjg/pngj/s;->d:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "a"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "p"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "g"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitspPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRowP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 239
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 240
    check-cast v0, Lar/com/hjg/pngj/s;

    .line 241
    .local v0, "other":Lar/com/hjg/pngj/s;
    iget-boolean v3, p0, Lar/com/hjg/pngj/s;->f:Z

    iget-boolean v4, v0, Lar/com/hjg/pngj/s;->f:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    iget v3, p0, Lar/com/hjg/pngj/s;->d:I

    iget v4, v0, Lar/com/hjg/pngj/s;->d:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 244
    goto :goto_0

    .line 245
    :cond_5
    iget v3, p0, Lar/com/hjg/pngj/s;->b:I

    iget v4, v0, Lar/com/hjg/pngj/s;->b:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 246
    goto :goto_0

    .line 247
    :cond_6
    iget-boolean v3, p0, Lar/com/hjg/pngj/s;->g:Z

    iget-boolean v4, v0, Lar/com/hjg/pngj/s;->g:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 248
    goto :goto_0

    .line 249
    :cond_7
    iget-boolean v3, p0, Lar/com/hjg/pngj/s;->h:Z

    iget-boolean v4, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 250
    goto :goto_0

    .line 251
    :cond_8
    iget v3, p0, Lar/com/hjg/pngj/s;->c:I

    iget v4, v0, Lar/com/hjg/pngj/s;->c:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 252
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 221
    const/16 v0, 0x1f

    .line 222
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 223
    .local v1, "result":I
    iget-boolean v2, p0, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 224
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lar/com/hjg/pngj/s;->d:I

    add-int v1, v2, v5

    .line 225
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lar/com/hjg/pngj/s;->b:I

    add-int v1, v2, v5

    .line 226
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 227
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v5, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 228
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/s;->c:I

    add-int v1, v2, v3

    .line 229
    return v1

    :cond_0
    move v2, v4

    .line 223
    goto :goto_0

    :cond_1
    move v2, v4

    .line 226
    goto :goto_1

    :cond_2
    move v3, v4

    .line 227
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/s;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/s;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

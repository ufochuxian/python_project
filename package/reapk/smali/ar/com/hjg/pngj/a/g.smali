.class public abstract Lar/com/hjg/pngj/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/a/g$1;
    }
.end annotation


# static fields
.field private static final j:I = 0x7d00


# instance fields
.field protected final a:Lar/com/hjg/pngj/s;

.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Lar/com/hjg/pngj/FilterType;

.field protected i:I

.field private k:Lar/com/hjg/pngj/a/a;

.field private l:[I

.field private m:Ljava/io/OutputStream;

.field private n:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x6

    iput v0, p0, Lar/com/hjg/pngj/a/g;->e:I

    .line 36
    iput v1, p0, Lar/com/hjg/pngj/a/g;->f:I

    .line 38
    iput-boolean v1, p0, Lar/com/hjg/pngj/a/g;->g:Z

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/a/g;->l:[I

    .line 51
    const/16 v0, 0x7d00

    iput v0, p0, Lar/com/hjg/pngj/a/g;->n:I

    .line 60
    iput-object p1, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    .line 61
    iget v0, p1, Lar/com/hjg/pngj/s;->l:I

    iput v0, p0, Lar/com/hjg/pngj/a/g;->d:I

    .line 62
    iget v0, p0, Lar/com/hjg/pngj/a/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/a/g;->b:I

    .line 63
    iget v0, p1, Lar/com/hjg/pngj/s;->k:I

    iput v0, p0, Lar/com/hjg/pngj/a/g;->c:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/a/g;->i:I

    .line 65
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/a/g;->h:Lar/com/hjg/pngj/FilterType;

    .line 66
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "idatMaxSize"    # I

    .prologue
    .line 261
    iput p1, p0, Lar/com/hjg/pngj/a/g;->n:I

    .line 262
    return-void
.end method

.method public final a(Lar/com/hjg/pngj/FilterType;)V
    .locals 0
    .param p1, "filterType"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 214
    iput-object p1, p0, Lar/com/hjg/pngj/a/g;->h:Lar/com/hjg/pngj/FilterType;

    .line 215
    return-void
.end method

.method public a(Lar/com/hjg/pngj/a/a;)V
    .locals 0
    .param p1, "compressorStream"    # Lar/com/hjg/pngj/a/a;

    .prologue
    .line 223
    iput-object p1, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    .line 224
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "datStream"    # Ljava/io/OutputStream;

    .prologue
    .line 200
    iput-object p1, p0, Lar/com/hjg/pngj/a/g;->m:Ljava/io/OutputStream;

    .line 201
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "deflaterStrategy"    # Ljava/lang/Integer;

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/a/g;->f:I

    .line 185
    return-void
.end method

.method public final a([B)V
    .locals 1
    .param p1, "rowb"    # [B

    .prologue
    .line 73
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/g;->g:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/g;->b()V

    .line 75
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/a/g;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/a/g;->i:I

    .line 76
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/a/g;->c([B)V

    .line 77
    return-void
.end method

.method public abstract a()[B
.end method

.method protected final a(Lar/com/hjg/pngj/FilterType;[B[B[B)[B
    .locals 6
    .param p1, "_filterType"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "_rowb"    # [B
    .param p3, "_rowbprev"    # [B
    .param p4, "_rowf"    # [B

    .prologue
    const/4 v4, 0x0

    .line 108
    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v2, :cond_0

    .line 109
    move-object p4, p2

    .line 110
    :cond_0
    iget v2, p1, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v2, v2

    aput-byte v2, p4, v4

    .line 112
    sget-object v2, Lar/com/hjg/pngj/a/g$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 141
    new-instance v2, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter type not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :pswitch_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    if-gt v0, v2, :cond_1

    .line 118
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v2, v4, v3, v4}, Lar/com/hjg/pngj/x;->a(IIII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x1

    .local v1, "j":I
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    add-int/lit8 v0, v2, 0x1

    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/a/g;->d:I

    if-gt v0, v2, :cond_4

    .line 120
    aget-byte v2, p2, v0

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v2, v3, v4, v5}, Lar/com/hjg/pngj/x;->a(IIII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    .end local v1    # "j":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    if-gt v0, v2, :cond_2

    .line 126
    aget-byte v2, p2, v0

    aput-byte v2, p4, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 127
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "j":I
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    add-int/lit8 v0, v2, 0x1

    :goto_3
    iget v2, p0, Lar/com/hjg/pngj/a/g;->d:I

    if-gt v0, v2, :cond_4

    .line 128
    aget-byte v2, p2, v0

    aget-byte v3, p2, v1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    .end local v0    # "i":I
    .end local v1    # "j":I
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_4
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    if-gt v0, v2, :cond_3

    .line 132
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "j":I
    iget v2, p0, Lar/com/hjg/pngj/a/g;->c:I

    add-int/lit8 v0, v2, 0x1

    :goto_5
    iget v2, p0, Lar/com/hjg/pngj/a/g;->d:I

    if-gt v0, v2, :cond_4

    .line 134
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 137
    .end local v0    # "i":I
    .end local v1    # "j":I
    :pswitch_3
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_6
    iget v2, p0, Lar/com/hjg/pngj/a/g;->d:I

    if-gt v0, v2, :cond_4

    .line 138
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 143
    .end local v0    # "i":I
    :cond_4
    :pswitch_4
    return-object p4

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/g;->g:Z

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/g;->c()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/g;->g:Z

    .line 160
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "deflaterCompLevel"    # Ljava/lang/Integer;

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/a/g;->e:I

    .line 192
    return-void
.end method

.method protected b([B)V
    .locals 3
    .param p1, "rowf"    # [B

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Lar/com/hjg/pngj/a/a;->write([BII)V

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->l:[I

    aget-byte v1, p1, v2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 82
    return-void
.end method

.method protected c()V
    .locals 8

    .prologue
    .line 164
    new-instance v2, Lar/com/hjg/pngj/k;

    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->m:Ljava/io/OutputStream;

    iget v1, p0, Lar/com/hjg/pngj/a/g;->n:I

    invoke-direct {v2, v0, v1}, Lar/com/hjg/pngj/k;-><init>(Ljava/io/OutputStream;I)V

    .line 165
    .local v2, "idatWriter":Lar/com/hjg/pngj/k;
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    if-nez v0, :cond_0

    .line 166
    new-instance v1, Lar/com/hjg/pngj/a/b;

    iget v3, p0, Lar/com/hjg/pngj/a/g;->b:I

    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    invoke-virtual {v0}, Lar/com/hjg/pngj/s;->b()J

    move-result-wide v4

    iget v6, p0, Lar/com/hjg/pngj/a/g;->e:I

    iget v7, p0, Lar/com/hjg/pngj/a/g;->f:I

    invoke-direct/range {v1 .. v7}, Lar/com/hjg/pngj/a/b;-><init>(Lar/com/hjg/pngj/k;IJII)V

    iput-object v1, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    .line 170
    :cond_0
    return-void
.end method

.method protected abstract c([B)V
.end method

.method public d()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/a;->close()V

    .line 177
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lar/com/hjg/pngj/a/g;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->m:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final g()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->h:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public h()D
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->k:Lar/com/hjg/pngj/a/a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/a;->b()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    invoke-virtual {v0}, Lar/com/hjg/pngj/s;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lar/com/hjg/pngj/a/g;->i:I

    iget-object v1, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()Lar/com/hjg/pngj/FilterType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 240
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->d:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 241
    :cond_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    invoke-virtual {v0}, Lar/com/hjg/pngj/s;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 243
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->c:I

    if-ne v0, v4, :cond_3

    .line 245
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->b:I

    if-ne v0, v4, :cond_4

    .line 247
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 249
    :cond_4
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 254
    const-string v0, "%d,%d,%d,%d,%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/a/g;->l:[I

    aget v2, v2, v6

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->c:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lar/com/hjg/pngj/a/g;->l:[I

    aget v2, v2, v7

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->c:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lar/com/hjg/pngj/a/g;->l:[I

    aget v2, v2, v12

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->c:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x3

    iget-object v3, p0, Lar/com/hjg/pngj/a/g;->l:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget-object v3, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->c:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lar/com/hjg/pngj/a/g;->l:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget-object v3, p0, Lar/com/hjg/pngj/a/g;->a:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->c:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

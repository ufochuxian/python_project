.class public Lu/aly/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7fffffff

    sput v0, Lu/aly/cd;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLu/aly/dg;)Lu/aly/dg;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 172
    new-instance p1, Lu/aly/cy$a;

    invoke-direct {p1}, Lu/aly/cy$a;-><init>()V

    .line 194
    :cond_0
    :goto_0
    return-object p1

    .line 185
    :cond_1
    array-length v0, p0

    if-le v0, v2, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 186
    new-instance p1, Lu/aly/cy$a;

    invoke-direct {p1}, Lu/aly/cy$a;-><init>()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 49
    sput p0, Lu/aly/cd;->a:I

    .line 50
    return-void
.end method

.method public static a(Lu/aly/cc;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 60
    sget v0, Lu/aly/cd;->a:I

    invoke-static {p0, p1, v0}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 61
    return-void
.end method

.method public static a(Lu/aly/cc;BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    if-gtz p2, :cond_0

    .line 74
    new-instance v0, Lu/aly/cl;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lu/aly/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    invoke-virtual {p0}, Lu/aly/cc;->t()Z

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-virtual {p0}, Lu/aly/cc;->u()B

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-virtual {p0}, Lu/aly/cc;->v()S

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-virtual {p0}, Lu/aly/cc;->w()I

    goto :goto_0

    .line 94
    :pswitch_5
    invoke-virtual {p0}, Lu/aly/cc;->x()J

    goto :goto_0

    .line 98
    :pswitch_6
    invoke-virtual {p0}, Lu/aly/cc;->y()D

    goto :goto_0

    .line 102
    :pswitch_7
    invoke-virtual {p0}, Lu/aly/cc;->A()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 106
    :pswitch_8
    invoke-virtual {p0}, Lu/aly/cc;->j()Lu/aly/ch;

    .line 108
    :goto_1
    invoke-virtual {p0}, Lu/aly/cc;->l()Lu/aly/bw;

    move-result-object v0

    .line 109
    iget-byte v1, v0, Lu/aly/bw;->b:B

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lu/aly/cc;->k()V

    goto :goto_0

    .line 112
    :cond_1
    iget-byte v0, v0, Lu/aly/bw;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 113
    invoke-virtual {p0}, Lu/aly/cc;->m()V

    goto :goto_1

    .line 119
    :pswitch_9
    invoke-virtual {p0}, Lu/aly/cc;->n()Lu/aly/bz;

    move-result-object v1

    .line 120
    :goto_2
    iget v2, v1, Lu/aly/bz;->c:I

    if-ge v0, v2, :cond_2

    .line 121
    iget-byte v2, v1, Lu/aly/bz;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 122
    iget-byte v2, v1, Lu/aly/bz;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p0}, Lu/aly/cc;->o()V

    goto :goto_0

    .line 128
    :pswitch_a
    invoke-virtual {p0}, Lu/aly/cc;->r()Lu/aly/cg;

    move-result-object v1

    .line 129
    :goto_3
    iget v2, v1, Lu/aly/cg;->b:I

    if-ge v0, v2, :cond_3

    .line 130
    iget-byte v2, v1, Lu/aly/cg;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {p0}, Lu/aly/cc;->s()V

    goto :goto_0

    .line 136
    :pswitch_b
    invoke-virtual {p0}, Lu/aly/cc;->p()Lu/aly/by;

    move-result-object v1

    .line 137
    :goto_4
    iget v2, v1, Lu/aly/by;->b:I

    if-ge v0, v2, :cond_4

    .line 138
    iget-byte v2, v1, Lu/aly/by;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lu/aly/cd;->a(Lu/aly/cc;BI)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {p0}, Lu/aly/cc;->q()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
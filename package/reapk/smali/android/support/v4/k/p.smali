.class public Landroid/support/v4/k/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/k/p;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Landroid/support/v4/k/p;->b:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object v0, Landroid/support/v4/k/f;->a:[I

    iput-object v0, p0, Landroid/support/v4/k/p;->c:[I

    .line 48
    sget-object v0, Landroid/support/v4/k/f;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v1, p0, Landroid/support/v4/k/p;->e:I

    .line 55
    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/support/v4/k/f;->a(I)I

    move-result p1

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/k/p;->c:[I

    .line 52
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 141
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget v2, p0, Landroid/support/v4/k/p;->e:I

    .line 142
    .local v2, "n":I
    const/4 v3, 0x0

    .line 143
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v4/k/p;->c:[I

    .line 144
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    .line 146
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 147
    aget-object v4, v5, v0

    .line 149
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 150
    if-eq v0, v3, :cond_0

    .line 151
    aget v6, v1, v0

    aput v6, v1, v3

    .line 152
    aput-object v4, v5, v3

    .line 153
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 156
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/k/p;->b:Z

    .line 161
    iput v3, p0, Landroid/support/v4/k/p;->e:I

    .line 164
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v4/k/p;->e:I

    if-ge v0, v1, :cond_2

    .line 299
    iget-object v1, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 302
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 298
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Landroid/support/v4/k/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/k/p",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "clone":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v4/k/p;

    move-object v1, v0

    .line 63
    iget-object v2, p0, Landroid/support/v4/k/p;->c:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/support/v4/k/p;->c:[I

    .line 64
    iget-object v2, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/k/p;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/k/p;->c:[I

    iget v2, p0, Landroid/support/v4/k/p;->e:I

    invoke-static {v1, v2, p1}, Landroid/support/v4/k/f;->a([III)I

    move-result v0

    .line 87
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 90
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public a(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 132
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget v2, p0, Landroid/support/v4/k/p;->e:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Landroid/support/v4/k/p;->d(I)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 227
    :cond_0
    iget v0, p0, Landroid/support/v4/k/p;->e:I

    return v0
.end method

.method public b(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 98
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-object v1, p0, Landroid/support/v4/k/p;->c:[I

    iget v2, p0, Landroid/support/v4/k/p;->e:I

    invoke-static {v1, v2, p1}, Landroid/support/v4/k/f;->a([III)I

    move-result v0

    .line 100
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 101
    iget-object v1, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/k/p;->b:Z

    .line 106
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 172
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget v5, p0, Landroid/support/v4/k/p;->e:I

    invoke-static {v4, v5, p1}, Landroid/support/v4/k/f;->a([III)I

    move-result v0

    .line 174
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 175
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 216
    :goto_0
    return-void

    .line 177
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 179
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 180
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    aput p1, v4, v0

    .line 181
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 185
    :cond_1
    iget-boolean v4, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/k/p;->e:I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 186
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 189
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget v5, p0, Landroid/support/v4/k/p;->e:I

    invoke-static {v4, v5, p1}, Landroid/support/v4/k/f;->a([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 192
    :cond_2
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 193
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/k/f;->a(I)I

    move-result v1

    .line 195
    .local v1, "n":I
    new-array v2, v1, [I

    .line 196
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 199
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Landroid/support/v4/k/p;->c:[I

    .line 203
    iput-object v3, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    .line 206
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 208
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/k/p;->e:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/k/p;->e:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    aput p1, v4, v0

    .line 213
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 214
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/k/p;->e:I

    goto/16 :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    const/4 v4, 0x0

    .line 309
    iget v1, p0, Landroid/support/v4/k/p;->e:I

    .line 310
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    .line 312
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 313
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iput v4, p0, Landroid/support/v4/k/p;->e:I

    .line 317
    iput-boolean v4, p0, Landroid/support/v4/k/p;->b:Z

    .line 318
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 112
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/k/p;->b(I)V

    .line 113
    return-void
.end method

.method public c(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 268
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/k/p;->a()Landroid/support/v4/k/p;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 119
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/k/p;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    .line 123
    :cond_0
    return-void
.end method

.method public d(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 325
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget v5, p0, Landroid/support/v4/k/p;->e:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 326
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/k/p;->b(ILjava/lang/Object;)V

    .line 352
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-boolean v4, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v4/k/p;->e:I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 331
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 334
    :cond_1
    iget v3, p0, Landroid/support/v4/k/p;->e:I

    .line 335
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 336
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v4/k/f;->a(I)I

    move-result v0

    .line 338
    .local v0, "n":I
    new-array v1, v0, [I

    .line 339
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 342
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    iget-object v5, p0, Landroid/support/v4/k/p;->c:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v1, p0, Landroid/support/v4/k/p;->c:[I

    .line 346
    iput-object v2, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    .line 349
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/support/v4/k/p;->c:[I

    aput p1, v4, v3

    .line 350
    iget-object v4, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 351
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/k/p;->e:I

    goto :goto_0
.end method

.method public e(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 236
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/p;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public f(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/p;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public g(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 276
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/k/p;->b:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Landroid/support/v4/k/p;->d()V

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v4/k/p;->c:[I

    iget v1, p0, Landroid/support/v4/k/p;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/k/f;->a([III)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 363
    .local p0, "this":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/k/p;->b()I

    move-result v4

    if-gtz v4, :cond_0

    .line 364
    const-string v4, "{}"

    .line 384
    :goto_0
    return-object v4

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v4/k/p;->e:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/support/v4/k/p;->e:I

    if-ge v1, v4, :cond_3

    .line 370
    if-lez v1, :cond_1

    .line 371
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/k/p;->e(I)I

    move-result v2

    .line 374
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0, v1}, Landroid/support/v4/k/p;->f(I)Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 383
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

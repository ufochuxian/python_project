.class public final Lrx/internal/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:I = -0x61c88647


# instance fields
.field final a:F

.field b:I

.field c:I

.field d:I

.field e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lrx/internal/util/h;-><init>(IF)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lrx/internal/util/h;-><init>(IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lrx/internal/util/h;->a:F

    .line 60
    invoke-static {p1}, Lrx/internal/util/a/p;->a(I)I

    move-result v0

    .line 61
    .local v0, "c":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/h;->b:I

    .line 62
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lrx/internal/util/h;->d:I

    .line 63
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method static a(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 195
    const v1, -0x61c88647

    mul-int v0, p0, v1

    .line 196
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lrx/internal/util/h;->c:I

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public a(Lrx/c/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    .local p1, "clearAction":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    iget v4, p0, Lrx/internal/util/h;->c:I

    if-nez v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 148
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v3, v0

    .line 149
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 150
    aget-object v1, v0, v2

    .line 151
    .local v1, "e":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 152
    invoke-interface {p1, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 149
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    const/4 v4, 0x0

    iput v4, p0, Lrx/internal/util/h;->c:I

    goto :goto_0
.end method

.method a(I[Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "pos"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Lrx/internal/util/h;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lrx/internal/util/h;->c:I

    .line 123
    :goto_0
    move v1, p1

    .line 124
    .local v1, "last":I
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    .line 126
    :goto_1
    aget-object v0, p2, p1

    .line 127
    .local v0, "curr":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 128
    const/4 v3, 0x0

    aput-object v3, p2, v1

    .line 129
    const/4 v3, 0x1

    return v3

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lrx/internal/util/h;->a(I)I

    move-result v3

    and-int v2, v3, p3

    .line 133
    .local v2, "slot":I
    if-gt v1, p1, :cond_2

    if-ge v1, v2, :cond_1

    if-le v2, p1, :cond_3

    .line 139
    :cond_1
    aput-object v0, p2, v1

    goto :goto_0

    .line 133
    :cond_2
    if-lt v1, v2, :cond_3

    if-gt v2, p1, :cond_1

    .line 137
    :cond_3
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 68
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lrx/internal/util/h;->b:I

    .line 70
    .local v2, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lrx/internal/util/h;->a(I)I

    move-result v5

    and-int v3, v5, v2

    .line 71
    .local v3, "pos":I
    aget-object v1, v0, v3

    .line 72
    .local v1, "curr":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    :goto_0
    return v4

    .line 77
    :cond_0
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v2

    .line 78
    aget-object v1, v0, v3

    .line 79
    if-nez v1, :cond_3

    .line 87
    :cond_1
    aput-object p1, v0, v3

    .line 88
    iget v4, p0, Lrx/internal/util/h;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lrx/internal/util/h;->c:I

    iget v5, p0, Lrx/internal/util/h;->d:I

    if-lt v4, v5, :cond_2

    .line 89
    invoke-virtual {p0}, Lrx/internal/util/h;->b()V

    .line 91
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method b()V
    .locals 10

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    iget-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 168
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v2, v0

    .line 169
    .local v2, "i":I
    shl-int/lit8 v6, v2, 0x1

    .line 170
    .local v6, "newCap":I
    add-int/lit8 v5, v6, -0x1

    .line 172
    .local v5, "m":I
    new-array v1, v6, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 175
    .local v1, "b":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Lrx/internal/util/h;->c:I

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    if-eqz v4, :cond_3

    .line 176
    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget-object v8, v0, v2

    if-eqz v8, :cond_0

    .line 177
    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lrx/internal/util/h;->a(I)I

    move-result v8

    and-int v7, v8, v5

    .line 178
    .local v7, "pos":I
    aget-object v8, v1, v7

    if-eqz v8, :cond_2

    .line 180
    :cond_1
    add-int/lit8 v8, v7, 0x1

    and-int v7, v8, v5

    .line 181
    aget-object v8, v1, v7

    if-nez v8, :cond_1

    .line 186
    :cond_2
    aget-object v8, v0, v2

    aput-object v8, v1, v7

    move v4, v3

    .line 187
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 189
    .end local v4    # "j":I
    .end local v7    # "pos":I
    .restart local v3    # "j":I
    :cond_3
    iput v5, p0, Lrx/internal/util/h;->b:I

    .line 190
    int-to-float v8, v6

    iget v9, p0, Lrx/internal/util/h;->a:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lrx/internal/util/h;->d:I

    .line 191
    iput-object v1, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    .line 95
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lrx/internal/util/h;->b:I

    .line 96
    .local v2, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lrx/internal/util/h;->a(I)I

    move-result v5

    and-int v3, v5, v2

    .line 97
    .local v3, "pos":I
    aget-object v1, v0, v3

    .line 98
    .local v1, "curr":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 101
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {p0, v3, v0, v2}, Lrx/internal/util/h;->a(I[Ljava/lang/Object;I)Z

    move-result v4

    goto :goto_0

    .line 105
    :cond_2
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v2

    .line 106
    aget-object v1, v0, v3

    .line 107
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-virtual {p0, v3, v0, v2}, Lrx/internal/util/h;->a(I[Ljava/lang/Object;I)Z

    move-result v4

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    iget v0, p0, Lrx/internal/util/h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lrx/internal/util/h;, "Lrx/internal/util/h<TT;>;"
    iget-object v0, p0, Lrx/internal/util/h;->e:[Ljava/lang/Object;

    return-object v0
.end method

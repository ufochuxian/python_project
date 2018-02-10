.class Landroid/support/constraint/solver/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/constraint/solver/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/constraint/solver/k$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 96
    .local p0, "this":Landroid/support/constraint/solver/k$b;, "Landroid/support/constraint/solver/k$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-gtz p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Landroid/support/constraint/solver/k$b;, "Landroid/support/constraint/solver/k$b<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/k$b;->b:I

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 153
    :goto_1
    return v1

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/constraint/solver/k$b;, "Landroid/support/constraint/solver/k$b<TT;>;"
    const/4 v2, 0x0

    .line 106
    iget v3, p0, Landroid/support/constraint/solver/k$b;->b:I

    if-lez v3, :cond_0

    .line 107
    iget v3, p0, Landroid/support/constraint/solver/k$b;->b:I

    add-int/lit8 v1, v3, -0x1

    .line 108
    .local v1, "lastPooledIndex":I
    iget-object v3, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 109
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 110
    iget v2, p0, Landroid/support/constraint/solver/k$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/k$b;->b:I

    .line 113
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "lastPooledIndex":I
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public a([Ljava/lang/Object;I)V
    .locals 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Landroid/support/constraint/solver/k$b;, "Landroid/support/constraint/solver/k$b<TT;>;"
    .local p1, "variables":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 134
    aget-object v1, p1, v0

    .line 140
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    iget v2, p0, Landroid/support/constraint/solver/k$b;->b:I

    iget-object v3, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/constraint/solver/k$b;->b:I

    aput-object v1, v2, v3

    .line 142
    iget v2, p0, Landroid/support/constraint/solver/k$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/k$b;->b:I

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Landroid/support/constraint/solver/k$b;, "Landroid/support/constraint/solver/k$b<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroid/support/constraint/solver/k$b;->b:I

    iget-object v1, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/constraint/solver/k$b;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/constraint/solver/k$b;->b:I

    aput-object p1, v0, v1

    .line 125
    iget v0, p0, Landroid/support/constraint/solver/k$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/k$b;->b:I

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
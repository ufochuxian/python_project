.class final Lcom/bumptech/glide/load/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/b/k$a",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/k$a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k$a;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/b/k$a",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "model":Ljava/lang/Object;, "TA;"
    sget-object v1, Lcom/bumptech/glide/load/b/k$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/k$a;

    .line 74
    .local v0, "modelKey":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/b/k$a;

    .end local v0    # "modelKey":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    invoke-direct {v0}, Lcom/bumptech/glide/load/b/k$a;-><init>()V

    .line 78
    .restart local v0    # "modelKey":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/b/k$a;->b(Ljava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    iput-object p1, p0, Lcom/bumptech/glide/load/b/k$a;->d:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lcom/bumptech/glide/load/b/k$a;->c:I

    .line 87
    iput p3, p0, Lcom/bumptech/glide/load/b/k$a;->b:I

    .line 88
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    sget-object v0, Lcom/bumptech/glide/load/b/k$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    const/4 v1, 0x0

    .line 96
    instance-of v2, p1, Lcom/bumptech/glide/load/b/k$a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/bumptech/glide/load/b/k$a;

    .line 98
    .local v0, "other":Lcom/bumptech/glide/load/b/k$a;
    iget v2, p0, Lcom/bumptech/glide/load/b/k$a;->c:I

    iget v3, v0, Lcom/bumptech/glide/load/b/k$a;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/load/b/k$a;->b:I

    iget v3, v0, Lcom/bumptech/glide/load/b/k$a;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k$a;->d:Ljava/lang/Object;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/k$a;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 100
    .end local v0    # "other":Lcom/bumptech/glide/load/b/k$a;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    .local p0, "this":Lcom/bumptech/glide/load/b/k$a;, "Lcom/bumptech/glide/load/b/k$a<TA;>;"
    iget v0, p0, Lcom/bumptech/glide/load/b/k$a;->b:I

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/b/k$a;->c:I

    add-int v0, v1, v2

    .line 107
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k$a;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 108
    return v0
.end method

.class Lcom/nineoldandroids/a/j$b;
.super Lcom/nineoldandroids/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field d:I


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/nineoldandroids/a/j;-><init>()V

    .line 282
    iput p1, p0, Lcom/nineoldandroids/a/j$b;->a:F

    .line 283
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/j$b;->b:Ljava/lang/Class;

    .line 284
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/nineoldandroids/a/j;-><init>()V

    .line 275
    iput p1, p0, Lcom/nineoldandroids/a/j$b;->a:F

    .line 276
    iput p2, p0, Lcom/nineoldandroids/a/j$b;->d:I

    .line 277
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/j$b;->b:Ljava/lang/Class;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$b;->c:Z

    .line 279
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 296
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/a/j$b;->d:I

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$b;->c:Z

    .line 299
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/nineoldandroids/a/j$b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$b;->h()Lcom/nineoldandroids/a/j$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/nineoldandroids/a/j;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$b;->h()Lcom/nineoldandroids/a/j$b;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/nineoldandroids/a/j$b;->d:I

    return v0
.end method

.method public h()Lcom/nineoldandroids/a/j$b;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Lcom/nineoldandroids/a/j$b;

    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$b;->c()F

    move-result v1

    iget v2, p0, Lcom/nineoldandroids/a/j$b;->d:I

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/a/j$b;-><init>(FI)V

    .line 304
    .local v0, "kfClone":Lcom/nineoldandroids/a/j$b;
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$b;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/j$b;->a(Landroid/view/animation/Interpolator;)V

    .line 305
    return-object v0
.end method

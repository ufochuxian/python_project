.class Lcom/nineoldandroids/a/j$a;
.super Lcom/nineoldandroids/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field d:F


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/nineoldandroids/a/j;-><init>()V

    .line 326
    iput p1, p0, Lcom/nineoldandroids/a/j$a;->a:F

    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/j$a;->b:Ljava/lang/Class;

    .line 328
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # F

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/nineoldandroids/a/j;-><init>()V

    .line 319
    iput p1, p0, Lcom/nineoldandroids/a/j$a;->a:F

    .line 320
    iput p2, p0, Lcom/nineoldandroids/a/j$a;->d:F

    .line 321
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/j$a;->b:Ljava/lang/Class;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$a;->c:Z

    .line 323
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 340
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/a/j$a;->d:F

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$a;->c:Z

    .line 343
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/nineoldandroids/a/j$a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    .line 312
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$a;->h()Lcom/nineoldandroids/a/j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/nineoldandroids/a/j;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$a;->h()Lcom/nineoldandroids/a/j$a;

    move-result-object v0

    return-object v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/nineoldandroids/a/j$a;->d:F

    return v0
.end method

.method public h()Lcom/nineoldandroids/a/j$a;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Lcom/nineoldandroids/a/j$a;

    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$a;->c()F

    move-result v1

    iget v2, p0, Lcom/nineoldandroids/a/j$a;->d:F

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/a/j$a;-><init>(FF)V

    .line 348
    .local v0, "kfClone":Lcom/nineoldandroids/a/j$a;
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$a;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/j$a;->a(Landroid/view/animation/Interpolator;)V

    .line 349
    return-object v0
.end method

.class Lcom/nineoldandroids/a/j$c;
.super Lcom/nineoldandroids/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field d:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/nineoldandroids/a/j;-><init>()V

    .line 241
    iput p1, p0, Lcom/nineoldandroids/a/j$c;->a:F

    .line 242
    iput-object p2, p0, Lcom/nineoldandroids/a/j$c;->d:Ljava/lang/Object;

    .line 243
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$c;->c:Z

    .line 244
    iget-boolean v0, p0, Lcom/nineoldandroids/a/j$c;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/nineoldandroids/a/j$c;->b:Ljava/lang/Class;

    .line 245
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_1
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nineoldandroids/a/j$c;->d:Ljava/lang/Object;

    .line 253
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nineoldandroids/a/j$c;->c:Z

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nineoldandroids/a/j$c;->d:Ljava/lang/Object;

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
    .line 233
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$c;->g()Lcom/nineoldandroids/a/j$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/nineoldandroids/a/j;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$c;->g()Lcom/nineoldandroids/a/j$c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/nineoldandroids/a/j$c;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lcom/nineoldandroids/a/j$c;

    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$c;->c()F

    move-result v1

    iget-object v2, p0, Lcom/nineoldandroids/a/j$c;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/a/j$c;-><init>(FLjava/lang/Object;)V

    .line 259
    .local v0, "kfClone":Lcom/nineoldandroids/a/j$c;
    invoke-virtual {p0}, Lcom/nineoldandroids/a/j$c;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/j$c;->a(Landroid/view/animation/Interpolator;)V

    .line 260
    return-object v0
.end method
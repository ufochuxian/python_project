.class Lu/aly/cp$c;
.super Lu/aly/cn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cn",
        "<",
        "Lu/aly/cp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/cn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cp$1;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/cp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/cc;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$c;->b(Lu/aly/cc;Lu/aly/cp;)V

    return-void
.end method

.method public a(Lu/aly/cc;Lu/aly/cp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    .line 265
    iput-object v0, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lu/aly/cc;->v()S

    move-result v0

    .line 267
    invoke-virtual {p2, p1, v0}, Lu/aly/cp;->a(Lu/aly/cc;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    .line 268
    iget-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p2, v0}, Lu/aly/cp;->a(S)Lu/aly/bt;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    .line 271
    :cond_0
    return-void
.end method

.method public synthetic b(Lu/aly/cc;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$c;->a(Lu/aly/cc;Lu/aly/cp;)V

    return-void
.end method

.method public b(Lu/aly/cc;Lu/aly/cp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p2}, Lu/aly/cp;->a()Lu/aly/bt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/cp;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    new-instance v0, Lu/aly/df;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    iget-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    invoke-interface {v0}, Lu/aly/bt;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(S)V

    .line 279
    invoke-virtual {p2, p1}, Lu/aly/cp;->d(Lu/aly/cc;)V

    .line 280
    return-void
.end method

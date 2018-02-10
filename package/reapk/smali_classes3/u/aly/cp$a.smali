.class Lu/aly/cp$a;
.super Lu/aly/cm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cm",
        "<",
        "Lu/aly/cp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/cm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cp$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/cp$a;-><init>()V

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
    .line 216
    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$a;->b(Lu/aly/cc;Lu/aly/cp;)V

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

    .line 220
    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    .line 221
    iput-object v0, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/cc;->j()Lu/aly/ch;

    .line 225
    invoke-virtual {p1}, Lu/aly/cc;->l()Lu/aly/bw;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/cp;->a(Lu/aly/cc;Lu/aly/bw;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lu/aly/bw;->c:S

    invoke-virtual {p2, v0}, Lu/aly/cp;->a(S)Lu/aly/bt;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lu/aly/cc;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/cc;->l()Lu/aly/bw;

    .line 237
    invoke-virtual {p1}, Lu/aly/cc;->k()V

    .line 238
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
    .line 216
    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$a;->a(Lu/aly/cc;Lu/aly/cp;)V

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
    .line 242
    invoke-virtual {p2}, Lu/aly/cp;->a()Lu/aly/bt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/cp;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lu/aly/df;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lu/aly/cp;->e()Lu/aly/ch;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/ch;)V

    .line 246
    iget-object v0, p2, Lu/aly/cp;->b:Lu/aly/bt;

    invoke-virtual {p2, v0}, Lu/aly/cp;->c(Lu/aly/bt;)Lu/aly/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cc;->a(Lu/aly/bw;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/cp;->c(Lu/aly/cc;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/cc;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/cc;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/cc;->b()V

    .line 251
    return-void
.end method

.class public Lcom/jiliguala/niuwa/common/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/16 v0, 0x11

    iput v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->f:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "selectIndex"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->e:I

    .line 386
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "mTitleText"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->a:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jiliguala/niuwa/common/a/k$b;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "mDataSource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->c:Ljava/util/List;

    .line 368
    return-object p0
.end method

.method public a(Z)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "mHasButtons"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->d:Z

    .line 377
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->f:I

    .line 395
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "mSubtitleText"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->b:Ljava/lang/String;

    .line 359
    return-object p0
.end method

.method public b(Z)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "isShowTopTitles"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->h:Z

    .line 413
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;
    .locals 0
    .param p1, "mRemaingTime"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/k$b;->g:Ljava/lang/String;

    .line 404
    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/a/k$b;->h:Z

    return v0
.end method

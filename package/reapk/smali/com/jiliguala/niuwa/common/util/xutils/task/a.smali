.class Lcom/jiliguala/niuwa/common/util/xutils/task/a;
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


# instance fields
.field a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b:Z

    .line 605
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a(Ljava/lang/Object;)V

    .line 606
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    .locals 1

    .prologue
    .line 609
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/d;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    .line 632
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 626
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v0, p1, Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    if-eqz v0, :cond_1

    .line 627
    check-cast p1, Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b:Z

    goto :goto_0

    .line 630
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->DEFAULT:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/d;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    if-nez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 619
    :goto_0
    return-object v0

    .line 616
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b:Z

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/d;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/d;->b:Ljava/lang/Object;

    goto :goto_0
.end method

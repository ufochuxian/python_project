.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "refreshView":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;, "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->onRefresh()V

    .line 312
    return-void
.end method

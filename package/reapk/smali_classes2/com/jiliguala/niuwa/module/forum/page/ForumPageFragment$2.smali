.class Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->initUIComponent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment;->updateForumBoardList(I)V

    .line 224
    return-void
.end method

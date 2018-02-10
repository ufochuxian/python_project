.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showTagPop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$8;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$8;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 323
    return-void
.end method

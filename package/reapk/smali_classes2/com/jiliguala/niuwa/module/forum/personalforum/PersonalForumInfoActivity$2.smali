.class Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$102(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;I)I

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$200(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;Ljava/lang/String;IZ)V

    .line 83
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->onBackPressed()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method

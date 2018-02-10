.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 122
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    const-class v2, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_avatar_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onBackPressed()V

    goto :goto_0

    .line 134
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    goto :goto_0

    .line 139
    :sswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 140
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$200(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_1
        0x7f090031 -> :sswitch_2
        0x7f090086 -> :sswitch_0
        0x7f090087 -> :sswitch_0
        0x7f0901ab -> :sswitch_3
    .end sparse-switch
.end method

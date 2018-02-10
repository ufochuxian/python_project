.class Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 86
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->onBackPressed()V

    goto :goto_0

    .line 90
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    const-class v3, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-direct {v8, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v8, "intent":Landroid/content/Intent;
    const-string v2, "key_avatar_type"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v8    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/16 v4, 0x66

    invoke-interface {v2, v4}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "nick":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 98
    :goto_1
    const-string v2, "\n"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mAvatarUrl:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "json":Ljava/lang/String;
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 105
    .local v7, "body":Lokhttp3/ab;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 106
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 107
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 108
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;-><init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;)V

    .line 109
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto/16 :goto_0

    .line 96
    .end local v0    # "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    .end local v7    # "body":Lokhttp3/ab;
    .end local v9    # "json":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 140
    .end local v1    # "nick":Ljava/lang/String;
    :sswitch_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090083 -> :sswitch_1
        0x7f090084 -> :sswitch_1
        0x7f09014c -> :sswitch_3
        0x7f090157 -> :sswitch_2
    .end sparse-switch
.end method

.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 241
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 168
    :sswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .line 171
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    .line 170
    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    move-result-object v1

    .line 172
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 177
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    const v5, 0x7f0f003c

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)V

    goto :goto_0

    .line 182
    :sswitch_2
    sget-boolean v4, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$108(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)I

    .line 184
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    .line 185
    const-string v4, "D_M"

    invoke-static {v4, v8}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "current_mode":I
    const/4 v3, 0x0

    .line 188
    .local v3, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_1
    const-string v4, "D_M"

    invoke-static {v4, v3}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 199
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4, v8}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)I

    goto :goto_0

    .line 190
    :pswitch_0
    const/4 v3, 0x1

    .line 191
    goto :goto_1

    .line 193
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    .line 221
    .end local v0    # "current_mode":I
    .end local v3    # "mode":I
    :sswitch_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    goto/16 :goto_0

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$402(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)I

    .line 226
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    const v5, 0x7f0f003b

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)V

    goto/16 :goto_0

    .line 238
    :sswitch_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    goto/16 :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_3
        0x7f09038e -> :sswitch_3
        0x7f09047e -> :sswitch_4
        0x7f090560 -> :sswitch_0
        0x7f090591 -> :sswitch_2
        0x7f0905d2 -> :sswitch_1
    .end sparse-switch

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

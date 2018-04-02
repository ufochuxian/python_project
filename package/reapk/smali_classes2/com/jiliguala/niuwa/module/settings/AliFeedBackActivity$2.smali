.class Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->b:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->b:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 70
    const v2, 0x7f090587

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "backImg":Landroid/widget/ImageView;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    const v2, 0x7f0802d1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    .end local v0    # "backImg":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$2;->b:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

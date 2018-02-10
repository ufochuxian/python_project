.class Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->showWxBoundDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    .line 117
    return-void
.end method

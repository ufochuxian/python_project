.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onInitFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0b0108

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/common/widget/b;->a(Landroid/support/v4/app/ag;ID)Lcom/jiliguala/niuwa/common/widget/b;

    move-result-object v0

    .line 1632
    .local v0, "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/b;->b(Landroid/support/v4/app/ag;)V

    .line 1633
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1634
    return-void
.end method

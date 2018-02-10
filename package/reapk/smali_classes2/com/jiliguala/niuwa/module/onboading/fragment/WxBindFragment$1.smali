.class Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->addObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "accountEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 66
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 80
    :goto_0
    :sswitch_0
    return-void

    .line 68
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    goto :goto_0

    .line 77
    :sswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;->access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment;)V

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x1015 -> :sswitch_2
        0x1016 -> :sswitch_0
        0x1024 -> :sswitch_1
        0x1027 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WxBindFragment$1;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

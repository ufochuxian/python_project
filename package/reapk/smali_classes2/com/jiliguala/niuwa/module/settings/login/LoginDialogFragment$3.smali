.class Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 232
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 234
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->onLoginSucceed()V

    goto :goto_0

    .line 237
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->onChildGained()V

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1007 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$3;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

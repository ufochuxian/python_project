.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 915
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 923
    :goto_0
    return-void

    .line 917
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onLoginSucceed()V

    goto :goto_0

    .line 920
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->onChildGained()V

    goto :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1007 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 911
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$29;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

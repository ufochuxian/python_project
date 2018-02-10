.class Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->addEventObserver()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 250
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->onLoginSucceed()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 246
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$5;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
